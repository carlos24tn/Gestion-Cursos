use lib qw(Server);
use DB;
use Data::Dump qw(dump);
use XML::Simple;
Connect();
Do("INSERT INTO tabla1 (descripcion) VALUES ('prueba')");
my $myquery = Query("SELECT * FROM tabla1");
dump($myquery);
print "\nfin";