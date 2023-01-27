#include<stdio.h>

/* Lors des appels recursifs,
   value ne prend pas la valeur 1 dans bart ni 0 dans homer...

 */

int homer(int);

int bart(int value){
  /*if (value==1) return 1;*/
  if (value<=1) return 1; /* correction */
  return homer(value-2)+1;
}

int homer(int value){
  /*if (value==0) return 1;*/
  if (value<=0) return 1; /* correction */
  return bart(value-1)+3;
}


int main(){
  homer(10);
}
