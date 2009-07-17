#!perl -wT
# Check the POD covers all method calls:  ignore constants with form ABC_DEF()
# $Id: 99.pod-coverage.t,v 1.1.1.1 2005/07/17 21:16:32 Robert May Exp $
use strict;
use warnings;

use Test::More;
eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $@;
all_pod_coverage_ok();
