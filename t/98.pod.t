#!perl -wT
# Syntax check the POD documentation
# $Id: 98.pod.t,v 1.1.1.1 2005/07/17 21:16:32 Robert May Exp $
use strict;
use warnings;

use Test::More;
eval "use Test::Pod 1.14";
plan skip_all => "Test::Pod 1.14 required for testing POD" if $@;
all_pod_files_ok();
