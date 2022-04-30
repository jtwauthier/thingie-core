package Thingie::Type;

=pod

=head1 SYNOPSIS

	use Thingie::Type;

	my $type = Thingie::Type->new();

=head1 DESCRIPTION

L<Thingie::Type> is a thing that describes the type of a thing.

=cut


use strictures 2;
use 5.020;

use overload '""' => 'name';

use Moo;


# VERSION


has '+name' => ( default => 'type' );


1;

# ABSTRACT: the type of a thingie
