const express = require('express')
const app = express()
const port = process.env.PORT || 3000

let conexion = require('./server/conexion.js').conexion
let getConexion = async ()=>{conexion = await conexion()}
getConexion()

const rptcgmayor = require('./reportes/rptcgmayor.js')
const rptcglibromayor = require('./reportes/rptcglibromayor.js')
const rptcgctascolectivas = require('./reportes/rptcgctascolectivas.js')

app.get('/rptcgmayor/:fechainicio/:fechafin/:anio/:mes', (req,res) => {
    try {
        rptcgmayor(req,res,conexion) 
      } catch (error) {
        console.log(error)
        console.log("En la ruta")
      }
})
app.get('/rptcglibromayor', (req,res) => { rptcglibromayor(req,res,conexion) })
app.get('/rptcgctascolectivas/:tipo/:anio', (req,res) => { rptcgctascolectivas(req,res,conexion) })

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})
