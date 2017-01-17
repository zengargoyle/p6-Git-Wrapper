
use Test;

#This will check some of the functions to make sure that they work properly.

#Add the local lib folder.
use lib "{$*PROGRAM.dirname}/../lib";
use Git::Wrapper;

#Make a connection to the local git repo.
my $git = Git::Wrapper.new: gitdir => "{$*PROGRAM.dirname}/..";

plan 3;

isa-ok $git.log, "List", "Can parse the git log.";
isa-ok $git.version, "Str", "Can get the version.";
isa-ok $git.gist, "Str", "The gist works.";

done-testing;
