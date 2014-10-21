use strict;
use warnings;
use Time::Local qw(timelocal);
use Exporter ();
use File::Temp 0.11 ();
use File::Temp 0.12 ();
use 5.008001;
use parent ("Fcntl", 'FileHandle');
use parent qw/Env English/;
use parent "PerlIO";
use parent 'Opcode';
use base ("Carp", 'Cwd');
use base qw/Getopt::Long Getopt::Std/;
use base "Pod::Checker";
use base 'Pod::Find';
require TieHash;
require Text::Tabs;
require "Text/Soundex.pm"; # <= should be ignored

1;
