
 SELECT `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`, `Polizas`.`NCONS`, `Polizas`.`NUMPOL`, `Polizas`.`SUBCTAP`, `Polizas`.`CUENTAP`, `Polizas`.`AFILIA`, `Polizas`.`DOCTO`, `Polizas`.`CONCEPTO`, `Polizas`.`SSUBCTAP`
 FROM   `IPEBD`.`dbo`.`Polizas` `Polizas`
 WHERE  Polizas."Sistema"=7 AND Polizas."FECH"='14/08/2001'
 ORDER BY `Polizas`.`NCONS`

