package DBIx::LazyCache::Talk;
use Dancer2;
use Dancer2::Plugin::DBIC;

our $VERSION = '0.1';

get '/' => sub {
    template 'index' => {
        title => 'DBIx::LazyCache::Talk'
    };
};

get '/project/' => sub {
use YAML;warn Dump(resultset('Item')->all);
    template 'project/index.tt' => {
	projects => [
	    { id => 1,
	      name => 'Widgets-r-us',
	      wholesale_price => 25.00,
	      retail_price    => 34.99,
	      profit_margin   => 0.05
            }
	]
    };
};

#get '/item/' => sub {
#    template 'project/index.tt' => { };
#};

true;
