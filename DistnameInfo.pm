
package CPAN::DistnameInfo;

use Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(distname_info);
$VERSION = "0.01";
use strict;

sub distname_info {
  my $file = shift or return;

  $file =~ s,^.*/,,;
  $file =~ s,\.(?:tar\.gz|zip|tgz)$,,i;

  my ($dist, $version) = $file =~ /^
    ((?:[-+.]*(?:[A-Za-z0-9]+|(?<=\D)_|_(?=\D))*
     (?:
	[A-Za-z](?=[^A-Za-z]|$)
	|
	\d(?=-)
     )(?<![._-][vV])
    )+)(.*)
  $/xs or return ($file,undef,undef);

  $version = $1
    if !length $version and $dist =~ s/-(\d+\w)$//;

  $version = $1 . $version
    if $version =~ /^\d+$/ and $dist =~ s/-(\w+)$//;

  if ($version =~ /\d\.\d/) {
    $version =~ s/^[-_.]+//;
  }
  else {
    $version =~ s/^[-_]+//;
  }

  my $dev;
  if (length $version) {
    if ($file =~ /^perl-?\d+\.(\d+)(?:\D(\d+))?(-(?:TRIAL|RC)\d+)?$/) {
      $dev = 1 if (($1 > 6 and $1 & 1) or ($2 and $2 >= 50)) or $3;
    }
    elsif ($version =~ /\d\D\d+_\d/) {
      $dev = 1;
    }
  }
  else {
    $version = undef;
  }

  ($dist, $version, $dev);
}

1;

__END__

=head1 NAME

CPAN::DistnameInfo - Extract distribution name and version from a distribution filename

=head1 SYNOPSIS

  my $filename = "CPAN-DistnameInfo-0.01.tar.gz";

  # ("CPAN-DistnameInfo","0.01",undef)
  my ($name, $version, $isdev) = distname_info($filename); 

=head1 DESCRIPTION

Many online services that are centered around CPAN attempt to
associate multiple uploads by extracting a distribution name from
the filename of the upload. For most distributions this is easy as
they have used ExtUtils::MakeMaker or Module::Build to create the
distribution, which results in a uniform name. But sadly not all
uploads are created in this way.

C<distname_info> uses heuristics that have been learnt by
L<http://search.cpan.org/> to extract the distribution name and
version from filenames and also report if the version is to be
treated as a developer release

=head1 AUTHOR

Graham Barr <gbarr@pobox.com>

=head1 COPYRIGHT 

Copyright (c) 2003 Graham Barr. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

=cut

