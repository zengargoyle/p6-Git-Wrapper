
use Test;

#This will check some of the functions to make sure that they work properly.

#Add the local lib folder.
use lib "{$*PROGRAM.dirname}/../lib";
use Git::Wrapper;

#Make a connection to the local git repo.
my $git = Git::Wrapper.new: gitdir => "{$*PROGRAM.dirname}/..";

plan 1;

#Check the version.
subtest {
    isa-ok $git.version, "Str", "Can get the version.";
    ok $git.version ~~ / 'git version ' /, "The output looks right.";
}

done-testing;
