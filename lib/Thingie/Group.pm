package Thingie::Group;

=pod

=head1 SYNOPSIS

	use Thingie::Group;

	my $group = Thingie::Group->new();

=head1 DESCRIPTION

A L<Thingie::Group> is a thingie that represents a group of thingies.

=cut


use strictures 2;
use 5.020;

use overload '""' => 'name';

use Moo;

extends 'Thingie::Thing';


# VERSION


has '+name' => ( default => 'group' );


1;

# ABSTRACT: A category thingie
