function validarSessao() {

    if (!sessionStorage.ID_USUARIO) {
        window.location.href = "./login.html";
        return;
    }
}

function limparSessao() {
    sessionStorage.clear();
    window.location.href = "./login.html";
}

