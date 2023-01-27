#include<stdio.h>
#include<stdlib.h>

struct Cell {
  int value;
  struct Cell *next;
};

struct Cell *newCell(int value){
  struct Cell *p=malloc(sizeof p);
  if (p==NULL) exit(2);
  p->value=value;
  p->next = NULL; /* correction */
  return p;
}

/* void sortInsert(struct Cell **head, struct Cell *cell){ */
struct Cell *sortInsert(struct Cell **head, struct Cell *cell){ /* correction */
  if (*head==NULL){
    *head=cell;
    /* return; */
    return cell; /* correction */
  }
  if ((*head)->value>=cell->value){
    cell->next = *head;
    *head = cell;
    /* return; */
    return cell; /* correction */
  }
  /* sortInsert(&((*head)->next),cell); */ 
  (*head)->next = sortInsert(&((*head)->next),cell); /* correction */
  return *head; /* correction */
}

void power2(struct Cell *list){
  if (list==NULL) return ;
  list->value = list->value * list->value;
  power2(list->next);
}

void freeList(struct Cell *list){
  if(list==NULL) return;
  /*free(list);*/
  freeList(list->next);
  free(list); /* correction */
}

void printList(struct Cell *list){
  if(list==NULL) printf("\n");
  else {
    printf("%d ",list->value);
    /* printList(list); */
    printList(list->next); /* correction */
  } 
}

int main(int argc, char **argv){
  /* struct Cell *list; */
  struct Cell *list = NULL; /* correction */
  int i,j;
  for( j=0;j<5;++j){    
    for(i=0;i<5;++i)
      sortInsert(&list,newCell(random()%23));  
    printList(list);
    power2(list);
    printList(list);
    freeList(list);
    list=NULL; /* correction */
  }
  return EXIT_SUCCESS;
}
