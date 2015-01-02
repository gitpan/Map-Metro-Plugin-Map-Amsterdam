use 5.14.0;

package Map::Metro::Plugin::Map::Amsterdam;

our $VERSION = '0.1001'; # VERSION

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-amsterdam.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=encoding utf-8

=head1 NAME

Map::Metro::Plugin::Map::Amsterdam - Map::Metro map for Amsterdam

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Amsterdam')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

As of 2015-01-01 it contains lines 50, 51, 53 and 54. See (L<wikipedia|https://en.wikipedia.org/wiki/Amsterdam_metro>).

=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2015 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut