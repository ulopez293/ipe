var fs = require('fs')

let consultaLimpia = async (nameSQL, params = false) => {
    let sqlString = await new Promise((resolve, reject) => {
        fs.readFile(__dirname+'/../sql/'+nameSQL, 'utf8' , (err, data) => {
            if (err) reject(err)
            resolve(data)
        })
    })
    sqlString = sqlString.replace(/[`]/g, "")
    let searchFechas = sqlString.match(/\d{2}([\/.-])\d{2}\1\d{4}/g);
    if(searchFechas){
        for (const fecha of searchFechas) {
            let fechaDividida = fecha.split('/')
            sqlString = sqlString.replace(fecha, `${fechaDividida[2]}-${fechaDividida[1]}-${fechaDividida[0]}`)
        }
    }

    if (params) {
        for (nameParam in params) {
            console.log(nameParam)
            console.log(nameParam)
        }
        console.log(params.length)
    }

    //console.log("Cadena SQL: ")
    //console.log(sqlString)
    return sqlString
}

exports.consultaLimpia = consultaLimpia