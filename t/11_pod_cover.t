#!/usr/bin/perl -w
use strict;
use Test::More;
BEGIN { unshift @INC, 'lib' };

eval "use Test::Pod::Coverage;";
plan skip_all => "Test::Pod::Coverage required for testing POD coverage" if $@;

plan tests => 2;

my $trm = { 'trustme' => [ 'NamesRgbTable' ] }; # for use by base module

pod_coverage_ok( 'Graphics::ColorNames::Pantone', $trm );
pod_coverage_ok( 'Graphics::ColorNames::PantoneReport', $trm );
