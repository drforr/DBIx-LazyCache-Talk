package Demo::Schema::Result::Item;

use base 'DBIx::Schema::Result';

__PACKAGE__->table( 'Item' );

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
  price => {
    data_type   => 'numeric',
    is_nullable => 1
  },
  quantity => {
    data_type   => 'integer',
    is_nullable => 1
  },
  project_id    => {
    data_type   => 'integer',
    is_nullable => 0,
    is_readonly => 1
  },
  profit_margin   => {
    data_type   => 'numeric',
    is_nullable => 1
  },
);

1;
