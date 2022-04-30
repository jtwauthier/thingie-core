package Thingie::Category;

=pod

=head1 SYNOPSIS

	use Thingie::Category;

	my $category = Thingie::Category->new();

=head1 DESCRIPTION

A L<Thingie::Category> is a thingie that represents a category of thingies.

=cut


use strictures 2;
use 5.020;

use overload '""' => 'name';

use Moo;

extends 'Thingie::Thing';


# VERSION


has '+name' => ( default => 'category' );


1;

# ABSTRACT: A category thingie
