var database = require("../database/config");

function buscarDesempenho(idUsuario) {
  var sql = `
        SELECT acertos, erros 
        FROM resultadoQuiz
        WHERE fkUsuario = ${idUsuario}
        ORDER BY id DESC LIMIT 1;
    `;
  return database.executar(sql);
}

function contarQuizzes(idUsuario) {
  var sql = `
        SELECT COUNT(*) as totalQuizzes
        FROM resultadoQuiz
        WHERE fkUsuario = ${idUsuario};
    `;
  return database.executar(sql);
}

function listarTentativas(idUsuario) {
  var sql = `
        SELECT id, acertos, erros, dataHora
        FROM resultadoQuiz
        WHERE fkUsuario = ${idUsuario}
        ORDER BY id DESC
        LIMIT 10;
    `;
  return database.executar(sql);
}

module.exports = {
  buscarDesempenho,
  contarQuizzes,
  listarTentativas,
};
