
 SELECT `CtasContPres`.`REAL01`, `CtasContPres`.`REAL02`, `CtasContPres`.`REAL03`, `CtasContPres`.`REAL04`, `CtasContPres`.`REAL05`, `CtasContPres`.`REAL06`, `CtasContPres`.`REAL07`, `CtasContPres`.`REAL08`, `CtasContPres`.`REAL09`, `CtasContPres`.`REAL10`, `CtasContPres`.`REAL11`, `CtasContPres`.`REAL12`, `CtasContPres`.`PRES01`, `CtasContPres`.`PRES02`, `CtasContPres`.`PRES03`, `CtasContPres`.`PRES04`, `CtasContPres`.`PRES05`, `CtasContPres`.`PRES06`, `CtasContPres`.`PRES07`, `CtasContPres`.`PRES08`, `CtasContPres`.`PRES09`, `CtasContPres`.`PRES10`, `CtasContPres`.`PRES11`, `CtasContPres`.`PRES12`, `Partidas`.`Descripción`, `CtasContPres`.`SSUBCTA`, `Partidas`.`CCPA`, `PresupUBPP`.`UBPP`, `PresupUBPP`.`DESCRIP`
 FROM   "IPEBD"."dbo"."CtasContPres" CtasContPres  Inner  JOIN   "IPEBD"."Dbo"."PresupUBPP" PresupUBPP ON
    CtasContPres."Cuenta" = PresupUBPP."UBPP" AND
    CtasContPres."Año" = PresupUBPP."Año"

    Inner  JOIN   "IPEBD"."Dbo"."Partidas" Partidas ON
    CtasContPres."SSubcta" = Partidas."CCPA" AND
    CtasContPres."Año" = Partidas."Año" 
 WHERE  CtasContPres."Cuenta" >= 6000 and CtasContPres."Cuenta" <  6070  and CtasContPres."Año" = 2008 

 ORDER BY `CtasContPres`.`SSUBCTA`, `PresupUBPP`.`UBPP`

