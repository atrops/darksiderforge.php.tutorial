use 5.012;
#For help see HOWTO file(GERMAN)
my $_dkw="/var/www/dokuwiki-2012-10-13/";
my $_dkwGit="/home/leon/Arbeitsfläche/dokuwiki_PAGES/";
if(system("test -d ".$_dkw) == 0)
{
	print "dokuwiki directory found.\n";
}
else{
	print "Dokuwiki directory not found! Exit";
	exit(1);
}
if(system("test -d ".$_dkwGit)==0)
{
	print "Git Repo found.\n";
}
else{
	print "Git Repo not found..exit";
	exit(1);
}
system("sudo chmod 777 -R ".$dkwGit."dokuwiki_PAGES/");
system("cp -R -u -v ".$_dkwGit."media/ ".$_dkw."data/media/");
system("cp -R -u -v ".$_dkwGit."media_meta/ ".$_dkw."data/media_meta/");
system("cp -R -u -v ".$_dkwGit."php/ ".$_dkw."data/pages/php/");
system("cp -u -v ".$_dkwGit."php.txt ".$_dkw."data/pages/php.txt");
