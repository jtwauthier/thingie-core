package Thingie::Role::Categorizable;

=pod

=head1 SYNOPSIS

	use Moo;

	with 'Thingie::Role::Categorizable';

	my $category = $self->category();

=head1 DESCRIPTION

L<Thingie::Role::Categorizable> is a L<Role::Tiny> role that provides categorizing functionality to L<Thingie::Thing> based objects.

=cut


use strictures 2;
use 5.020;

use Moo::Role;

use Types::Standard qw(InstanceOf);

use Thingie::Category;


# VERSION


has category => (
	isa     => InstanceOf['Thingie::Category'],
	is      => 'rw',
	default => sub { Thingie::Category::Generic->new() },
	lazy    => 1,
);


=method categorize

Categorizes a thingie

Returns the category attribute of the specified thingie object

If no parameters are specified, categorizes the thingie referenced by $self.  Pass in a thingie object to get it's category.

=cut

sub categorize {
	my ( $self, $thing ) = @_;

	return $thing->category()
		if ( defined $thing && $thing->can( 'category' ) );

	return $self->category();
}


1;

# ABSTRACT: A role that provides categorizing functionality to things
