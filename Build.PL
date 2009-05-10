use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Test::Command',
    license             => 'perl',
    dist_author         => 'Daniel B. Boorstein <danboo@cpan.org>',
    dist_version_from   => 'lib/Test/Command.pm',
    build_requires => {
        'Test::Simple' => 0.62,
    },
    add_to_cleanup      => [ 'Test-Command-*' ],
);

$builder->create_build_script();
