# -*- perl -*-

use inc::Module::Install;

name		('CPAN-DistnameInfo');
abstract	('Extract distribution name and version from a distribution filename');
author		('Graham Barr <gbarr@pobox.com>');
version_from	('lib/CPAN/DistnameInfo.pm');
license		('perl');

requires	( perl => '5.004' );

include_deps	('Test::More');

check_nmake();      # check and download nmake.exe for Win32

&Makefile->write;
&Meta->write;

sub MY::postamble {
  return <<'POSTAMBLE';

distdir : manifest run_cpansign

run_cpansign :
	cpansign -s

POSTAMBLE

}
