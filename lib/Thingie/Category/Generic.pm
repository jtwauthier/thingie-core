package Thingie::Category::Generic;

=pod

=head1 SYNOPSIS

	use Thingie::Category::Generic;

	my $category = Thingie::Category::Generic->new();

=head1 DESCRIPTION

A L<Thingie::Category::Generic> is a thingie that represents a generic category of thingies.

=cut


use strictures 2;
use 5.020;

use Moo;

extends 'Thingie::Category';


# VERSION


has '+name' => ( default => 'generic category' );


1;

# ABSTRACT: A generic category thingie
