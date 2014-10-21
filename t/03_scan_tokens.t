#!perl

use strict;
use warnings;
use utf8;
use FindBin;
use File::Spec::Functions qw/catfile/;
use Compiler::Lexer;
use Perl::PrereqScanner::Lite;

use t::Util;
use Test::More;

my $lexer = Compiler::Lexer->new({verbose => 1});
my $tokens = $lexer->tokenize(slurp(catfile($FindBin::Bin, 'resources', 'foo.pl')));

my $scanner = Perl::PrereqScanner::Lite->new;

my $got = $scanner->scan_tokens($tokens);
prereqs_ok($got);

done_testing;

