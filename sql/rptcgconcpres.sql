
 SELECT `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `PresupMaestro`.`PE1`, `PresupMaestro`.`PE2`, `PresupMaestro`.`PE3`, `PresupMaestro`.`PE4`, `PresupMaestro`.`PE5`, `PresupMaestro`.`PE6`, `PresupMaestro`.`PE7`, `PresupMaestro`.`PE8`, `PresupMaestro`.`PE9`, `PresupMaestro`.`PE10`, `PresupMaestro`.`PE11`, `PresupMaestro`.`PE12`, `PresupMaestro`.`UBPP`, `Cuentas`.`SSUBCTA`, `Partidas`.`Descripción`, `PresupUBPP`.`UBPP`, `PresupUBPP`.`DESCRIP`
 FROM   "IPEBD"."dbo"."Cuentas" Cuentas   INNER  JOIN     "IPEBD"."Dbo"."PresupMaestro" PresupMaestro ON
    Cuentas."AÑO" = PresupMaestro."Año" AND 
    Cuentas."CUENTA" = PresupMaestro."UBPP" AND 
    Cuentas."SSUBCTA" = PresupMaestro."CCPA" 

     INNER  JOIN   "IPEBD"."Dbo"."PresupUBPP" PresupUBPP ON
    PresupMaestro."UBPP" = PresupUBPP."UBPP" AND
    PresupMaestro."Año" = PresupUBPP."Año"

     INNER  JOIN   "IPEBD"."Dbo"."Partidas" Partidas ON
    PresupMaestro."CCPA" = Partidas."CCPA" AND
    PresupMaestro."Año" = Partidas."Año"

 ORDER BY `PresupMaestro`.`UBPP`

