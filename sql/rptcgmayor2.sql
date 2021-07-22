
 SELECT `Polizas`.`CLAVE`, `Polizas`.`SIT`, `Polizas`.`FECH`, `Polizas`.`IMPORTE`, `Cuentas`.`SALDOI`, `Polizas`.`TIPOPOL`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Polizas`.`CONCEPTO`, `Polizas`.`AFILIA`, `Polizas`.`DOCTO`, `Cuentas`.`CUENTA`, `Cuentas`.`SUBCTA`, `Cuentas`.`SSUBCTA`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `Cuentas`.`NOMBRE`
 FROM   "IPEBD"."dbo"."Cuentas" Cuentas  Left JOIN  "IPEBD"."Dbo"."Polizas" Polizas  ON
 (Cuentas."SUBCTA" = Polizas."Subctap"  and
   Cuentas."SSUBCTA" = Polizas."SSubctap"  and
    Cuentas."CUENTA" = Polizas."CUENTAP" and Polizas."Fech" >=  '01/09/2020' and Polizas."Fech" <=  '30/09/2020') 
 WHERE  Cuentas."Año" = 2020  AND (Cuentas."CUENTA" >= 1121 AND Cuentas."SUBCTA" >= 1)  AND  ( Cuentas."CUENTA" <= 1134 AND Cuentas."SUBCTA" <= 1)
 ORDER BY `Cuentas`.`CUENTA`, `Cuentas`.`SUBCTA`, `Cuentas`.`SSUBCTA`

