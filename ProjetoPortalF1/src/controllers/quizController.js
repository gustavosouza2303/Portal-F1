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

module.exports = {
    listar
};