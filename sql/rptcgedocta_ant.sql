
 SELECT `Polizas`.`CLAVE`, `Polizas`.`SIT`, `Polizas`.`FECH`, `Polizas`.`IMPORTE`, `Polizas`.`TIPOPOL`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Polizas`.`CONCEPTO`, `Polizas`.`AFILIA`, `Polizas`.`DOCTO`, `Cuentas`.`AÑO`, `Cuentas`.`SALDOI`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`SSUBCTA`, `Cuentas`.`SUBCTA`, `Cuentas`.`CUENTA`, `Cuentas`.`NOMBRE`
 FROM   "IPEBD"."dbo"."Cuentas" Cuentas  Left JOIN  "IPEBD"."Dbo"."Polizas" Polizas  ON
 (Cuentas."SUBCTA" = Polizas."Subctap"  and
   Cuentas."SSUBCTA" = Polizas."SSubctap"  and
    Cuentas."CUENTA" = Polizas."CUENTAP" and Polizas."Fech" >=  '01/12/2001' and Polizas."Fech" <=  '31/12/2001') 
 WHERE  Cuentas."Año" = 2001 and Cuentas."CUENTA" = 1101
 ORDER BY `Cuentas`.`CUENTA`, `Cuentas`.`SUBCTA`, `Cuentas`.`SSUBCTA`

