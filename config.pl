use Chiffon::Core;
use ThreeS::Container;
use Path::Class;

my $home = container('home');
return +{
    common => {
        app_name    => 'three_s',
        title       => 'ThreeS - The web slide system',
        copyright   => '2010 Senchan all rights reserved',
        global_navi => [
            {
                title      => 'Top',
                link       => '/',
                controller => 'Root'
            },
            {
                title      => 'SlideShow',
                link       => '/slide/',
                controller => 'Slide'
            },
        ],
        view => {
            'Chiffon::View::Xslate' => +{
                path      => $home->file('assets/template')->stringify,
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
        hostname => +{},
        plugins  => +{},
    },
    dev => {
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

