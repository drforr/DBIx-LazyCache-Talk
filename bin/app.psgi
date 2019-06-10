#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use DBIx::LazyCache::Talk;

DBIx::LazyCache::Talk->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use DBIx::LazyCache::Talk;
use Plack::Builder;

builder {
    enable 'Deflater';
    DBIx::LazyCache::Talk->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use DBIx::LazyCache::Talk;
use DBIx::LazyCache::Talk_admin;

use Plack::Builder;

builder {
    mount '/'      => DBIx::LazyCache::Talk->to_app;
    mount '/admin'      => DBIx::LazyCache::Talk_admin->to_app;
}

=end comment

=cut

