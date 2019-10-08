%{
    #include <stdio.h>

%}

numero -?[0-9]+
palabra [a-zA-Z]+

%%
"Salir"     {   printf("Numeros: %d,numero");
				printf("Palabras: %d,palabra");
                return 0;
            }
{palabra}   {printf("Se leyo palabra: %s\n",yytext);
            
            }
{numero}    {printf("Se leyo un numero: %d\n",atoi(yytext));
            
            }
%%
int main(){
    printf("Escriba un texto: ");
    yylex();
}
