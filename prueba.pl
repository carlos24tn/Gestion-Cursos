use lib qw(Server);
use DB;
use Data::Dump qw(dump);
use XML::Simple;

DB::Connect();
DB::Do("BEGIN;");
DB::Do("INSERT INTO tabla1 (descripcion) VALUES ('prueba3')");
DB::Do("COMMIT;");
my $myquery = DB::Query("SELECT * FROM tabla1");
dump($myquery);