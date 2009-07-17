#!perl -wT
# Check that the module has the public methods that we are expecting
# $Id: 02.methods.t,v 1.1.1.1 2005/07/17 21:16:32 Robert May Exp $
use strict;
use warnings;

use Test::More tests => 1;

use Win32::GUI::SplashScreen;

# Show, Done
can_ok('Win32::GUI::SplashScreen', qw(Show Done) );
