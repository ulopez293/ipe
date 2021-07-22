
 SELECT `Polizas`.`TIPOPOL`, `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`, `Polizas`.`Sistema`, `Polizas`.`FECH`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Cuentas`.`CUENTA`, `Cuentas`.`SUBCTA`, `Cuentas`.`SSUBCTA`, `Polizas`.`REFERENCIA`, `Polizas`.`CUENTAP`, `Polizas`.`SUBCTAP`, `Polizas`.`SSUBCTAP`, `Polizas`.`CONCEPTO`, `Polizas`.`DOCTO`, `Polizas`.`AFILIA`, `Sistemas`.`Nombre`
 FROM   "IPEBD"."Dbo"."Polizas" Polizas Left JOIN   "IPEBD"."dbo"."Cuentas" Cuentas ON
    Cuentas."AÑO" = Polizas."Año" AND 
    Cuentas."SUBCTA" = Polizas."Subctap"  and
    Cuentas."CUENTA" = Polizas."CUENTAP"  and
    Cuentas."SSUBCTA" = Polizas."SSUBCTAP" 
   
     Inner JOIN   "IPEBD"."Dbo"."Sistemas" Sistemas ON
    Sistemas."Sistema" = Polizas."Sistema" 
 WHERE  Polizas."FECH" = '26/02/2003'
 ORDER BY `Polizas`.`Sistema`

