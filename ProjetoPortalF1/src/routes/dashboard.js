var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.post("/desempenho", function (req, res) {
    dashboardController.buscarDesempenho(req, res);
});

router.post("/quizzes", function (req, res) {
    dashboardController.contarQuizzes(req, res);
});

router.post("/tentativas", function (req, res) {
    dashboardController.listarTentativas(req, res);
});

module.exports = router;