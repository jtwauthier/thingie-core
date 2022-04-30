package Thingie::Role::Typable;

=pod

=head1 SYNOPSIS

	use Moo;

	with 'Thingie::Role::Typable';

	my $type = $self->type();

=head1 DESCRIPTION

L<Thingie::Role::Typable> is a L<Role::Tiny> role that provides typing functionality to L<Thingie::Thing> based objects.

=cut


use strictures 2;
use 5.020;

use Moo::Role;

use Types::Standard qw(InstanceOf);

use Thingie::Type;


# VERSION


has type => (
	isa     => InstanceOf['Thingie::Type'],
	is      => 'rw',
	default => sub { Thingie::Type::Generic->new() },
	lazy    => 1,
);


1;

# ABSTRACT: A role that provides typing functionality to things
