#!perl

use Test::Command tests => 4;

use Test::More;

## determine whether we can run perl or not

system qq($^X -e 1) and BAIL_OUT('error calling perl via system');

exit_is_num(qq($^X -e "exit 1"), 1);
exit_is_num(qq($^X -e "exit 255"), 255);

exit_isnt_num(qq($^X -e 1), 2);

exit_cmp_ok(qq($^X -e "exit 1"), '<', 2);
