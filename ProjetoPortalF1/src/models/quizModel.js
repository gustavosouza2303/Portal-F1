var database = require("../database/config");

function listarPerguntas() {
    var instrucapSql = `SELECT * FROM quiz;`
    // var instrucapSql = `SELECT * FROM quiz WHERE id = ${idAleatorio};`
    return database.executar(instrucapSql);
}


function salvarResultado(idUsuario, acertos, erros) {
    var instrucaoSql = `
        INSERT INTO resultadoQuiz (fkUsuario, acertos, erros)
        VALUES (${idUsuario}, ${acertos}, ${erros});
    `;
    return database.executar(instrucaoSql);
}

module.exports = {
    listarPerguntas,
    salvarResultado
};