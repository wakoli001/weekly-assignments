#include <stdio.h>

int main(){
    int pr0= 0, pr1= 1;
    int newf;

    printf("%d \n%d \n",pr0, pr1);
    for(int fibo = 0;fibo <18;fibo++){
        newf=pr0 +pr1;
        pr0= pr1;
        pr1= newf;
        printf("%d\n",newf);
    }
    return 0;
}
