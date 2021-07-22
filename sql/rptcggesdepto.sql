
 SELECT `CtasContPres`.`REAL01`, `CtasContPres`.`REAL02`, `CtasContPres`.`REAL03`, `CtasContPres`.`REAL04`, `CtasContPres`.`REAL05`, `CtasContPres`.`REAL06`, `CtasContPres`.`REAL07`, `CtasContPres`.`REAL08`, `CtasContPres`.`REAL09`, `CtasContPres`.`REAL10`, `CtasContPres`.`REAL11`, `CtasContPres`.`REAL12`, `CtasContPres`.`PRES01`, `CtasContPres`.`PRES02`, `CtasContPres`.`PRES03`, `CtasContPres`.`PRES04`, `CtasContPres`.`PRES05`, `CtasContPres`.`PRES06`, `CtasContPres`.`PRES07`, `CtasContPres`.`PRES08`, `CtasContPres`.`PRES09`, `CtasContPres`.`PRES10`, `CtasContPres`.`PRES11`, `CtasContPres`.`PRES12`, `CtasContPres`.`SSUBCTA`, `Partidas`.`Descripción`, `CtasContPres`.`CUENTA`, `CtasContPres`.`CAPITULO`, `PresupUBPP`.`UBPP`, `PresupUBPP`.`DESCRIP`, `PTOCAP`.`Clave`, `PTOCAP`.`Descrip`
 FROM   "IPEBD"."dbo"."CtasContPres" CtasContPres  Left  JOIN   "IPEBD"."Dbo"."PresupUBPP" PresupUBPP ON
    CtasContPres."Cuenta" = PresupUBPP."UBPP" AND
    CtasContPres."Año" = PresupUBPP."Año"

    Left  JOIN   "IPEBD"."Dbo"."Partidas" Partidas ON
    CtasContPres."SSubcta" = Partidas."CCPA" AND
    CtasContPres."Año" = Partidas."Año"

    Left  JOIN   "IPEBD"."Dbo"."PTOCAP" PTOCAP ON
    CtasContPres."CAPITULO" = PTOCAP."CLAVE" AND
    CtasContPres."Año" = PTOCAP."Año" 
 WHERE  CtasContPres."CUENTA" >= 6000 and CtasContPres."CUENTA" <= 6080  AND CtasContPres."Año" = 2002
 ORDER BY `CtasContPres`.`CUENTA`, `CtasContPres`.`CAPITULO`

