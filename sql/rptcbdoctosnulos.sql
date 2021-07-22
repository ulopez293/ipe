
 SELECT `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`, `Polizas`.`FECH`, `Polizas`.`TIPOPOL`, `Polizas`.`NCONS`, `Polizas`.`CUENTAP`, `Polizas`.`REFERENCIA`, `Polizas`.`DOCTO`, `Polizas`.`AFILIA`, `Polizas`.`CONCEPTO`, `Polizas`.`NUMPOL`, `Polizas`.`SUBCTAP`, `Polizas`.`SSUBCTAP`
 FROM   "IPEBD"."Dbo"."Polizas" Polizas 
 WHERE  Polizas."Cuentap" = 1102 and (Polizas."Docto" is null)
 ORDER BY `Polizas`.`FECH`

