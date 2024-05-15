var database = require("../database/config")

const autenticarUsuario = (email, senha) => {

    const script = `SELECT * FROM funcionario where email = '${email}' and senha = '${senha}'`;
    return database.executar(script);
}

const autenticarEmpresa = (cnpj, senha) => {

    const script = `SELECT * FROM empresa where cnpj = '${cnpj}' and senha = '${senha}'`;
    return database.executar(script);
}

module.exports = {
    autenticarUsuario,
    autenticarEmpresa
};