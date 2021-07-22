const sql = require('mssql')

let ejecucionSQL = async (sqlString, conexion) => {
    try {
        return await conexion.request().query(sqlString)
    } catch (err) { 
        return 'error ejecucionSQL:'+err 
    }
}

exports.ejecucionSQL = ejecucionSQL
