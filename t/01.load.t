#!perl -wT
# Check that the module loads stand-alone
# $Id: 01.load.t,v 1.1.1.1 2005/07/17 21:16:32 Robert May Exp $
use strict;
use warnings;

use Test::More tests => 1;

BEGIN {
use_ok( 'Win32::GUI::SplashScreen' );
}

diag( "Testing Win32::GUI::SplashScreen $Win32::GUI::SplashScreen::VERSION" );
