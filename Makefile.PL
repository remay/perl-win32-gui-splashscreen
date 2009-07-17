# Makefile.PL for Win32::GUI::SplashScreen
# $Id: Makefile.PL,v 1.2 2005/07/17 23:33:37 Robert May Exp $

use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Win32::GUI::SplashScreen',
    AUTHOR              => 'Robert May <rmay@popeslane.clara.co.uk>',
    VERSION_FROM        => 'lib\Win32\GUI\SplashScreen.pm',
    ABSTRACT_FROM       => 'lib\Win32\GUI\SplashScreen.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Win32::GUI'           => 1.02,
#       'Win32::GUI::DIBitmap' => 0,   # not a dependancy until it's in ActiveState's PPM repository
    },
    dist                => { COMPRESS => 'gzip --best', SUFFIX => 'gz', ZIP => 'ZIP', ZIPFLAGS => '-r9' },
    clean               => { FILES => 'Win32-GUI-SplashScreen-*' },
    macro               => { PPMDISTVNAME => '$(DISTVNAME)-PPM' },
);

# Add a new rule to make a ppm distribution
sub MY::postamble {
    return <<'MAKE_PPM';
ppm:
  make_ppm --arch=""
  $(RM_RF) $(PPMDISTVNAME)
	$(MKPATH) $(PPMDISTVNAME)
	$(CP) README-PPM.TXT $(PPMDISTVNAME)
	$(MV) $(DISTNAME).tar.gz $(PPMDISTVNAME)
	$(MV) $(DISTNAME).ppd $(PPMDISTVNAME)
	$(RM_F) $(PPMDISTVNAME).zip
	$(ZIP) $(ZIPFLAGS) $(PPMDISTVNAME).zip $(PPMDISTVNAME)
	$(RM_RF) $(PPMDISTVNAME)
  $(RM_F) pod2htmd.tmp pod2htmi.tmp

MAKE_PPM
}
