programa {
	funcao inicio() {
	    inteiro CPF[]={7,7,7,7,7,7,7,7,7,7,7}
	    inteiro ccVerifica1[]={10,9,8,7,6,5,4,3,2,1}
	    inteiro ccVerifica2[]={11,10,9,8,7,6,5,4,3,2}
	    inteiro digito1=0
	    inteiro digito2=0
	    inteiro resultado[]={0,0,0,0,0,0,0,0,0,0,0}
	    inteiro soma=0
	    inteiro resto=0
	    
	    
		para (inteiro i=0; i<=8; i++){
		    soma+=CPF[i]*ccVerifica1[i]	    
		}
		resto=soma%11
		se (resto<2){
		    digito1=0
		}senao{
		    digito1=11-resto
		}
		escreva (digito1)
		
		
		soma=0
		para (inteiro i=0; i<=9; i++){
		    soma+=CPF[i]*ccVerifica2[i]	    
		}
		resto=soma%11
		se (resto<2){
		    digito2=0
		}senao{
		    digito2=11-resto
		}
		escreva (digito2 +"\n")
		se (digito1==CPF[9] e digito2==CPF[10]){
		   escreva ("CPF valido!") 
		}senao{
		    escreva ("CPF invalido!") 
		}
	}
}
