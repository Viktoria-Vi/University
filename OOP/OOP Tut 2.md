jshell> int countLength(int eingabe){
   ...>     if(eingabe == 0){
   ...>         return 1;}
   ...>     int length = 0;
   ...>     while(eingabe != 0){
   ...>         eingabe /= 10;
   ...>         length += 1;
   ...>     }
   ...>     return length;
   ...> }
|  created method countLength(int)

jshell> countLength(121) == 3;
$2 ==> true

jshell> countLength(0) == 1;
$3 ==> true

jshell> counthLength(-69) == 2;
|  Error:
|  cannot find symbol
|    symbol:   method counthLength(int)
|  counthLength(-69) == 2;
|  ^----------^

jshell> countLength(-69) == 2;
$4 ==> true

jshell>



3301120 zuslassung nachfragen 
