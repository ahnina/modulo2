/* 
=======================
Declaração de variáveis
=======================
*/
var getResDiv = "#get";
var getDBResDiv = "#getDB";

/* Função que faz um requisição GET no nosso banco de dados */
function GETContato(){
    var url = "http://127.0.0.1:3001/sobre_mim";
    var resposta;

    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", url, false);
    xhttp.send();//A execução do script pára aqui até a requisição retornar do servidor

    resposta = JSON.parse(xhttp.responseText);
    $(getDBResDiv).append("<br /><br />" + JSON.stringify(resposta));
     //console.log(xhttp.responseText);
}