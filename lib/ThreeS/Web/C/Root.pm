package  ThreeS::Web::C::Root;
use Chiffon::Core;
use Chiffon::Web::Controller;
use ThreeS::Container;

sub do_index {
    my ( $class, $c ) = @_;
    $c->stash->{studies} = [
        {
            id    =>       1,
            guid  => 'aaaaa',
            title => 'title',
            memo  => 'memomemo',
            name  => 'Nishibayashi Takuji',
        },
        {
            id    =>       1,
            guid  => 'aaaaa',
            title => 'title',
            memo  => 'memomemo',
            name  => 'Nishibayashi Takuji',
        },
    ];
}

1;

