package Thingie::Subtype;

=pod

=head1 SYNOPSIS

	use Thingie::Subtype;

	my $subtype = Thingie::Subtype->new();

=head1 DESCRIPTION

L<Thingie::Subtype> is a thing that describes the subtype of a thing.

=cut


use strictures 2;
use 5.020;

use overload '""' => 'name';

use Moo;


# VERSION


has '+name' => ( default => 'subtype' );


1;

# ABSTRACT: the subtype of a thingie
