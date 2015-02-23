package Registry::View::HTML;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
    WRAPPER => 'site/bootstrap.tt'
);

=head1 NAME

Registry::View::HTML - TT View for Registry

=head1 DESCRIPTION

TT View for Registry.

=head1 SEE ALSO

L<Registry>

=head1 AUTHOR

Alessandro,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;