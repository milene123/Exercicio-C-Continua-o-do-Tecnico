#include<stdio.h>
#include<conio.h>
   void cal (float media) ;

     main(){
            float n1,n2,n3,n4,media, soma=0;
         
            printf("digite o numero ");
            scanf("%f",&n1);
            printf("digite o numero: ");
            scanf("%f",&n2);
            printf("digite o numero: ");
            scanf("%f",&n3);
            printf("digite um numero");
            scanf("%f",&n4);
            soma=n1+n2+n3+n4;
            media=soma/4;
            cal(media);
            
     
           getch();
            }
            
      void cal (float media)      
      { 
if(media>=5)
            printf("aprovado com media %2.2f",media);
            else
            if(media<=5)
            printf("reprovado com media% 2.2f",media);
            }
