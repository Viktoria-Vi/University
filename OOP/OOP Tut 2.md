jshell> void countLength(int a){
   ...>         int i = 0;
   ...>     while((a/10) > 0){
   ...>         a = a / 10;
   ...>         i++;
   ...>     }
   ...>     i++;
   ...>     System.out.println(i);
   ...> }