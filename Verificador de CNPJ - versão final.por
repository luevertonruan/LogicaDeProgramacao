programa {
    inclua biblioteca Util-->u
    funcao inteiro verificador (inteiro CNPJ[]/*,inteiro digitoVerificador,inteiro limite*/,inteiro multiplicador){
        inteiro soma=0
        /*inteiro multiplicador2=9
        Números verificadores Digito1 = 5,4,3,2,9,8,7,6
        Números verificadores Digito2 = 6,
        inteiro multiplicador[]={9,8,7,6,5,4,3,2}
        inteiro multiplicador2[]={9,8,7,6,5,4,3,2}*/
        inteiro limite=2
        
        //laço pra calcular os digitos base do CNPJ
        se(multiplicador==6){
            limite=1
        }
        para(inteiro i=0; i<u.numero_elementos(CNPJ)-limite; i++){
                soma+=CNPJ[i]*multiplicador
                multiplicador-=1
                se(multiplicador<2){
                    multiplicador=9
                }
                
            }
            
        //laço pra calcular os próximos 8 digitos base do CNPJ
        /*se(digitoVerificador==1){
        para(inteiro i=4; i<u.numero_elementos(CNPJ)-2; i++){
            soma+=CNPJ[i]*multiplicador2 //*multiplicador2[i]
            multiplicador2-=1
            }
        }senao{
        para(inteiro i=5; i<u.numero_elementos(CNPJ)-1; i++){
            soma+=CNPJ[i]*multiplicador2 //*multiplicador2[i]
            multiplicador2-=1
            }
        }*/
        
        inteiro restoDivisao=(soma)%11
        inteiro digito=0
        se (restoDivisao>=2){
            digito=11-restoDivisao
        }
        /*Teste valor digito*/
        retorne digito
        
        /*Teste valor restoDivisao
        retorne restoDivisao*/
        }
    
    
    
	funcao inicio() {
	    inteiro CNPJ[]={8,2,3,2,7,9,0,8,0,0,0,1,7,9}
	    
	    //verificador(CNPJ, limite, multiplicador)
		inteiro digito1=verificador(CNPJ,/*1,2,*/5)
		inteiro digito2=verificador(CNPJ,/*2,1,*/6)
		
		/*Teste valor digitos e CNPJ[12 e 13]_________
		escreva(digito2+"\n")
		escreva (CNPJ[13]+"\n")
		escreva(digito1+"\n")
		escreva (CNPJ[12]+"\n")*/
		
		se (/**/CNPJ[12]==digito1 e CNPJ[13]==digito2){
		    escreva("CNPJ válido!")
		}senao{
		    escreva("CNPJ inválido!")
		}
	    
	}
    
}