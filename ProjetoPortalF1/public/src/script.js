function home() {
        window.location.href="./home.html";
    }

function categoria() {
        window.location.href="./categoria.html";
    }

function equipes() {
    window.location.href="./equipes.html";
}

function quiz() {
    window.location.href = "./quiz.html"
}

function irQuiz() {
    window.location.href= "./perguntasQuiz.html"
}

function perfil() {
    window.location.href= "./dashboard.html"
}

function icones() {
    window.location.href= "./icones.html"
}

function login() {
    window.location.href= "./login.html"
}
 
 window.onload = function () {

    if (!sessionStorage.ID_USUARIO) {
        buttonLogin.style.display = "block";
        return;
    }
} 