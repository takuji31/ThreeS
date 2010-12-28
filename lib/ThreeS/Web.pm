package  ThreeS::Web;
use Chiffon::Core;
use Chiffon::View::Xslate;
use ThreeS::Web::Context;
use ThreeS::Web::Request;
use ThreeS::Web::Response;
use ThreeS::Web::Dispatcher;
use ThreeS::Container;
use parent qw/ Chiffon::Web /;

__PACKAGE__->used_modules({
    container  => 'ThreeS::Container',
    context    => 'ThreeS::Web::Context',
    request    => 'ThreeS::Web::Request',
    response   => 'ThreeS::Web::Response',
    dispatcher => 'ThreeS::Web::Dispatcher',
    view       => 'Chiffon::View::Xslate',
});

1;

