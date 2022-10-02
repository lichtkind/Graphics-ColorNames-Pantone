package Graphics::ColorNames::PantoneReport;

require 5.006;

use strict;
use warnings;

our $VERSION = '1.00';

sub NamesRgbTable() {
  use integer;
  return {
    (lc 'AliceBlue')        => 0xF0F8FF,    # 240,248,255   

  };
}

1;

=head1 NAME

Graphics::ColorNames::PantoneReport - colors of the Pantone trend report
of 2016 - 2021 and equivalent RGB values.

=head1 SYNOPSIS

  require Graphics::ColorNames::PantoneReport;

  $NameTable = Graphics::ColorNames::PantoneReport->NamesRgbTable();
  $RgbBlack  = $NameTable->{'marigold'};

=head1 DESCRIPTION

This module defines color names and their associated RGB values recognized by
Microsoft Internet Explorer.

This currently is a subset of the colors defined by CSS and SVG specifications.

See the documentation of L<Graphics::ColorNames> for information how to use
this module.

=head2 NOTE

Although Microsoft calls them "X11 color names", some of them are not identical
to the definitions in the X Specification.

=head1 SEE ALSO

C<Graphics::ColorNames>, Pantone Colors <https://www.w3schools.com/colors/colors_trends.asp>

=head1 AUTHOR

Herbert Breunung <lichtkind@cpan.org>

Based on C<Graphics::ColorNames::HTML> by Robert Rothenberg.

=head1 LICENSE

Copyright 2022 Herbert Breunung

This program is free software; you can redistribute it
and/or modify it under the same terms as Perl itself.

=cut
