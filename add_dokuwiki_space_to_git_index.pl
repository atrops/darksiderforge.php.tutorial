#!/usr/bin/env perl
use 5.012;
my $_;
my $err;
my $_dPDir="/var/www/dokuwiki-2012-10-13/data/pages/";#=DokuwikiPagesDirectory
my $_dPDirMedia="/var/www/dokuwiki-2012-10-13/data/media/";
my $_dpDirMediaMeta="/var/www/dokuwiki-2012-10-13/data/media_meta/";
my $_gitDir="/home/github/darksiderforge.php.tutorial/dokuwiki_PAGES/";#=Repository Directory
print "Please give the namespace that you want to add to index: ";
chomp($_ = <STDIN>);
$err=system("cp -R -u ".$_dPDir.$_." ".$_gitDir." ");
if($err==0)
{
	print "Pages are succefull copyed\n";
	$err=system("cp -R -u ".$_dPDirMedia.$_." ".$_gitDir."/media/ ");
	if($err==0)
	{
		print "Mediafiles copied succefully too\n";
		$err=system("cp -R -u ".$_dpDirMediaMeta.$_." ".$_gitDir."/media_meta/ ");
		if($err==0)
		{
			print "All copys succefull.\n";
		}
		else
		{
			print "Error Concurred";
		}
	}
	else
	{
		print "Error Concurred";
	}
}
else
{
	print "Error concurred: ".$err;
}