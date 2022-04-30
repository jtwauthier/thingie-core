package Thingie::Type::Generic;

=pod

=head1 SYNOPSIS

	use Thingie::Type::Generic;

	my $type = Thingie::Type::Generic->new();

=head1 DESCRIPTION

A L<Thingie::Type::Generic> is a thingie that represents a generic type of thingie.

=cut


use strictures 2;
use 5.020;

use Moo;

extends 'Thingie::Type';


# VERSION


has '+name' => ( default => 'generic type' );


1;

# ABSTRACT: A generic type thingie
