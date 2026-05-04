var database = require("../database/config");

function listarPerguntas() {
    var instrucapSql = `SELECT * FROM quiz;`
    // var instrucapSql = `SELECT * FROM quiz WHERE id = ${idAleatorio};`
    return database.executar(instrucapSql);
}

module.exports = {
    listarPerguntas
};