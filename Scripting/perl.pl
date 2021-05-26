#!/usr/bin/perl
use File::Find;

find(\&wanted, "/");

sub wanted {
	if($File::Find::name =~ /\.conf$/)
	{
		print "$File::Find::name\n";
	}
}