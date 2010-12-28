use strict;
use warnings;
use DBIx::Skinny::Schema::Loader qw/make_schema_at/;
print make_schema_at(
  'ThreeS::Model::Schema',
  {},
  [ 'dbi:mysql:study_dev;user=root', '', '' ]
);
