
 SELECT `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`, `Polizas`.`FECH`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Polizas`.`TIPOPOL`, `Polizas`.`CONCEPTO`, `Cuentas`.`CTAARMO`, `Cuentas`.`NOMBRE`
 FROM   "IPEBD"."dbo"."Cuentas" Cuentas  Inner Join "IPEBD"."dbo"."Polizas" Polizas on
 (Cuentas."SUBCTA" = Polizas."Subctap"  and
   Cuentas."SSUBCTA" = Polizas."SSubctap"  and
    Cuentas."CUENTA" = Polizas."CUENTAP" and
    Cuentas."AÑO" = Polizas."AÑO" ) 
 WHERE  Cuentas."AÑO" = 2013 AND   Polizas."FECH" >=  '15/04/2013' AND Polizas."FECH" <=  '15/04/2013'


