#!perl

use 5.00800;

use strict;
use warnings;

use File::Spec;
use Test::More tests => 3;

our $VERSION = '1.4.0';

my $check_rbl = File::Spec->catfile(qw(blib script check_rbl));

require_ok($check_rbl);

is( validate('127.0.0.1'), '127.0.0.1', 'numeric localhost' );
is( validate('localhost'), '127.0.0.1', 'localhost' );

1;
