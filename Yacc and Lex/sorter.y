%{
#include <stdio.h>
#include <string.h>
int count = 0;
int array[100000];

void yyerror(const char *str)
{
	fprintf(stderr,"error: %s\n",str);
}
%}
%union{
	int value;
}
%type <value> num
%token <value> NUMBER
%token COMMA OSQUAREBRAC ESQUAREBRAC MINUS

%%
list:
	OSQUAREBRAC numbers ESQUAREBRAC
	
numbers:
	  numbers COMMA num { array[count++] = $3; }
	| num { array[count++] = $1; }
	|
	
num: 
	NUMBER { $$ = $1; }
	| MINUS NUMBER { $$ = $2 * (-1); }
	
%%

main()
{
	while(1)
	{
		count = 0;
		yyparse();
		
		int i,n,newn,temp;
		n = count;
		do
		{
			newn = 0;
			for(i = 1; i <= n-1; i++)
			{
				if(array[i-1] > array[i])
				{
					temp = array[i];
					array[i] = array[i-1];
					array[i-1] = temp;
					newn = i;
				}
			}		
			n = newn;
		}while(n >= 1);
		
		printf("Sorted:[");
		for(i = 0; i < count; i++)
		{
			if(i == count - 1)
			{
				printf("%d", array[i]);
			}
			else
			{
				printf("%d,", array[i]);
			}
		}
		printf("]\n");
	}
	return 0;
}