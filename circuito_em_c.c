#include <stdio.h>

int processamento(int a, int b, int op){
	switch(op){
		case 1: //NOT
			return !a;
		case 2: //NAND
			return !(!(a&b));
		case 3: //NORna
			return !(!(a|b));
		case 4: //AND
			return !(a&b);
		case 5: //OR
			return !(a|b);
		default:
			return -1;
	}
	
}

int main(){
	//testando na porta AND
	printf ("!(%d and %d) = %d\n",1,0,processamento(1,0,4));
	return 0;
}
