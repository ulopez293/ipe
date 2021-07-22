
 SELECT `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `IngresosContab`.`P1`, `IngresosContab`.`P2`, `IngresosContab`.`P3`, `IngresosContab`.`P4`, `IngresosContab`.`P5`, `IngresosContab`.`P6`, `IngresosContab`.`P7`, `IngresosContab`.`P8`, `IngresosContab`.`P9`, `IngresosContab`.`P10`, `IngresosContab`.`P11`, `IngresosContab`.`P12`, `Cuentas`.`SALDOI`, `IngresosContab`.`SUBCTA`, `IngresosContab`.`DESCRIPCION`, `Cuentas`.`CUENTA`, `Cuentas`.`SSUBCTA`
 FROM   "IPEBD"."Dbo"."IngresosContab" IngresosContab Left JOIN   "IPEBD"."dbo"."Cuentas" Cuentas ON
    Cuentas."AÑO" = IngresosContab."Año" AND 
    Cuentas."SSUBCTA" = IngresosContab."Subcta"  and
    Cuentas."CUENTA" = IngresosContab."CUENTA" 
 WHERE  (IngresosContab."Cuenta" >= 5000  and  IngresosContab."Cuenta" < 6000 and Cuentas."AÑO" = 2002)  or (IngresosContab."Cuenta" >= 6400  and  IngresosContab."Cuenta" <= 6941 and Cuentas."AÑO" = 2002) 

 ORDER BY `IngresosContab`.`SUBCTA`

