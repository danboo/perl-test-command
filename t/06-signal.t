#!perl

use Test::Command tests => 5;

use Test::More;

## determine whether we can run perl or not

system qq($^X -e 1) and BAIL_OUT('error calling perl via system');

signal_is_num(qq($^X -e "exit 1"), 0);
signal_is_num(qq($^X -e "exit 255"), 0);
signal_is_num(qq($^X -e "kill 2, \$\$"), 2);

signal_isnt_num(qq($^X -e 1), 1);

signal_cmp_ok(qq($^X -e "exit 1"), '<', 2);
