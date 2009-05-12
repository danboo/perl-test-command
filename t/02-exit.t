#!perl

use Test::Command tests => 6;

use Test::More;

## determine whether we can run perl or not

system qq($^X -e 1) and BAIL_OUT('error calling perl via system');

exit_is_num(qq($^X -e "exit 1"), 1);
exit_is_num(qq($^X -e "exit 255"), 255);
exit_is_defined(qq($^X -e "exit 255"));

SKIP:
   {
   skip("not sure about Win32 signal support", 1) if $^O eq 'MSWin32';
   exit_is_undef(qq($^X -MPOSIX -e "POSIX::raise( &POSIX::SIGTERM )"));
   }

exit_isnt_num(qq($^X -e 1), 2);

exit_cmp_ok(qq($^X -e "exit 1"), '<', 2);
