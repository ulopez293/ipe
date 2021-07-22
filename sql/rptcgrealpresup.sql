
 SELECT `Cuentas`.`CUENTA`, `Cuentas`.`SSUBCTA`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`
 FROM   `IPEBD`.`dbo`.`Cuentas` `Cuentas`
 WHERE  Cuentas."CUENTA" >=  6000 and Cuentas."CUENTA" <= 6072 and Cuentas."AÑO" =  2003  and Cuentas."SSUBCTA" <> 0
 ORDER BY `Cuentas`.`CUENTA`, `Cuentas`.`SSUBCTA`

