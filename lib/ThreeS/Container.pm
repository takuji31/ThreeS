package  ThreeS::Container;
use Chiffon::Core;
use Chiffon::Container -base;
use ThreeS::Model;

register 'db' => sub {
    my $class = shift;
    ThreeS::Model->new($class->get('conf')->{datasource}->{master});
};

1;

