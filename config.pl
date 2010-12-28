use Chiffon::Core;
use ThreeS::Container;
use Path::Class;

my $home = container('home');
return +{
    common => {
        app_name => 'three_s',
        view => {
            'Chiffon::View::Xslate' => +{
                path   => $home->file('assets/template')->stringify,
                cache     => 1,
                cache_dir => '/tmp/three_s',
                syntax    => 'Kolon',
                type      => 'html',
                suffix    => '.html',
            },
        },
        datasource => +{
            master => +{
                dsn => 'dbi:mysql:three_s;user=root',
            },
        },
        hostname => +{
        },
        plugins => +{
        },
    },
    dev     => {
        datasource => +{
            master => +{
                dsn => 'dbi:mysql:study_dev;user=root',
            },
        },
    },
    production => {
        datasource => +{
            master => +{
                dsn => 'dbi:mysql:three_s;user=root',
            },
        },
    },
};


