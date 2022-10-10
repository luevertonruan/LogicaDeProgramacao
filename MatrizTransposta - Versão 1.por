programa {//  nomeMatriz[l][c]...
    inteiro l, c, matriz[2][3]={{10,20,30},
                                {4 ,5 ,6 }}
    /* O resultado final esperado:
                     mTransposta[3][2]={{10,4},
	                                {20,5},
	                                {30,6}}*/
	funcao inicio(){
	        escreva("Matriz original:\n")
		    para(l=0;l<2;l++){
		      para (c=0;c<3;c++){
		        escreva(matriz[l][c]+" ")
		    }escreva("\n")
	    }se(l==2){
	        l=0
	        c=0
	        escreva("\nMatriz transposta:\n")
	        inteiro mTransposta[3][2]={{0,0},
	                                   {0,0},
	                                   {0,0}}
	        para(l=0;l<3;l++){
		      para (c=0;c<2;c++){
		          mTransposta[l][c]=matriz[c][l]
		        escreva(mTransposta[l][c]+" ")
	            }escreva("\n")
	    
	    	}
		
	    }
	}
}
