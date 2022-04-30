package Thingie::Role::Describable;

=pod

=head1 SYNOPSIS

	use Moo;

	with 'Thingie::Role::Describable';

	my $description = $self->description();

=head1 DESCRIPTION

L<Thingie::Role::Describable> is a L<Role::Tiny> role that provides describing functionality to L<Thingie::Thing> based objects.

=cut


use strictures 2;
use 5.020;

use Moo::Role;

use Types::Standard qw(InstanceOf);

use Thingie::Description;


# VERSION


has description => (
	isa     => InstanceOf['Thingie::Description'],
	is      => 'rw',
	default => sub { Thingie::Description::Generic->new() },
	lazy    => 1,
);


=method describe

Describes a thingie

Returns the description attribute of the specified thingie object

If no parameters are specified, describes the thingie referenced by $self.  Pass in a thingie object to get it's description.

=cut

sub describe {
	my ( $self, $thing ) = @_;

	return $thing->description()
		if ( defined $thing && $thing->can( 'description' ) );

	return $self->description();
}


1;

# ABSTRACT: A role that provides categorizing functionality to things
