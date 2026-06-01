const dashboardModel = require("../models/dashboardModel");

function buscarDesempenho(req, res) {
    var idUsuario = req.body.idUsuario;

    dashboardModel.buscarDesempenho(idUsuario)
        .then(resultado => res.json(resultado))
        .catch(erro => res.status(500).json(erro));
}

function contarQuizzes(req, res) {
    var idUsuario = req.body.idUsuario;

    dashboardModel.contarQuizzes(idUsuario)
        .then(resultado => res.json(resultado))
        .catch(erro => res.status(500).json(erro));
}

function listarTentativas(req, res) {
    var idUsuario = req.body.idUsuario;

    dashboardModel.listarTentativas(idUsuario)
        .then(resultado => res.json(resultado))
        .catch(erro => res.status(500).json(erro));
}

module.exports = {
    buscarDesempenho,
    contarQuizzes,
    listarTentativas
};