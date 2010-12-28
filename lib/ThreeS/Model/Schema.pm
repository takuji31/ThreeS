package  ThreeS::Model::Schema;
use DBIx::Skinny::Schema;
use DBIx::Skinny::InflateColumn::DateTime::Auto;
use Data::UUID;
use Digest::SHA qw/sha256_hex/;

sub set_guid {
    my $data = shift;
    $data->{guid} = Data::UUID->new->create_str;
}

sub hash_password {
    my $data = shift;
    if(defined $data->{password} && !ref($data) ){
        $data->{password} = sha256_hex($data->{password});
    }
}

install_table slide => schema {
    pk qw/id/;
    columns qw/id guid study_id sort_order title body status created_at updated_at/;
    trigger pre_insert => &set_guid;
};

install_table study => schema {
    pk qw/id/;
    columns qw/id guid user_id title memo status announce_at created_at updated_at/;
    trigger pre_insert => &set_guid;
};

install_table user => schema {
    pk qw/id/;
    columns qw/id guid login_id password name status created_at updated_at/;
    trigger pre_insert => &set_guid;
    trigger pre_insert => &hash_password;
    trigger pre_update => &hash_password;
};

1;
