
const sql = require('mssql')

const sqlConfig = {
    user: 'sa',
    password: 'Al00775994',
    database: 'IPEBD',
    server: '144.126.138.83',
    options: { encrypt: true, trustServerCertificate: true }
}

let conexion = async () => {
    try {
        let conexion = await sql.connect(sqlConfig)
        console.log('conexion exitosa')
        return conexion
    } catch (err) { return 'error conexion:'+err }
}

exports.conexion = conexion