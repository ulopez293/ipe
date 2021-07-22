
 SELECT `Polizas`.`CLAVE`, `Polizas`.`SIT`, `Polizas`.`FECH`, `Polizas`.`IMPORTE`, `CuentasTmp`.`SALDO`, `CuentasTmp`.`CARGOS`, `CuentasTmp`.`ABONOS`, `Polizas`.`TIPOPOL`, `Polizas`.`NUMPOL`, `Polizas`.`NCONS`, `Polizas`.`CONCEPTO`, `Polizas`.`AFILIA`, `Polizas`.`DOCTO`, `CuentasTmp`.`CUENTA`, `CuentasTmp`.`SUBCTA`, `CuentasTmp`.`SSUBCTA`, `Cuentas`.`NOMBRE`
 FROM   "IPEBD"."dbo"."CuentasTmp" CuentasTmp  Left JOIN  "IPEBD"."Dbo"."Polizas" Polizas  ON
 (CuentasTmp."SUBCTA" = Polizas."Subctap"  and
   CuentasTmp."SSUBCTA" = Polizas."SSubctap"  and
    CuentasTmp."CUENTA" = Polizas."CUENTAP" and Polizas."Fech" >=  '01/04/2020' and Polizas."Fech" <=  '30/04/2020') 

  Inner Join  "IPEBD"."dbo"."Cuentas" Cuentas  On
 (CuentasTmp."SUBCTA" = Cuentas."Subcta"  and
   CuentasTmp."SSUBCTA" = Cuentas."SSubcta"  and
    CuentasTmp."CUENTA" = Cuentas."CUENTA" ) 
 WHERE  Cuentas."Año" = 2020  and (CuentasTmp."SALDO" <> 0 or CuentasTmp."CARGOS" <> 0 or CuentasTmp."ABONOS" <> 0)
 ORDER BY `CuentasTmp`.`CUENTA`, `CuentasTmp`.`SUBCTA`, `CuentasTmp`.`SSUBCTA`

