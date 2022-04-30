package Thingie::Thing;

=pod

=head1 SYNOPSIS

	use Thingie::Thing;

	my $thing = Thingie::Thing->new();

=head1 DESCRIPTION

L<Thingie::Thing> represents a generic thing.  It is the base of all other Thingie objects.

=cut


use strictures 2;
use 5.020;

use Moo;

use Types::Standard qw(Str);


=head1 ROLES

L<Thingie::Thing> consumes the following roles:

=over 4

=item L<Thingie::Role::Typable> - adds typing functionality

=item L<Thingie::Role::Describable> - adds describing functionality

=back

=cut

with qw(
	Thingie::Role::Typable
	Thingie::Role::Describable
);


# VERSION


has name => (
	isa      => Str,
	is       => 'rw',
	required => 1,
);

1;

# ABSTRACT: A generic thing
