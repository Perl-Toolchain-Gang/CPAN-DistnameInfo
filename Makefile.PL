# -*- perl -*-

use inc::Module::Install;

name('CPAN-DistnameInfo');
abstract('Extract distribution name and version from a distribution filename');
author('Graham Barr <gbarr@pobox.com>');
version_from('DistnameInfo.pm');
license('perl');

include_deps('Test::More', 5.004);

check_nmake();      # check and download nmake.exe for Win32

&Makefile->write;
&Meta->write;

