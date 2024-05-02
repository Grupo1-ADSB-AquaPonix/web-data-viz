function validaLogin() {
    var email = document.getElementById('input_email').value;
    var senha = document.getElementById('input_senha').value;

    if(email.indexOf('@') == -1 || email.indexOf(".") == -1 || senha.length < 6){
        alert('Email ou senha incorretos')
    }
    else {
        window.location.href = ('../dashboard/painel.html')
    }
    
}