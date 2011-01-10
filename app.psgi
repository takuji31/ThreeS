use strict;
use warnings;
use ThreeS::Web;
use ThreeS::Container;
use Plack::Builder;

my $home = container('home');
builder {
    enable 'ReverseProxy';
    enable 'Static',
        path => qr{^/(img/|js/|css/|favicon\.ico)},
        root => $home->file('assets/htdocs')->stringify;
    enable 'StackTrace';
    enable 'Session';
    ThreeS::Web->app;
};

