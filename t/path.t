
use Test::More tests => 153;
use Data::Dumper;

use CPAN::DistnameInfo;

local $/ ="";

while(<DATA>) {
  chomp;
  my($file,%exp) = split(/[\t\n]+/, $_);
  my $d = CPAN::DistnameInfo->new($file);
  my %got = $d->properties;
  while (my($k, $v) = each %got) {
    is($d->$k(), $v);
  }
  ok(eq_hash(\%got, \%exp))
    or print "\n",Data::Dumper->Dump([\%exp,\%got],[qw(expected got)]);
}


__DATA__
CPAN/authors/id/J/JA/JAMCC/ngb-101.tar.gz
	filename	ngb-101.tar.gz
	dist		ngb
	maturity	released
	distvname	ngb-101
	version		101
	cpanid		JAMCC

CPAN/authors/id/J/JS/JSHY/DateTime-Fiscal-Year-0.01.tar.gz
	filename	DateTime-Fiscal-Year-0.01.tar.gz
	dist		DateTime-Fiscal-Year
	maturity	released
	distvname	DateTime-Fiscal-Year-0.01
	version		0.01
	cpanid		JSHY

CPAN/authors/id/G/GA/GARY/Math-PRSG-1.0.tar.gz
	filename	Math-PRSG-1.0.tar.gz
	dist		Math-PRSG
	maturity	released
	distvname	Math-PRSG-1.0
	version		1.0
	cpanid		GARY

CPAN/authors/id/G/GA/GARY/Math-BigInteger-1.0.tar.gz
	filename	Math-BigInteger-1.0.tar.gz
	dist		Math-BigInteger
	maturity	released
	distvname	Math-BigInteger-1.0
	version		1.0
	cpanid		GARY

CPAN/authors/id/T/TE/TERRY/VoiceXML-Server-1.6.tar.gz
	filename	VoiceXML-Server-1.6.tar.gz
	dist		VoiceXML-Server
	maturity	released
	distvname	VoiceXML-Server-1.6
	version		1.6
	cpanid		TERRY

CPAN/authors/id/J/JA/JAMCC/ngb-100.tar.gz
	filename	ngb-100.tar.gz
	dist		ngb
	maturity	released
	distvname	ngb-100
	version		100
	cpanid		JAMCC

CPAN/authors/id/J/JS/JSHY/DateTime-Fiscal-Year-0.02.tar.gz
	filename	DateTime-Fiscal-Year-0.02.tar.gz
	dist		DateTime-Fiscal-Year
	maturity	released
	distvname	DateTime-Fiscal-Year-0.02
	version		0.02
	cpanid		JSHY

CPAN/authors/id/G/GA/GARY/Crypt-DES-1.0.tar.gz
	filename	Crypt-DES-1.0.tar.gz
	dist		Crypt-DES
	maturity	released
	distvname	Crypt-DES-1.0
	version		1.0
	cpanid		GARY

CPAN/authors/id/G/GA/GARY/Stream-1.00.tar.gz
	filename	Stream-1.00.tar.gz
	dist		Stream
	maturity	released
	distvname	Stream-1.00
	version		1.00
	cpanid		GARY

CPAN/authors/id/G/GS/GSPIVEY/Text-EP3-Verilog-1.00.tar.gz
	filename	Text-EP3-Verilog-1.00.tar.gz
	dist		Text-EP3-Verilog
	maturity	released
	distvname	Text-EP3-Verilog-1.00
	version		1.00
	cpanid		GSPIVEY

CPAN/authors/id/T/TM/TMAEK/DBIx-Cursor-0.14.tar.gz
	filename	DBIx-Cursor-0.14.tar.gz
	dist		DBIx-Cursor
	maturity	released
	distvname	DBIx-Cursor-0.14
	version		0.14
	cpanid		TMAEK

CPAN/authors/id/G/GA/GARY/Crypt-IDEA-1.0.tar.gz
	filename	Crypt-IDEA-1.0.tar.gz
	dist		Crypt-IDEA
	maturity	released
	distvname	Crypt-IDEA-1.0
	version		1.0
	cpanid		GARY

CPAN/authors/id/G/GA/GARY/Math-TrulyRandom-1.0.tar.gz
	filename	Math-TrulyRandom-1.0.tar.gz
	dist		Math-TrulyRandom
	maturity	released
	distvname	Math-TrulyRandom-1.0
	version		1.0
	cpanid		GARY

CPAN/authors/id/T/TE/TERRY/VoiceXML-Server-1.13.tar.gz
	filename	VoiceXML-Server-1.13.tar.gz
	dist		VoiceXML-Server
	maturity	released
	distvname	VoiceXML-Server-1.13
	version		1.13
	cpanid		TERRY

JWILLIAMS/MasonX-Lexer-MSP-0.02.tar.gz
	filename	JWILLIAMS/MasonX-Lexer-MSP-0.02.tar.gz
	dist		MasonX-Lexer-MSP
	maturity	released
	distvname	MasonX-Lexer-MSP-0.02
	version		0.02

CPAN/authors/id/J/JA/JAMCC/Tie-CacheHash-0.50.tar.gz
	filename	Tie-CacheHash-0.50.tar.gz
	dist		Tie-CacheHash
	maturity	released
	distvname	Tie-CacheHash-0.50
	version		0.50
	cpanid		JAMCC

CPAN/authors/id/T/TM/TMAEK/DBIx-Cursor-0.13.tar.gz
	filename	DBIx-Cursor-0.13.tar.gz
	dist		DBIx-Cursor
	maturity	released
	distvname	DBIx-Cursor-0.13
	version		0.13
	cpanid		TMAEK

CPAN/authors/id/G/GS/GSPIVEY/Text-EP3-1.00.tar.gz
	filename	Text-EP3-1.00.tar.gz
	dist		Text-EP3
	maturity	released
	distvname	Text-EP3-1.00
	version		1.00
	cpanid		GSPIVEY

CPAN/authors/id/J/JD/JDUTTON/Parse-RandGen-0.100.tar.gz
	filename	Parse-RandGen-0.100.tar.gz
	dist		Parse-RandGen
	maturity	released
	distvname	Parse-RandGen-0.100
	version		0.100
	cpanid		JDUTTON

id/N/NI/NI-S/Tk400.202.tar.gz
	filename	Tk400.202.tar.gz
	dist		Tk
	maturity	released
	distvname	Tk400.202
	version		400.202
	cpanid		NI-S

authors/id/G/GB/GBARR/perl5.005_03.tar.gz
	filename	perl5.005_03.tar.gz
	dist		perl
	maturity	released
	distvname	perl5.005_03
	version		5.005_03
	cpanid		GBARR

M/MS/MSCHWERN/Test-Simple-0.48_01.tar.gz
	filename	Test-Simple-0.48_01.tar.gz
	dist		Test-Simple
	maturity	developer
	distvname	Test-Simple-0.48_01
	version		0.48_01
	cpanid		MSCHWERN