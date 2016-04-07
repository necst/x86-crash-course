#include <stdio.h>


int  __attribute__((stdcall)) sum(int a, int b){
    return a+b;
}


int  main(int argc, char *argv[]){

    int a = 3;
    int b = 5;
    int c = 7;

    printf("%d + %d = %d\n",a,b, sum(a,b));

    printf("%d + %d = %d\n",c,b, sum(c,b));


}

