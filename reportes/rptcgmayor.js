const jsreport = require('jsreport')
let consultaLimpia = require('../server/consultaLimpia.js').consultaLimpia
let ejecucionSQL = require('../server/ejecucionSQL.js').ejecucionSQL
const moment = require('moment')

async function rptcgmayor (req, res, conexion) {
    let cabeceraTemplate = `
        <div class="container">
            <div class="row">
                <div class="col-1">
                    <img src="data:image/png;base64,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" 
                         style="position:relative;right:155px;top:25px;";
                         width="200"> 
                </div>
                <div class="col-10">
                    <h2 class="mb-1">Instituto de Pensiones</h2>
                    <h3 class="mb-1">Subdirección de Finanzas</h3>
                    <h4 class="mb-1">Departamento de Contabilidad y Presupuesto</h4>
                    <p>Mes: ${req.params.mes} Año: ${req.params.anio}</p>
                    <p>De: ${req.params.fechainicio} a ${req.params.fechafin}</p>
                </div>
                <div class="col-1"></div>
            </div>
        </div>
    `
   	//let sqlLimpio = await consultaLimpia('rptcgmayor.sql')
    let sqlLimpio = `
    SELECT Polizas.CLAVE, Polizas.SIT, Polizas.FECH, Polizas.IMPORTE, CuentasTmp.SALDO, CuentasTmp.CARGOS, CuentasTmp.ABONOS, Polizas.TIPOPOL, Polizas.NUMPOL, Polizas.NCONS, Polizas.CONCEPTO, Polizas.AFILIA, Polizas.DOCTO, CuentasTmp.CUENTA, CuentasTmp.SUBCTA, CuentasTmp.SSUBCTA, Cuentas.NOMBRE
    FROM   "IPEBD"."dbo"."CuentasTmp" CuentasTmp  Left JOIN  "IPEBD"."Dbo"."Polizas" Polizas  ON
    (CuentasTmp."SUBCTA" = Polizas."Subctap"  and
      CuentasTmp."SSUBCTA" = Polizas."SSubctap"  and
       CuentasTmp."CUENTA" = Polizas."CUENTAP" and Polizas."Fech" >= '${req.params.fechainicio}' and Polizas."Fech" <= '${req.params.fechafin}') 
   
     Inner Join  "IPEBD"."dbo"."Cuentas" Cuentas  On
    (CuentasTmp."SUBCTA" = Cuentas."Subcta"  and
      CuentasTmp."SSUBCTA" = Cuentas."SSubcta"  and
       CuentasTmp."CUENTA" = Cuentas."CUENTA" ) 
    WHERE  Cuentas."Año" = ${req.params.anio}  and (CuentasTmp."SALDO" <> 0 or CuentasTmp."CARGOS" <> 0 or CuentasTmp."ABONOS" <> 0)
    ORDER BY CuentasTmp.CUENTA, CuentasTmp.SUBCTA, CuentasTmp.SSUBCTA   
    `
    let salida = await ejecucionSQL(sqlLimpio, conexion)
    res.send(salida)
    return
    
    let cuerpo = salida.recordset.map((element) => {
        return `
        <tr>
            <th>${element.NUMPOL ?? ''}</th>
            <td>${element.CUENTA ?? ''}</td>
            <td>${moment(new Date(element.FECH)).format('L') ?? ''}</td>
            <td>${element.NOMBRE ?? ''}</td>
            <td>${element.AFILIA ?? ''}</th>
            <td>${element.SALDO ?? ''}</th>
            <td>${element.CARGOS ?? ''}</th>
            <td>${element.ABONOS ?? ''}</th>
        </tr>
        `
    }).toString().replaceAll(',', '')
    
    jsreport.render({
        template: {
          content: `
          <html>
            <head>
                <style>
                    {#asset ./bootstrap/bootstrap.min.css @encoding=utf8}
                </style>
                <script src="{#asset ./bootstrap/bootstrap.min.js @encoding=link}"></script>
            </head>
            <body>
            <center>
                    ${cabeceraTemplate}
                    <p style="text-align:right;">
                        Fecha: ${moment().format('L')}
                        Hora: ${moment().format('LT')}
                     </p>
                    <table class="table mt-5">
                        <thead>
                            <tr>
                                <th scope="col">No. Poliza</th>
                                <th scope="col">No. Renta</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Concepto</th>
                                <th scope="col">Afiliado</th>
                                <th scope="col">Docto.</th>
                                <th scope="col">Cargos</th>
                                <th scope="col">Abonos</th>
                            </tr>
                        </thead>
                        <tbody>
                        ${cuerpo}
                        </tbody>
                    </table>
                </center>
            </body>
          </html>
          `,
          engine: 'handlebars',
          recipe: 'chrome-pdf',
          chrome: {
            displayHeaderFooter: true,
            headerTemplate: `<div style=\"text-align:center; font-size: 10px; width:100%\">
            
            </div>`,
            footerTemplate: `<div style=\"text-align:center; font-size: 10px; width:100%\">
            
            </div>`,
            landscape: true,
            format: 'A4',
            marginTop: '25px',
            marginBottom: '25px',
            marginLeft: '50px',
            marginRight: '50px'
          }
        },
        data: { dato: '' }
     }).then((out)=>{
         out.stream.pipe(res)
     }).catch((e)=>{
         res.end(e.message)
     })
}


module.exports = rptcgmayor