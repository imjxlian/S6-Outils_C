#include<stdio.h>
#include<stdlib.h>

void randstack(int i){
  int j=random();
  if (i>0)
    randstack(i-1);
}


int printArray(int *value){
  /* int i; */
  int i=0;  /* correction */
  while(value[i]!=-1){
    printf("%d ",value[i]);
    i+=1;
  }
  return 0; /* correction */
}

int main(){
  int values[]={0,1,2,3,4,5,-1};
  randstack(100);
  printArray(values);
  return EXIT_SUCCESS;
}
