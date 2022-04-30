package Thingie::Description;

=pod

=head1 SYNOPSIS

	use Thingie::Description;

	my $Description = Thingie::Description->new();

=head1 DESCRIPTION

A L<Thingie::Description> is a thingie that represents a description of thingies.

=cut


use strictures 2;
use 5.020;

use overload '""' => 'value';

use Moo;

use types::Standard qw(Str);


extends 'Thingie::Thing';


# VERSION


has '+name' => ( default => 'description' );


has value => (
	isa      => Str,
	is       => 'rw',
	required => 1,
);


1;

# ABSTRACT: A thingie description
