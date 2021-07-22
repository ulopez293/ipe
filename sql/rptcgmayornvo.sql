
 SELECT `Cuentas`.`CUENTA`, `Cuentas`.`CAR01`, `Cuentas`.`CAR02`, `Cuentas`.`CAR03`, `Cuentas`.`CAR04`, `Cuentas`.`CAR05`, `Cuentas`.`CAR06`, `Cuentas`.`CAR07`, `Cuentas`.`CAR08`, `Cuentas`.`CAR09`, `Cuentas`.`CAR10`, `Cuentas`.`CAR11`, `Cuentas`.`CAR12`, `Cuentas`.`SUBCTA`, `Cuentas`.`SSUBCTA`, `Cuentas`.`NOMBRE`, `Cuentas`.`ABO01`, `Cuentas`.`ABO02`, `Cuentas`.`ABO03`, `Cuentas`.`ABO04`, `Cuentas`.`ABO05`, `Cuentas`.`ABO06`, `Cuentas`.`ABO07`, `Cuentas`.`ABO08`, `Cuentas`.`ABO09`, `Cuentas`.`ABO10`, `Cuentas`.`ABO11`, `Cuentas`.`ABO12`, `Cuentas`.`SALDOI`, `Polizas`.`SIT`, `Polizas`.`FECH`, `Polizas`.`NUMPOL`, `Polizas`.`TIPOPOL`, `Polizas`.`NCONS`, `Polizas`.`CONCEPTO`, `Polizas`.`AFILIA`, `Polizas`.`DOCTO`, `Polizas`.`REFERENCIA`, `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`
 FROM   ( "IPEBD"."dbo"."Cuentas" Cuentas  Left JOIN  "IPEBD"."Dbo"."Polizas" Polizas ON
    Cuentas."AÑO" = Polizas."Año" AND 
    Cuentas."SUBCTA" = Polizas."Subctap"  and
    Cuentas."CUENTA" = Polizas."CUENTAP"  and
    Cuentas."SSUBCTA" = Polizas."SSUBCTAP" ) 


 ORDER BY `Cuentas`.`CUENTA`, `Cuentas`.`SUBCTA`, `Cuentas`.`SSUBCTA`

