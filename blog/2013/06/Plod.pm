=head1 NAME

Plod - allowing literate mixing between Perl source code and POD.

=cut

use strict;
use warnings;

package Plod;
use Filter::Simple;

# Use the filter to play with pod sections

FILTER {
	s/^=for code\n+((\s+).*\n(?:\2.*\n)*)/=cut\n\n$1\n=pod\n\n/mg
};

1;
