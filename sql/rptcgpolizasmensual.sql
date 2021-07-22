
 SELECT `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`, `Polizas`.`FECH`, `Polizas`.`TIPOPOL`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Cuentas`.`CUENTA`, `Cuentas`.`SUBCTA`, `Cuentas`.`SSUBCTA`, `Polizas`.`CUENTAP`, `Polizas`.`SUBCTAP`, `Polizas`.`SSUBCTAP`, `Polizas`.`CONCEPTO`, `Polizas`.`DOCTO`, `Polizas`.`AFILIA`
 FROM   "IPEBD"."Dbo"."Polizas" Polizas Left JOIN   "IPEBD"."dbo"."Cuentas" Cuentas ON
    Cuentas."AÑO" = Polizas."Año" AND 
    Cuentas."SUBCTA" = Polizas."Subctap"  and
    Cuentas."CUENTA" = Polizas."CUENTAP"  and
    Cuentas."SSUBCTA" = Polizas."SSUBCTAP" 
 WHERE  Polizas."FECH" = '26/02/2003'

