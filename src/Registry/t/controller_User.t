use strict;
use warnings;
use Test::More;

BEGIN {
  use FindBin qw/$Bin/;
  use lib "$Bin/../lib";
  $ENV{CATALYST_CONFIG} = "$Bin/../../registry_testing.conf";
}

use Catalyst::Test 'Registry';
use Registry::Controller::User;

ok( request('/user')->is_success, 'Request should succeed' );
done_testing();
