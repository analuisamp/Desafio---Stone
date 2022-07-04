const text = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc";

console.log("A quantidade de caracteres no texto é: " + text.length);

/*
Para descartar os espacos, a criacao de um for para percorrer toda a string e 
caso a posicao do i for diferente do espaco em branco, contabilizar 1
*/
let result = 0;

for(let i = text.length-1; i>=0; i--){
    if(text[i] != " "){
        result++;
    }
}

console.log(`A quantidade de caracteres no texto, descartando os espaços, é: ${result}`);

//criacao do objeto ocorrencias
const ocorrencias = {};

/*
como a linguagem JS eh case sensitive, seria necessario a mudanca da string ou para lowerCase ou upperCase 
para as letras nao serem contabilizadas 2 vezes (como maiusculas e minusculas)
*/
const lowerCaseText = text.toLowerCase();

//O for vai percorrer toda a string, indentificar a ocorrencia de um caracter e contabilizar as vezes que este aparece
for (let i = 0; i < lowerCaseText.length; i++) {
    if (ocorrencias[lowerCaseText[i]]) { //Se tiver o caracter no objeto ocorrencias, incrementa 1, se não, vai para o else
        ocorrencias[lowerCaseText[i]]++;
    } else {
        ocorrencias[lowerCaseText[i]] = 1;
    }
};

/*
*Como o .sort só ordena os elementos de um array, é necessário transformar o objeto ocorrencias em um array
*Utilizando o método Object.entries, vai retornar uma matriz com o [caracter, quant. de ocorrencias]
*São necessários os dois parâmetros (a e b) pra representarem os dois elementos da matriz
*Os parâmetros organizados dessa forma vão classificar os números em ordem crescente
*/

const output = Object.entries(ocorrencias).sort((a, b) => b[1] - a[1]);

test.forEach(e => {
    console.log(`${e[0]} tem ${e[1]} ocorrências`);
});

