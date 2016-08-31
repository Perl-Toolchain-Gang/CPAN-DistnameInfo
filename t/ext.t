
use Test::More tests => 563;
use Data::Dumper;

use utf8;
binmode( Test::Builder->new->$_, ':encoding(UTF-8)' )
  for qw( output failure_output todo_output);

use CPAN::DistnameInfo;

while(<DATA>) {
  chomp;
  my($file,@ret) = (split(/\t/, $_))[0..3];
  $ret[2] = $ret[2] ? 'developer' : 'released';
  my $d = CPAN::DistnameInfo->new($file);
  my @tst = ($d->dist, $d->version, $d->maturity);

  ok( eq_array(\@tst, \@ret), "output for $file" )
    or diag(Data::Dumper->Dump([\@ret,\@tst],[qw(expected got)]));
}

__DATA__
ncheck.tar.gz	ncheck	
Thread_52.tar.gz	Thread	52
Thread-oct02.tar.gz	Thread	oct02
TransitiveClosure-1.4.tgz	TransitiveClosure	1.4
RFC_RFC822_Address-1.5.tgz	RFC_RFC822_Address	1.5
Logger.0.34.tar.gz	Logger	0.34
libplot-perl-2.1.6.2b.tar.gz	libplot-perl	2.1.6.2b
finance-quote_0.18.tar.gz	finance-quote	0.18
finance-quote_1.02.tar.gz	finance-quote	1.02
finance-quote_0.17.tar.gz	finance-quote	0.17
Win32-GuiTest-0.6.zip	Win32-GuiTest	0.6
Win32-GuiTest-0.4.zip	Win32-GuiTest	0.4
Win32-GuiTest-1.3.zip	Win32-GuiTest	1.3
libwin32-0.16.zip	libwin32	0.16
VMS-Monitor-0_06.zip	VMS-Monitor	0_06
NISPlus-0.06-alpha.tar.gz	NISPlus	0.06-alpha
NISPlus-0.04-alpha.tar.gz	NISPlus	0.04-alpha
DelimMatch-1.06a.tar.gz	DelimMatch	1.06a
Convert-Scalar-0.1e.tar.gz	Convert-Scalar	0.1e
Win32-Printer-0.6.4.zip	Win32-Printer	0.6.4
variable-1.1.tgz	variable	1.1
glist-0.9.17a10.tar.gz	glist	0.9.17a10
JBrowseEntry.4.22.tar.gz	JBrowseEntry	4.22
cshar-3.0@15.tar.gz	cshar	3.0@15
Acme-POE-Knee-1.00.zip	Acme-POE-Knee	1.00
Acme-POE-Knee-1.02.zip	Acme-POE-Knee	1.02
Acme-POE-Knee-1.10.zip	Acme-POE-Knee	1.10
ControlX10-CM17.0.060.tar.gz	ControlX10-CM	17.0.060
VMS-User-0_01.zip	VMS-User	0_01
Win32-SystemInfo-0.05.zip	Win32-SystemInfo	0.05
Win32-SystemInfo-0.06.zip	Win32-SystemInfo	0.06
Win32-SystemInfo-0.02.zip	Win32-SystemInfo	0.02
curses_widgets_1_1.tar.gz	curses_widgets	1_1
Tk-CheckbuttonGroup-0.2.1.tgz	Tk-CheckbuttonGroup	0.2.1
NewsClipper-1.30-OpenSource.tar.gz	NewsClipper	1.30-OpenSource
NewsClipper-1.32-OpenSource.tar.gz	NewsClipper	1.32-OpenSource
NewsClipper-1.17-os.tar.gz	NewsClipper	1.17-os
DateTime-Format-DBI-0.03a.tar.gz	DateTime-Format-DBI	0.03a
Win32-MIDI-0_2.zip	Win32-MIDI	0_2
Ananke-Utils-1.0.2.tgz	Ananke-Utils	1.0.2
AI-ExpertSystem-Simple.1.2.tgz	AI-ExpertSystem-Simple	1.2
AI-ExpertSystem-Simple.1.1.tgz	AI-ExpertSystem-Simple	1.1
AI-ExpertSystem-Simple.1.0.tgz	AI-ExpertSystem-Simple	1.0
MEMStats.tgz	MEMStats	
VMS_System-1_04.zip	VMS_System	1_04
Tie-Hash-Longest-1.0.reupload-again-because-im-stupid.tar.gz	Tie-Hash-Longest	1.0.reupload-again-because-im-stupid
DBI_Talk5_2001.tar.gz	DBI_Talk	5_2001
DBI_Talk1_1997.tar.gz	DBI_Talk	1_1997
DBI_Talk4_2000.tar.gz	DBI_Talk	4_2000
POE-Component-IRC-1.0b.tar.gz	POE-Component-IRC	1.0b
Orac-1.2.0.tgz	Orac	1.2.0
ThousandWords_0.05.tar.gz	ThousandWords	0.05
Module-MakeDist-1.04.tgz	Module-MakeDist	1.04
Module-MakeDist-1.05.tgz	Module-MakeDist	1.05
AxKit-XSP-Swish-0.2a.tar.gz	AxKit-XSP-Swish	0.2a
jp_beta_1.tar.gz	jp_beta	1
DBIx-CodeKit-1.07.tgz	DBIx-CodeKit	1.07
PDF-API2-0.3r74.tar.gz	PDF-API2	0.3r74
DBIx-HTML-LinkedMenus-1.05.tgz	DBIx-HTML-LinkedMenus	1.05
FileKGlob.tar.gz	FileKGlob	
DBD-NET-0.1.tgz	DBD-NET	0.1
smime-0.7.tgz	smime	0.7
NIS-a2.tar.gz	NIS	a2
HPUX-LVM_0.05.tar.gz	HPUX-LVM	0.05
HPUX-LVM_0.06.tar.gz	HPUX-LVM	0.06
Parse-FixedDelimiter-1.00.tgz	Parse-FixedDelimiter	1.00
Date-Ordinal-2.9.tgz	Date-Ordinal	2.9
Proc-ParallelLoop-0.5.tgz	Proc-ParallelLoop	0.5
SYMM_0.2.tgz	SYMM	0.2
SYMM_0.3.tgz	SYMM	0.3
CGI-AppToolkit-0.05.tgz	CGI-AppToolkit	0.05
GDGraph-Map-1.03.tgz	GDGraph-Map	1.03
GDGraph-Map-1.05.tgz	GDGraph-Map	1.05
Compress-SelfExtracting-0.03.tgz	Compress-SelfExtracting	0.03
Compress-SelfExtracting-0.04.tgz	Compress-SelfExtracting	0.04
Compress-SelfExtracting-0.01.tgz	Compress-SelfExtracting	0.01
Tivoli_0.01.tar.gz	Tivoli	0.01
Bioinf_V2.0.tar.gz	Bioinf	V2.0
font_ft2_0.1.0.tgz	font_ft	2_0.1.0
Tie-Scalar-RestrictUpdates-0.0.1b.tar.gz	Tie-Scalar-RestrictUpdates	0.0.1b
Language-FP-0.03.tgz	Language-FP	0.03
Language-FP-0.02.tgz	Language-FP	0.02
Language-FP-0.01.tgz	Language-FP	0.01
Attribute-Curried-0.01.tgz	Attribute-Curried	0.01
perl-c++-api.0.0_3.tar.gz	perl-c++-api	0.0_3	1
Perl6-Interpolators-0.03.zip	Perl6-Interpolators	0.03
Chess-PGN-Parse-0.10.tgz	Chess-PGN-Parse	0.10
perlmenu.v4.0.tar.gz	perlmenu	v4.0
Class-Tree-1.21.tgz	Class-Tree	1.21
Class-Tree-1.23.tgz	Class-Tree	1.23
MIME-tools-5.411a.tar.gz	MIME-tools	5.411a
dbd_rdb-1_16.tgz	dbd_rdb	1_16
Apache-CVS-0.01.tgz	Apache-CVS	0.01
File-Remove0.20.tar.gz	File-Remove	0.20
Convert-Ethiopic-0.20-210102.tar.gz	Convert-Ethiopic	0.20-210102
GPIB_0_30.tgz	GPIB	0_30
tkmult_1.0.0.tgz	tkmult	1.0.0
tkmult_1.0.1.tgz	tkmult	1.0.1
WWW-Search-NorthernLight.-2.06.tar.gz	WWW-Search-NorthernLight	2.06
DBIx-HTML-ClientDB-1.03.tgz	DBIx-HTML-ClientDB	1.03
PDL-McIDAS-0.02.tgz	PDL-McIDAS	0.02
HTML-Widgets-Search-0.04.tgz	HTML-Widgets-Search	0.04
HTML-Widgets-Search-0.02.tgz	HTML-Widgets-Search	0.02
Algorithm-Loops-1.031.zip	Algorithm-Loops	1.031
Date_Maya-1.1.tgz	Date_Maya	1.1
Tie_Pick-1.1.tgz	Tie_Pick	1.1
IPTables-IPv4-0.97b.tar.gz	IPTables-IPv4	0.97b
Pod-PerlPoint-0.03.tgz	Pod-PerlPoint	0.03
Pod-PerlPoint-0.02.tgz	Pod-PerlPoint	0.02
Lingua-EN-Infinitive-1.06.tgz	Lingua-EN-Infinitive	1.06
Lingua-EN-Infinitive-1.07.tgz	Lingua-EN-Infinitive	1.07
Ananke-Template-1.1.tgz	Ananke-Template	1.1
Ananke-Template-1.4.tgz	Ananke-Template	1.4
X500-DN-Parser-1.14.tgz	X500-DN-Parser	1.14
X500-DN-Parser-1.15.tgz	X500-DN-Parser	1.15
DBIx-Table2Hash-1.12.tgz	DBIx-Table2Hash	1.12
Tk-OS2src-1.03.zip	Tk-OS2src	1.03
Tk-OS2src-1.02.zip	Tk-OS2src	1.02
Tk-OS2src-1.04.zip	Tk-OS2src	1.04
English-Reference-0.03.tgz	English-Reference	0.03
Apache-SecSess-0.09.tgz	Apache-SecSess	0.09
Data-FixedFormat-0.01.zip	Data-FixedFormat	0.01
XML-Xerces-1.7.0-1.tar.gz	XML-Xerces	1.7.0-1
XML-Xerces-2.3.0-1.tar.gz	XML-Xerces	2.3.0-1
IO_CSVHeaderFile_0.02.tgz	IO_CSVHeaderFile	0.02
Chess-PGN-Filter-0.06.zip	Chess-PGN-Filter	0.06
Chess-PGN-Filter-0.09.zip	Chess-PGN-Filter	0.09
Chess-PGN-Filter-0.05.zip	Chess-PGN-Filter	0.05
VMS-Queue-0_54.zip	VMS-Queue	0_54
Tree.tar.gz	Tree	
Chess-PGN-Moves-0.02.zip	Chess-PGN-Moves	0.02
Chess-PGN-Moves-0.01.zip	Chess-PGN-Moves	0.01
Chess-PGN-Moves-0.03.zip	Chess-PGN-Moves	0.03
HTML-Widgets-Menu-0.2.tgz	HTML-Widgets-Menu	0.2
HTML-Widgets-Menu-0.03.tgz	HTML-Widgets-Menu	0.03
TXTCOD-4.7.1-eng.tar.gz	TXTCOD	4.7.1-eng
Smil_0_70.tgz	Smil	0_70
qtpl_perl-0.5.tgz	qtpl_perl	0.5
DateTime-Format-Baby-0.14.tgz	DateTime-Format-Baby	0.14
DateTime-Format-Baby-0.15.2.tgz	DateTime-Format-Baby	0.15.2
XML-DB.tar.gz	XML-DB	
OS2-FTP-0_10.zip	OS2-FTP	0_10
RcReader-0.5.9b.tar.gz	RcReader	0.5.9b
Text-Format0.52+NWrap0.11.tar.gz	Text-Format	0.52+NWrap0.11
webcam-man.1.0.tgz	webcam-man	1.0
Petal-0.4.tgz	Petal	0.4
Mail-Box-MH-Resource-0.05.tgz	Mail-Box-MH-Resource	0.05
Win32-EventLog-Message.tar.gz	Win32-EventLog-Message	
Math-BaseCnv-1.0.37SLNGN.tgz	Math-BaseCnv	1.0.37SLNGN
Win32-Exchange_v0.036.tar.gz	Win32-Exchange	v0.036
Win32-Exchange_v0.038.tar.gz	Win32-Exchange	v0.038
Win32-Exchange_v0.032.tar.gz	Win32-Exchange	v0.032
Zoidberg-0.3a.tar.gz	Zoidberg	0.3a
import-1_01.tgz	import	1_01
smake-1.2b1.tar.gz	smake	1.2b1
Win32-GUI-0.0.490.zip	Win32-GUI	0.0.490
sol-inst-0.90a.tar.gz	sol-inst	0.90a
VMS-FileUtils_0.014.tar.gz	VMS-FileUtils	0.014
Fraction-v.53b.tar.gz	Fraction	v.53b
Fraction-v.51b.tar.gz	Fraction	v.51b
Fraction-v.4a.tar.gz	Fraction	v.4a
WWW-Search-EuroSeek-1.2+.tar.gz	WWW-Search-EuroSeek	1.2+
Apache-PSP-0.4.tgz	Apache-PSP	0.4
Term-Gnuplot-0.90_38b_00.tar.gz	Term-Gnuplot	0.90_38b_00	1
perlbook-5.005_02-a.tar.gz	perlbook	5.005_02-a	1
Perl6-Parameters-0.02.zip	Perl6-Parameters	0.02
Apache-ePerl-0.10b.tar.gz	Apache-ePerl	0.10b
OpenCA-CRL-0.7.5a.tar.gz	OpenCA-CRL	0.7.5a
OpenCA-CRL-0.6.5a.tar.gz	OpenCA-CRL	0.6.5a
CGI-Explorer-2.00.tgz	CGI-Explorer	2.00
Data-JavaScript-1.08.tgz	Data-JavaScript	1.08
One_Penguin-pre2.tar.gz	One_Penguin	pre2
Tiger-hash-1.0b.tar.gz	Tiger-hash	1.0b
AI-NeuralNet-BackProp-0.40.zip	AI-NeuralNet-BackProp	0.40
AI-NeuralNet-BackProp-0.42.zip	AI-NeuralNet-BackProp	0.42
Data-JavaScript-LiteObject-1.03.tgz	Data-JavaScript-LiteObject	1.03
Data-JavaScript-LiteObject-1.04.tgz	Data-JavaScript-LiteObject	1.04
examples.tar.gz	examples	
SearchSDK-0.99b.tar.gz	SearchSDK	0.99b
Win32-API-Prototype.tar.gz	Win32-API-Prototype	
Geography_States-1.6.tgz	Geography_States	1.6
Audio-Daemon-0.99Beta.tar.gz	Audio-Daemon	0.99Beta
Tcl-b1.tar.gz	Tcl	b1
Tcl-b2.tar.gz	Tcl	b2
Tcl-b3.tar.gz	Tcl	b3
Mmap-a2.tar.gz	Mmap	a2
WWW-Search-PubMed.-1.0.tar.gz	WWW-Search-PubMed	1.0
Fame-2.0d.tar.gz	Fame	2.0d
Fame-2.0c.tar.gz	Fame	2.0c
Net-CDDBScan-2.0b.tar.gz	Net-CDDBScan	2.0b
Lingua_EN_Numbers_Easy-1.2.tgz	Lingua_EN_Numbers_Easy	1.2
apache.authznetldap.02.tar.gz	apache.authznetldap	.02
iodbc_ext_0_1.tar.gz	iodbc_ext	0_1
Cisco-CopyConfig-1.2.tgz	Cisco-CopyConfig	1.2
End-1.2.tgz	End	1.2
ExtUtils-FakeConfig-0.05.zip	ExtUtils-FakeConfig	0.05
Data-Locations-5.2-fixed.tar.gz	Data-Locations	5.2-fixed
Chart-0.99b.tar.gz	Chart	0.99b
Safe-b2.tar.gz	Safe	b2
rms.zip	rms	
Solaris-0.05a.tar.gz	Solaris	0.05a
curses_forms_0_1.tar.gz	curses_forms	0_1
curses_forms_0_2a.tar.gz	curses_forms	0_2a
Win32-API-0.20.zip	Win32-API	0.20
Devel-TraceLoad-0.07.zip	Devel-TraceLoad	0.07
Tk800.025.tar.gz	Tk	800.025
Tk804.025_beta1.tar.gz	Tk	804.025_beta1
Tk804.024.patches-0.1.tar.gz	Tk	804.024.patches-0.1
HTML-QuickCheck-1.0b1.tar.gz	HTML-QuickCheck	1.0b1
Lingua-LinkParser1.02.tar.gz	Lingua-LinkParser	1.02
Lingua-LinkParser1.08.tar.gz	Lingua-LinkParser	1.08
HTML-BarChart-0.1.0.tgz	HTML-BarChart	0.1.0
swig1.1p4.tar.gz	swig	1.1p4
DBIx-XML-DataLoader-1.1b.tar.gz	DBIx-XML-DataLoader	1.1b
Devel-TraceSubs-0.02.zip	Devel-TraceSubs	0.02
Devel-TraceSubs-0.01.zip	Devel-TraceSubs	0.01
Glib-1.00rc1.tar.gz	Glib	1.00rc1
Sample-1.3.tgz	Sample	1.3
finance-yahooquote_0.20.tar.gz	finance-yahooquote	0.20
Win32-perl-shellext_0.02.zip	Win32-perl-shellext	0.02
htmltoc1.2.1.tar.gz	htmltoc	1.2.1
XML-Parser.2.30.tar.gz	XML-Parser	2.30
Net-Divert-0.01.tgz	Net-Divert	0.01
VRML-1.04de.tar.gz	VRML	1.04de
sdf-2.001beta1.tar.gz	sdf	2.001beta1
Printer-0.97d.tar.gz	Printer	0.97d
BerkeleyDB_Locks_0_02.tar.gz	BerkeleyDB_Locks	0_02
Tie_FlipFlop-1.1.tgz	Tie_FlipFlop	1.1
Ar-0.2alpha.tar.gz	Ar	0.2alpha
CGI-Lite-2.001-emergencyrelease.tar.gz	CGI-Lite	2.001-emergencyrelease
MSDOS-Descript-1.000.zip	MSDOS-Descript	1.000
MSDOS-Descript-1.001.zip	MSDOS-Descript	1.001
Win32-Scheduler_v20000702.tar.gz	Win32-Scheduler	v20000702
KeyState.zip	KeyState	
Finance-YahooProfile-0.11b.tar.gz	Finance-YahooProfile	0.11b
cons_1.1.tar.gz	cons	1.1
cons-1.5.tgz	cons	1.5
cons-2.1.2.tgz	cons	2.1.2
Audio-SID-3.00.tgz	Audio-SID	3.00
DBIx-MSSQLReporter-1.02.tgz	DBIx-MSSQLReporter	1.02
beancounter_0.6.2.tar.gz	beancounter	0.6.2
Zope-Watchdog-Daemon-2.0.tgz	Zope-Watchdog-Daemon	2.0
OpenCA-PKCS7-0.4.21a.tar.gz	OpenCA-PKCS7	0.4.21a
perlSGML.1997Sep18.tar.gz	perlSGML.1997Sep	18
PGP-0.3a.tar.gz	PGP	0.3a
StatisticsRegression.tar.gz	StatisticsRegression	
Text-Template-0.1b.tar.gz	Text-Template	0.1b
Text-Template-0.1a.tar.gz	Text-Template	0.1a
PDF-107.tgz	PDF	107
PDF-111.tgz	PDF	111
Brasil-Checar-CGC-1.01a.tar.gz	Brasil-Checar-CGC	1.01a
DBI_AdvancedTalk_200307.tar.gz	DBI_AdvancedTalk	200307
AXF-0.8.1.tgz	AXF	0.8.1
VMS-FlatFile-0.01.zip	VMS-FlatFile	0.01
Algorithm-Diff-1.11a.tar.gz	Algorithm-Diff	1.11a
dist-3.0@70.tar.gz	dist	3.0@70
log.tar.gz	log	
Win32-Encode-0.5beta.zip	Win32-Encode	0.5beta
Spread-3.12-1.01.tar.gz	Spread	3.12-1.01
Spread-3.14-1.02.tar.gz	Spread	3.14-1.02
Spread-3.17.1-1.05.tar.gz	Spread	3.17.1-1.05
parrot_0.0.6.tgz	parrot	0.0.6
PerlPoint-Package-0.29.tgz	PerlPoint-Package	0.29
PerlPoint-Package-0.32.tgz	PerlPoint-Package	0.32
PerlPoint-Package-0.38.tgz	PerlPoint-Package	0.38
libao-perl_0.03-1.tar.gz	libao-perl	0.03-1
Crypt-ECB-1.1-2.tar.gz	Crypt-ECB	1.1-2
Edi2SGML-0.1.tgz	Edi2SGML	0.1
Crypt-SecurID-0.04.tgz	Crypt-SecurID	0.04
EZDBI-0.13.tgz	EZDBI	0.13
EZDBI-0.120.tgz	EZDBI	0.120
DBD-QBase-0.03.tgz	DBD-QBase	0.03
PGForth1.0.tar.gz	PGForth	1.0
vms-device-0_08.zip	vms-device	0_08
sub-curry-0.02.zip	sub-curry	0.02
sub-curry-0.04.zip	sub-curry	0.04
sub-curry-0.06.zip	sub-curry	0.06
Geanfammer_V3.4.tar.gz	Geanfammer	V3.4
XML-Grove-0.46alpha.tar.gz	XML-Grove	0.46alpha
Net-ProxyMod-0.03.tgz	Net-ProxyMod	0.03
Net-ProxyMod-0.01.tgz	Net-ProxyMod	0.01
VMS-Process-1_05.zip	VMS-Process	1_05
File-NCopy0.32.tar.gz	File-NCopy	0.32
TFTP-1.0b3.tar.gz	TFTP	1.0b3
Lingua-FA-Number.tar.gz	Lingua-FA-Number	
Cmenu-1.1.tgz	Cmenu	1.1
Net-Domain-ExpireDate-0.16.tgz	Net-Domain-ExpireDate	0.16
Net-Domain-ExpireDate-0.15.tgz	Net-Domain-ExpireDate	0.15
XML-Edifact-0.32.tgz	XML-Edifact	0.32
Cyrus-Check_Quota.tgz	Cyrus-Check_Quota	
Readonly-0.05a.tar.gz	Readonly	0.05a
Oak-1.3-r2.tar.gz	Oak	1.3-r2
Pragmatic-1.5a.tar.gz	Pragmatic	1.5a
patches_not_in_5_50.zip	patches_not_in	5_50
Business-ISIN-0.12.tgz	Business-ISIN	0.12
Business-ISIN-0.20.tgz	Business-ISIN	0.20
Business-ISIN-0.11.tgz	Business-ISIN	0.11
OpenCA-Tools-0.4.3a.tar.gz	OpenCA-Tools	0.4.3a
Xforms4Perl-0.8.4--2.tgz	Xforms4Perl	0.8.4--2
Xforms4Perl-0.8.4.tgz	Xforms4Perl	0.8.4
DBSchema-Normalizer-0.08.tgz	DBSchema-Normalizer	0.08
Win32-ActAcc-1.0.zip	Win32-ActAcc	1.0
Cyrus-SASL-NewPass.tgz	Cyrus-SASL-NewPass	
Apache-ImageMagick-2.0b5.tar.gz	Apache-ImageMagick	2.0b5
Apache-ImageMagick-2.0b4.tar.gz	Apache-ImageMagick	2.0b4
Apache-ImageMagick-2.0b7.tar.gz	Apache-ImageMagick	2.0b7
dmake-4.1pl1-win32.zip	dmake	4.1pl1-win32
Win32-Pipe_v20010208.tar.gz	Win32-Pipe	v20010208
vms-librarian-1_07.zip	vms-librarian	1_07
Log-Log4perl-AutoCategorize-0.01.tgz	Log-Log4perl-AutoCategorize	0.01
MailQuoteWrap0.01.tgz	MailQuoteWrap	0.01
etext1.6.2.tar.gz	etext	1.6.2
etext.1.6.3.zip	etext	1.6.3
Chess-PGN-EPD-0.03.zip	Chess-PGN-EPD	0.03
Chess-PGN-EPD-0.08.zip	Chess-PGN-EPD	0.08
Chess-PGN-EPD-0.10.zip	Chess-PGN-EPD	0.10
Jeeves1.0.tar.gz	Jeeves	1.0
Scripts-TXTCOD-4.7.1-eng.tar.gz	Scripts-TXTCOD	4.7.1-eng
Win32-Registry-File-1.09.zip	Win32-Registry-File	1.09
Win32-Registry-File-1.10.zip	Win32-Registry-File	1.10
Shuffle-1.4.tgz	Shuffle	1.4
Tk-SimpleFileSelect-0.67a.tar.gz	Tk-SimpleFileSelect	0.67a
Net-IRC-0.5b.tar.gz	Net-IRC	0.5b
perlrpcgen-0.71a.tar.gz	perlrpcgen	0.71a
WWW-Authenticate-0.6-1.tar.gz	WWW-Authenticate	0.6-1
Data-Pivoter-0.07a.tar.gz	Data-Pivoter	0.07a
Algorithm-Diff-Apply-0.2.1.zip	Algorithm-Diff-Apply	0.2.1
Algorithm-Diff-Apply-0.1.1.zip	Algorithm-Diff-Apply	0.1.1
vms-queue-0_57.zip	vms-queue	0_57
Win32API-File-0.07.zip	Win32API-File	0.07
Win32API-File-0.08.zip	Win32API-File	0.08
DBZ_File_1.1.tar.gz	DBZ_File	1.1
ais.tar.gz	ais	
XML-SimpleObject0.51.tar.gz	XML-SimpleObject	0.51
XML-SimpleObject0.3.tar.gz	XML-SimpleObject	0.3
Convert-Bencode-1.02-20032506.tar.gz	Convert-Bencode	1.02-20032506
XML-MetaGenerator-0.03.tgz	XML-MetaGenerator	0.03
OS2-UPM-0_10.zip	OS2-UPM	0_10
VMS_Persona-1_01.zip	VMS_Persona	1_01
Whitespace-1.02.tgz	Whitespace	1.02
Whitespace-1.00.tgz	Whitespace	1.00
Whitespace-1.01.tgz	Whitespace	1.01
Win32-mIRC-0.03a.tar.gz	Win32-mIRC	0.03a
MSDOS-Attrib-1.00.zip	MSDOS-Attrib	1.00
MSDOS-Attrib-1.01.zip	MSDOS-Attrib	1.01
POE-Component-RSSAggregator-0.02.tgz	POE-Component-RSSAggregator	0.02
POE-Component-RSSAggregator-0.01.tgz	POE-Component-RSSAggregator	0.01
Protect-1.00a.tar.gz	Protect	1.00a
Win32API-Registry-0.12.zip	Win32API-Registry	0.12
Win32API-Registry-0.13.zip	Win32API-Registry	0.13
Win32API-Registry-0.17.zip	Win32API-Registry	0.17
GFL-0.14a.tar.gz	GFL	0.14a
FtpIndex.tar.gz	FtpIndex	
Image-EXIF-0.04.tgz	Image-EXIF	0.04
Image-EXIF-0.98.tgz	Image-EXIF	0.98
Image-EXIF-0.98.1.tgz	Image-EXIF	0.98.1
Math-MatrixReal-Ext1-0-04.tgz	Math-MatrixReal-Ext1-0	04
ParseTemplate-0.37.zip	ParseTemplate	0.37
Class-AccessorMaker.tar.gz	Class-AccessorMaker	
DFA-Command-1.97.tgz	DFA-Command	1.97
DFA-Command-1.96.tgz	DFA-Command	1.96
DBD-Unify-0.08.tgz	DBD-Unify	0.08
Win32GUI-Beta.zip	Win32GUI-Beta	
Audio-Daemon-MPG123-0.9Beta.tar.gz	Audio-Daemon-MPG123	0.9Beta
Statistics-LSNoHistory-0.01.tgz	Statistics-LSNoHistory	0.01
new.spirit-2.1.19_beta.tar.gz	new.spirit	2.1.19_beta
IPC-LDT-2.02.tgz	IPC-LDT	2.02
IPC-LDT-2.03.tgz	IPC-LDT	2.03
Befunge-Interpreter-0.01b.tar.gz	Befunge-Interpreter	0.01b
Befunge-Interpreter-0.01c.tar.gz	Befunge-Interpreter	0.01c
Locale-US-1.00.tgz	Locale-US	1.00
Storm-Tracker_0.01.tar.gz	Storm-Tracker	0.01
Win32-Sound-0.45.zip	Win32-Sound	0.45
Geo-GNUPlot_0.01.tar.gz	Geo-GNUPlot	0.01
Ananke-SqlLink-1.0.tgz	Ananke-SqlLink	1.0
Ananke-SqlLink-1.1.2.tgz	Ananke-SqlLink	1.1.2
Tie_Counter-1.1.tgz	Tie_Counter	1.1
karma100.zip	karma	100
OS2-PrfDB-0_01.zip	OS2-PrfDB	0_01
tpog.tar.gz	tpog	
AKDB_Okewo_de_1.03.tar.gz	AKDB_Okewo_de	1.03
HTML-Template-Filter-Dreamweaver.tar.gz	HTML-Template-Filter-Dreamweaver	
Closures-1.2.tgz	Closures	1.2
Cyrus-Dump_All_Acl.tgz	Cyrus-Dump_All_Acl	
DBD-Ovrimos-0.12.tgz	DBD-Ovrimos	0.12
Math-Expr-LATEST.tar.gz	Math-Expr-LATEST	
apache.authnetldap.016.tar.gz	apache.authnetldap	.016
apache.authnetldap.018.tar.gz	apache.authnetldap	.018
PDL-RungeKutta-0.01.tgz	PDL-RungeKutta	0.01
DBD_SQLFLEX_8.2.tar.gz	DBD_SQLFLEX	8.2
Graphics-ColorObject-0.3a2.tar.gz	Graphics-ColorObject	0.3a2
Net-NISplusTied-0.02.tgz	Net-NISplusTied	0.02
WWW-Search-AlltheWeb-1.4+.tar.gz	WWW-Search-AlltheWeb	1.4+
Lingua-Wordnet0.65.tar.gz	Lingua-Wordnet	0.65
Lingua-Wordnet0.3.tar.gz	Lingua-Wordnet	0.3
Lingua-Wordnet0.5.tar.gz	Lingua-Wordnet	0.5
Similars-1.2.tgz	Similars	1.2
Similars-1.1.tgz	Similars	1.1
HTTP-Webdav-0.1.18-0.17.1.tar.gz	HTTP-Webdav	0.1.18-0.17.1
cmmtalk-ye2000.tar.gz	cmmtalk	ye2000
Number-Phone-DE-Mobile-1_1.tgz	Number-Phone-DE-Mobile	1_1
Math-MVPoly-0.8b.tar.gz	Math-MVPoly	0.8b
Finance-Currency-Convert-0.1.tgz	Finance-Currency-Convert	0.1
imcc.0.0.1.tar.gz	imcc	0.0.1
router-lg-0.98a.tar.gz	router-lg	0.98a
Net-RawIP-0.09c.tar.gz	Net-RawIP	0.09c
TUXEDO_1_00.zip	TUXEDO	1_00
NetIcecast-1.02.zip	NetIcecast	1.02
Memo32-1.00c.zip	Memo32	1.00c
Memo32-1.01.zip	Memo32	1.01
OS2-ExtAttr-0_01.zip	OS2-ExtAttr	0_01
Test-Version-0.02.zip	Test-Version	0.02
Test-Version-0.01.zip	Test-Version	0.01
Tk-TableMatrix0.3.tar.gz	Tk-TableMatrix	0.3
Tk-TableMatrix0.71.tar.gz	Tk-TableMatrix	0.71
SHA256-0.01b.tar.gz	SHA256	0.01b
DBIx-Hash2Table-1.03.tgz	DBIx-Hash2Table	1.03
VMS-Priv-1_31.zip	VMS-Priv	1_31
Cyrus-Quota.tgz	Cyrus-Quota	
makerpm0.300.tar.gz	makerpm	0.300
HPUX-FS_0.05.tar.gz	HPUX-FS	0.05
HTML-Macro-1.21.tgz	HTML-Macro	1.21
HTML-Macro-1.20.tgz	HTML-Macro	1.20
safecgiperl-b1.tar.gz	safecgiperl	b1
VMS-Mail-0_05.zip	VMS-Mail	0_05
CIPP-2.99.23_beta.tar.gz	CIPP	2.99.23_beta
DBIx-HTMLView-LATEST.tar.gz	DBIx-HTMLView-LATEST	
Tk-OS2-1.00.zip	Tk-OS2	1.00
diagnostics-1.2-alpha.tar.gz	diagnostics	1.2-alpha
Oak-Web-1.2-fix2.tar.gz	Oak-Web	1.2-fix2
Oak-Web-1.2-fix3.tar.gz	Oak-Web	1.2-fix3
Class-Member-1.2a.tar.gz	Class-Member	1.2a
CGI-Formalware-1.11.tgz	CGI-Formalware	1.11
CGI-Formalware-1.10.tgz	CGI-Formalware	1.10
Nums2Words-1.12.zip	Nums2Words	1.12
Apache-SessionX-2.00b3.tar.gz	Apache-SessionX	2.00b3
Apache-SessionX-2.00b5.tar.gz	Apache-SessionX	2.00b5
frogbak.tar.gz	frogbak	
WWW-Search-Excite-News-2.03+.tar.gz	WWW-Search-Excite-News	2.03+
HTML-Macro.1-15.tgz	HTML-Macro.1	15
HTML-Macro.1-13.tgz	HTML-Macro.1	13
HTML-Macro.1-18.tgz	HTML-Macro.1	18
Interval.0.03.tar.gz	Interval	0.03
Interval.0.02.tar.gz	Interval	0.02
Interval.0.01.tar.gz	Interval	0.01
Win32-TieRegistry-0.24.zip	Win32-TieRegistry	0.24
Win32-TieRegistry-0.22.zip	Win32-TieRegistry	0.22
Win32-TieRegistry-0.20.zip	Win32-TieRegistry	0.20
Time-SoFar-1.00.tgz	Time-SoFar	1.00
Brasil-Checar-CPF-1.01a.tar.gz	Brasil-Checar-CPF	1.01a
zfilter27.tar.gz	zfilter	27
zfilter28.tar.gz	zfilter	28
smtm_1.5.4.tar.gz	smtm	1.5.4
Tie-Registry-0.12.zip	Tie-Registry	0.12
p9p0.13.tar.gz	p9p	0.13
p9p0.16.tar.gz	p9p	0.16
Agent-3.01g.tar.gz	Agent	3.01g
OpenCA-Configuration-1.5.2a.tar.gz	OpenCA-Configuration	1.5.2a
DateTime-Format-Strptime-1.00.tgz	DateTime-Format-Strptime	1.00
DBIx-HTML-PopupRadio-1.06.tgz	DBIx-HTML-PopupRadio	1.06
DBIx-HTML-PopupRadio-1.07.tgz	DBIx-HTML-PopupRadio	1.07
DateTime-Event-Easter-1.00.02.tgz	DateTime-Event-Easter	1.00.02
TSM_0.60.tar.gz	TSM	0.60
speech_pm_1.0.tgz	speech_pm	1.0
Net-FTPServer-XferLog-1.1.tgz	Net-FTPServer-XferLog	1.1
ExtUtils-DynaGlue-1.00a.tar.gz	ExtUtils-DynaGlue	1.00a
OpenCA-REQ-0.7.31a.tar.gz	OpenCA-REQ	0.7.31a
MIDI-Trans-0.15.zip	MIDI-Trans	0.15
QNA_0.5.tar.gz	QNA	0.5
makehomeidx1.1.1.tar.gz	makehomeidx	1.1.1
DBI-Simple-0.01.tgz	DBI-Simple	0.01
MHonArc2.6.0.tar.gz	MHonArc	2.6.0
Filesys-Ext2-0.20.tgz	Filesys-Ext2	0.20
Class-Tangram-1.12a.tar.gz	Class-Tangram	1.12a
Gtk2-1.00rc1.tar.gz	Gtk2	1.00rc1
Gtk2-1.00rc2.tar.gz	Gtk2	1.00rc2
Win32-MSAgent-0.01.tgz	Win32-MSAgent	0.01
Win32-MSAgent-0.02.tgz	Win32-MSAgent	0.02
Win32-MSAgent-0.03.tgz	Win32-MSAgent	0.03
Lingua-ZH-HanConvert-0.12.tgz	Lingua-ZH-HanConvert	0.12
Lingua-ZH-HanConvert-0.10.tgz	Lingua-ZH-HanConvert	0.10
Lingua-ZH-HanConvert-0.01.tgz	Lingua-ZH-HanConvert	0.01
vms-icc-0_02.zip	vms-icc	0_02
Getopt-Simple-1.46.tgz	Getopt-Simple	1.46
Getopt-Simple-1.45.tgz	Getopt-Simple	1.45
Unicode-Transliterate.0.3.tgz	Unicode-Transliterate	0.3
Parallel-Pvm-1.3.0.tgz	Parallel-Pvm	1.3.0
Convert-Cyr.tar.gz	Convert-Cyr	
cvswebedit-v2.0b1.tar.gz	cvswebedit	v2.0b1
OpenCA-X509-0.9.6a.tar.gz	OpenCA-X509	0.9.6a
perl5.004_02.tar.gz	perl	5.004_02
perl-5.8.1-RC2.tar.gz	perl	5.8.1-RC2	1
man2html3.0.1.tar.gz	man2html	3.0.1
Mac-AppleEvents-Simple-1.02.tgz	Mac-AppleEvents-Simple	1.02
Text-Typoifier-0.04a.tar.gz	Text-Typoifier	0.04a
Graphics-MNG-0.04.zip	Graphics-MNG	0.04
Des-perl-a1.tar.gz	Des-perl	a1
Smil_pm_0_45.tgz	Smil_pm	0_45
Smil_pm_0_62.tgz	Smil_pm	0_62
Smil_pm_0_50.tgz	Smil_pm	0_50
vms-misc-1_01.zip	vms-misc	1_01
perl-vgalib-0.4.tgz	perl-vgalib	0.4
perl-info.5.004_1.tar.gz	perl-info	5.004_1	1
X11-Motif-1.1b3.tar.gz	X11-Motif	1.1b3
IO-Pager-0.03.tgz	IO-Pager	0.03
IO-Pager-0.05.tgz	IO-Pager	0.05
ARSperl-1.74.tgz	ARSperl	1.74
Include-1.02a.tar.gz	Include	1.02a
SOAP-MIME-0.55-4.tar.gz	SOAP-MIME	0.55-4
SOAP-MIME-0.55-5.tar.gz	SOAP-MIME	0.55-5
DBIx-BabelKit-1.07.tgz	DBIx-BabelKit	1.07
DBIx-BabelKit-1.06.tgz	DBIx-BabelKit	1.06
CGI-Echo-1.03.tgz	CGI-Echo	1.03
WWW-Search-ZDNet-2.02+.tar.gz	WWW-Search-ZDNet	2.02+
Getopt-ArgvFile-1.02.tgz	Getopt-ArgvFile	1.02
Getopt-ArgvFile-1.06.tgz	Getopt-ArgvFile	1.06
CONFIG-V0.99.11.tar.gz	CONFIG	V0.99.11
weblint++-1.14.tar.gz	weblint	++-1.14
weblint-1.020.zip	weblint	1.020
Match-Any_0.01.tar.gz	Match-Any	0.01
Embperl-2.0b9.tar.gz	Embperl	2.0b9
Embperl-2.0b7.tar.gz	Embperl	2.0b7
XML-RSSLite-0.11.tgz	XML-RSSLite	0.11
txt2slides.tar.gz	txt2slides	
extensible_report_generator_1.13.zip	extensible_report_generator	1.13
Class-ObjectTemplate-0.4.tar.gz	Class-ObjectTemplate	0.4
ObjStore-1.55.tar.gz	ObjStore	1.55
HTML-PrettyPrinter-0.03.tar.gz	HTML-PrettyPrinter	0.03
Apache-MIMEMapper-0.10.tar.gz	Apache-MIMEMapper	0.10
Bio-MAGE-2002-09-02_0.tar.gz	Bio-MAGE-2002-09	02_0
Geo-IP-PurePerl-1.10.tar.gz	Geo-IP-PurePerl	1.10
Tie-SentientHash-0.53.tar.gz	Tie-SentientHash	0.53
VCS-Lite-0.04.tar.gz	VCS-Lite	0.04
PDF-1.04.tar.gz	PDF	1.04
DB_File-SV18x-kit-0.06.tar.gz	DB_File-SV18x-kit	0.06
Regexp-Any-0.7.tar.gz	Regexp-Any	0.7
Dimedis-Sql-0.30.tar.gz	Dimedis-Sql	0.30
Weaving-Tablet-0.8.2.tar.gz	Weaving-Tablet	0.8.2
Acme-Pr0n-0.03.tar.gz	Acme-Pr0n	0.03
HookPrePostCall-1.2.tar.gz	HookPrePostCall	1.2
RTSP-Lite-0.1.tar.gz	RTSP-Lite	0.1
Apache-Emulator-0.02.tar.gz	Apache-Emulator	0.02
Net-SMTP-Multipart-1.4.tar.gz	Net-SMTP-Multipart	1.4
Set-CheckList-1.00.tar.gz	Set-CheckList	1.00
PDL-Graphics-PLplotOO-Map-0.01.tar.gz	PDL-Graphics-PLplotOO-Map	0.01
Tk-DateEntry-1.36.tar.gz	Tk-DateEntry	1.36
Apache-Emulator-0.02.tar.gz	Apache-Emulator	0.02
Net-SMTP-Multipart-1.4.tar.gz	Net-SMTP-Multipart	1.4
Set-CheckList-1.00.tar.gz	Set-CheckList	1.00
Bioinf_V2.0.tar.gz	Bioinf	V2.0
Geanfammer_V3.4.tar.gz	Geanfammer	V3.4
CONFIG-V0.99.11.tar.gz	CONFIG	V0.99.11
collate/Unicode-Collate-Standard-V3_1_1-0.1.tar.gz	Unicode-Collate-Standard-V3_1_1	0.1
P4-1.1733.tar.gz	P4	1.1733
Foo-Bar-undef.tar.gz	Foo-Bar
Foo-Bar-undef-1.0.tar.gz	Foo-Bar-undef	1.0
Net-Vypress-Chat-0.72.1.tar.bz2	Net-Vypress-Chat	0.72.1
Gopher-Server-0.1.1.tar.bz2	Gopher-Server	0.1.1
HTML-Template-Dumper-0.1.tar.bz2	HTML-Template-Dumper	0.1
Task-Deprecations5_14-1.00.tar.gz	Task-Deprecations5_14	1.00
Foo-Bar-1.0௧.tar.gz	Foo-Bar-1.0௧
Foo-Bar-1.0-TRIAL.tar.gz	Foo-Bar	1.0-TRIAL	1
Foo-Bar-1.0-TRIAL2.tar.gz	Foo-Bar	1.0-TRIAL2	1
