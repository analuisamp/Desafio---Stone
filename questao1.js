var string = prompt("Digite uma palavra: ")
var output = " "

//criacao de um for que vai percorrer o final da string ate o comeco e printar casa caracter
    for(var i = string.length-1; i>=0; i--){
        //a cada interacao a saida recebe string na posicao i
        output += string[i]
    }

    console.log(`A palavra ${string} ao contrário corresponde à: ${output}`)



