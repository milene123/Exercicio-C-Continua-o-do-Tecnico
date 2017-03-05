#include<stdio.h>
#include<conio.h>

void consulta (int main, float sal);
main () {
     int mat;
     float sal;
     printf("digite a sua matricula: ");
     scanf("%d",& mat);
     printf("digite seu salario: ");
     scanf("%f",& sal);
     consulta(mat, sal);
     getch();
     }
     void consulta (int mat, float sal)
     {
          float result;
          if(mat==1012)
          {
                       result=sal+(sal*10)/100;
                       printf("voce e o gerente e seu salario atualizado e: %2.2f", result);
                       }
                       if(mat==1013)
          {
                       result=sal+(sal*20)/100;
                       printf("voce e o engenheiro e seu salario atualizado e: %2.2f", result);
                       }
                       if(mat==1014)
          {
                       result=sal+(sal*30)/100;
                       printf("voce e o tecnico e seu salario atualizado e: %2.2f", result);
                       }
                       
                       }
