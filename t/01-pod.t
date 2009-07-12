#!perl
use strict;
use warnings;
use Test::More;

unless ( $ENV{LOG_ANY_INTERNAL_TESTS} ) {
    plan skip_all => "internal test only";
}

# Ensure a recent version of Test::Pod
my $min_tp = 1.22;
eval "use Test::Pod $min_tp";
plan skip_all => "Test::Pod $min_tp required for testing POD" if $@;

all_pod_files_ok();