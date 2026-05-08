const quizModel = require("../models/quizModel");

function listar(req, res) {
    quizModel.listarPerguntas()
        .then(resultado => {
            res.json(resultado);
        })
        .catch(erro => {
            console.log(erro);
            res.status(500).json(erro);
        });
}


function salvarResultado(req, res) {
    var idUsuario = req.body.idUsuario;
    var acertos = req.body.acertos;
    var erros = req.body.erros;

    if (idUsuario == undefined || acertos == undefined || erros == undefined) {
        res.status(400).send("Dados incompletos!");
        return;
    }

    quizModel.salvarResultado(idUsuario, acertos, erros)
        .then(resultado => {
            res.json(resultado);
        })
        .catch(erro => {
            console.log(erro);
            res.status(500).json(erro.sqlMessage);
        });
}

module.exports = {
    listar,
    salvarResultado
};