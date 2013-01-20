#!/usr/bin/env perl

use Mojolicious::Lite;

get '/' => {text => "This is David Mertens' website. More will come soon, I assure you."};

app->start;
