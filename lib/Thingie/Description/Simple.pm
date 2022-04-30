package Thingie::Description::Simple;

=pod

=head1 SYNOPSIS

	use Thingie::Description::Simple;

	my $Description = Thingie::Description::Simple->new();

=head1 DESCRIPTION

A L<Thingie::Description::Simple> is a thingie that represents a simple description of thingies.

=cut


use strictures 2;
use 5.020;

use Moo;

use types::Standard qw(Str);


extends 'Thingie::Description';


# VERSION


has '+name' => ( default => 'simple description' );


has value => (
	isa      => Str,
	is       => 'rw',
	required => 1,
);


1;

# ABSTRACT: A simple thingie description
