var mssqlExport = require('mssql-to-csv')
 
var dbconfig = {
    user: 'sa',
    password: 'Al00775994',
    database: 'IPEBD',
    server: '198.251.78.131',
    options: { encrypt: true, trustServerCertificate: true },
    requestTimeout: 32000000,
}

var options = {
    ignoreList: ["Cheques Bancomer", "Cotizaciones SEV"],
    tables: [],    // empty to export all the tables
    outputDirectory: 'csv',
    log: true,
    header: false  // true to export column names as csv header
};

mssqlExport(dbconfig, options).then(function(){
    console.log("All done successfully!");
    process.exit(0);
}).catch(function(err){
    console.log(err.toString());
    process.exit(-1);
});