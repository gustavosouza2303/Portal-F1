function validarSessao() {
    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;

    var b_usuario = document.getElementById("b_usuario");

    if (email != null && nome != null) {
        if (b_usuario) {
            b_usuario.innerHTML = nome;
        }
    } else {
        window.location.href = "./home.html";
    }
}

function limparSessao() {
    sessionStorage.clear();
    window.location.href = "./login.html";
}

