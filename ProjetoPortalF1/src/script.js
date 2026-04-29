function home() {
        window.location.href="./home.html";
    }

function categoria() {
        window.location.href="./categoria.html";
    }

function equipes() {
    window.location.href="./equipes.html";
}

function cadastrar() {
    // aguardar();

    //Recupere o valor da nova input pelo nome do id
    // Agora vá para o método fetch logo abaixo
    var nomeVar = ipt_login.value;
    var emailVar = ipt_email.value;
    var senhaVar = ipt_senha.value;
    var confirmacaoSenhaVar = ipt_confirmSenha.value;

    //validações 
    let tamanhoNome = nomeVar.length;
    let verificarEmail = emailVar.includes('@');
    let verificarSenha = senhaVar.length;


    // Verificando se há algum campo em branco ou inválido
    if (
      nomeVar == "" &&
      emailVar == "" &&
      senhaVar == "" &&
      confirmacaoSenhaVar == ""
    ) {
      divErro.innerHTML =
        "Todos os campos estão em branco!";

      finalizarAguardar();
      return false;
    } else if (tamanhoNome < 1) {
      divErro.innerHTML =
        "O campo <b>NOME</b> deve conter 1 ou mais caracteres!";

        finalizarAguardar();
      return false;
    } else if (!verificarEmail) {
      divErro.innerHTML =
        "O campo <b>EMAIL</b> deve conter o caracteres <b>@</b>";

        finalizarAguardar();
      return false;
    } else if (verificarSenha <= 6) {
        if (verificarSenha )
      divErro.innerHTML =
        "O campo <b>SENHA</b> deve conter pelo menos <br> <b>6 caracteres</b>";

        finalizarAguardar();
      return false;
    } else if (confirmacaoSenhaVar != senhaVar) {
      divErro.innerHTML =
        "O campo <b>CONFIRMAR SENHA</b> deve ser  <br> exatamente igual ao campo <b>SENHA</b>";

        finalizarAguardar();
      return false;
    } else {
      window.location.href="./login.html";
    }
}

function verificar() {
        let senha = ipt_senha.value;
        let forca = 0;
        let temLetra = senha.toLowerCase() != senha.toUpperCase();

            if (temLetra && senha != senha.toString().toUpperCase()) {
                forca++;
            }
    
            if (temLetra && senha != senha.toString().toLowerCase()) {
                forca++;
            }
            if (temLetra && senha.length >= 6) {
                forca++;
            }
    
            if (forca == 0) {
                divForcaSenha.innerHTML = `A senha está <b>insegura!</b>`
            } else if (forca == 1) {
                divForcaSenha.innerHTML = `A segurança da senha está <b>Fraca</b>`
            } else if (forca == 2) {
                divForcaSenha.innerHTML = `A segurança da senha está <b>Média!</b>`
            } else if (forca == 3) {
                divForcaSenha.innerHTML = `A segurança da senha está <b>Forte!</b>`
            } else {
                divForcaSenha.innerHTML = `Senha Inválida!`;
            }
 }

 function login() {
    window.location.href="./home.html"
 }