
 SELECT `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`, `Polizas`.`FECH`, `Polizas`.`TIPOPOL`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Cuentas`.`NOMBRE`, `Polizas`.`CONCEPTO`, `Cuentas`.`CTAARMO`
 FROM   "IPEBD"."dbo"."Cuentas" Cuentas  Inner Join "IPEBD"."dbo"."Polizas" Polizas on
 (Cuentas."SUBCTA" = Polizas."Subctap"  and
   Cuentas."SSUBCTA" = Polizas."SSubctap"  and
    Cuentas."CUENTA" = Polizas."CUENTAP" and
    Cuentas."AÑO" = Polizas."AÑO" ) 
 WHERE  Cuentas."AÑO" = 2013 AND   Polizas."FECH" >=  '15/04/2013' AND Polizas."FECH" <=  '15/04/2013'


