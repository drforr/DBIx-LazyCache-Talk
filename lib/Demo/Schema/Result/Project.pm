package Demo::Schema::Result::Project;

use base 'DBIx::Schema::Result';

__PACKAGE__->table( 'Project' );

__PACKAGE__->add_columns(
  id              => {
    data_type   => 'integer',
    is_nullable => 0,
    is_readonly => 1
  },
  name            => {
    data_type   => 'text',
    is_nullable => 0
  },
  wholesale_price => {
    data_type   => 'numeric',
    is_nullable => 1
  },
  retail_price    => {
    data_type   => 'numeric',
    is_nullable => 1
  },
  profit_margin   => {
    data_type   => 'numeric',
    is_nullable => 1
  },
);

1;
