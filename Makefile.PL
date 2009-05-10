use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Test::Command',
    AUTHOR              => 'Daniel B. Boorstein <danboo@cpan.org>',
    VERSION_FROM        => 'lib/Test/Command.pm',
    ABSTRACT_FROM       => 'lib/Test/Command.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::Simple' => 0.62,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Test-Command-*' },
);
