#!/usr/bin/perl -w
use strict;
BEGIN { 
    unshift @INC, 'lib' 
};

use Test::More tests => 155 + 7;
use Test::NoWarnings;

eval "use Graphics::ColorNames 0.20, qw( hex2tuple tuple2hex )";
ok( not $@ );
tie my %colors, 'Graphics::ColorNames', 'PantoneReport';
ok(1);
is(keys %colors, 155);

for my $name (keys %colors) {
    my @RGB = hex2tuple( $colors{$name} );
    is(tuple2hex(@RGB), $colors{$name} );
}

is(uc $colors{'blueizis'},  '5B5EA6');
is(uc $colors{'bluestone'}, '577284');
is(uc $colors{'eden'},      '264E36');

exit (0);

