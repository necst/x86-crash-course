#include <stdio.h>
#include <stdlib.h>

int main(){

 FILE  *f;
 f = fopen("/tmp/lol", "w");
 fwrite("Prova lollosa!",15, 1, f);
 fclose(f); 

}
