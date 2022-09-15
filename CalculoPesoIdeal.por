/*Exercício: 
Com base na altura de uma pessoa, construa um algoritmo que calcule 
seu peso ideal, usando a seguinte fórmula: (72.7 x altura) – 58.
Fonte: https://www.youtube.com/watch?v=ZTONYUDebgA&list=PLWinCsaFzrrEjo5QqWNRNVJnZNNjIrU3w&index=8&ab_channel=RodrigoSilva
Créditos: Prof.Rodrigo Silva.*/

programa {
    real pesoCalculo=72.7
    real pesoIdeal=0.0
    funcao real peso(real altura){
        pesoIdeal=pesoCalculo*altura-58
        retorne pesoIdeal
    }
    
	funcao inicio() {
	    real altura=0.0
	    escreva("\nQual a sua altura?")
	    leia(altura)
	    peso(altura)
		escreva ("O seu peso ideal é:\n"+pesoIdeal+"Kg")
	}
}
