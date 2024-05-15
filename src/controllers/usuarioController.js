const usuarioModel = require('../models/usuarioModel');

const autenticar = (req, res) => {

    const login = req.body.emailUser;
    const senha = req.body.senhaUser;

    if(login.trim() == ""){
        res.status(400).send('Campo email vazio')
    } else if(senha.trim() == ""){
        res.status(400).send('Campo senha vazio')
    } else{
        
        if(login.indexOf("@") == -1){
            usuarioModel.autenticarEmpresa(login, senha).then((resposta) => {
                if(resposta.length == 0){
                    res.status(400).send('login e/ou senha estão incorretos');
                } else{
                    res.status(203).json(resposta[0]);
                }
            })
        } else{
            usuarioModel.autenticarUsuario(login, senha).then((resposta) => {
                if(resposta.length == 0){
                    res.status(400).send('email e/ou senha estão incorretos');
                } else{
                    res.status(203).json(resposta[0]);
                }
            })
        }
    }
}


module.exports = {
    autenticar
}