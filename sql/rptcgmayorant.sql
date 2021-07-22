
 SELECT `Polizas`.`CLAVE`, `Polizas`.`SIT`, `Polizas`.`FECH`, `Polizas`.`IMPORTE`, `CuentasTmp`.`SALDO`, `CuentasTmp`.`CARGOS`, `CuentasTmp`.`ABONOS`, `Polizas`.`TIPOPOL`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Polizas`.`CONCEPTO`, `Polizas`.`AFILIA`, `Polizas`.`DOCTO`, `Polizas`.`REFERENCIA`, `CuentasTmp`.`CUENTA`, `CuentasTmp`.`SUBCTA`, `CuentasTmp`.`SSUBCTA`, `Cuentas`.`NOMBRE`
 FROM   "IPEBD"."dbo"."CuentasTmp" CuentasTmp  Left JOIN  "IPEBD"."Dbo"."Polizas" Polizas  ON
 (CuentasTmp."SUBCTA" = Polizas."Subctap"  and
   CuentasTmp."SSUBCTA" = Polizas."SSubctap"  and
    CuentasTmp."CUENTA" = Polizas."CUENTAP" and Polizas."Fech" >=  '01/12/2001' and Polizas."Fech" <=  '31/12/2001') 

  Inner Join  "IPEBD"."dbo"."Cuentas" Cuentas  On
 (CuentasTmp."SUBCTA" = Cuentas."Subcta"  and
   CuentasTmp."SSUBCTA" = Cuentas."SSubcta"  and
    CuentasTmp."CUENTA" = Cuentas."CUENTA" ) 
 WHERE  Cuentas."Año" = 2001 and CuentasTmp."CUENTA" = 1101
 ORDER BY `CuentasTmp`.`CUENTA`, `CuentasTmp`.`SUBCTA`, `CuentasTmp`.`SSUBCTA`

