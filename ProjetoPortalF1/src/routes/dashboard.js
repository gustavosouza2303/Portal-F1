var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.get("/desempenho/:idUsuario", function (req, res) {
    dashboardController.buscarDesempenho(req, res);
});

router.get("/quizzes/:idUsuario", function (req, res) {
    dashboardController.contarQuizzes(req, res);
});

router.get("/tentativas/:idUsuario", function (req, res) {
    dashboardController.listarTentativas(req, res);
});

module.exports = router;