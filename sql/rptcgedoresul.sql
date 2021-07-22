
 SELECT `EdoResul`.`CUENTA`, `EdoResul`.`AGRUPA1`, `CtasContPres`.`REAL01`, `CtasContPres`.`REAL02`, `CtasContPres`.`REAL03`, `CtasContPres`.`REAL04`, `CtasContPres`.`REAL05`, `CtasContPres`.`REAL06`, `CtasContPres`.`REAL07`, `CtasContPres`.`REAL08`, `CtasContPres`.`REAL09`, `CtasContPres`.`REAL10`, `CtasContPres`.`REAL11`, `CtasContPres`.`REAL12`, `IngresosContab`.`P1`, `IngresosContab`.`P2`, `IngresosContab`.`P3`, `IngresosContab`.`P4`, `IngresosContab`.`P5`, `IngresosContab`.`P6`, `IngresosContab`.`P7`, `IngresosContab`.`P8`, `IngresosContab`.`P9`, `IngresosContab`.`P10`, `IngresosContab`.`P11`, `IngresosContab`.`P12`, `CtasContPres`.`PRES01`, `CtasContPres`.`PRES02`, `CtasContPres`.`PRES03`, `CtasContPres`.`PRES04`, `CtasContPres`.`PRES05`, `CtasContPres`.`PRES06`, `CtasContPres`.`PRES07`, `CtasContPres`.`PRES08`, `CtasContPres`.`PRES09`, `CtasContPres`.`PRES10`, `CtasContPres`.`PRES11`, `CtasContPres`.`PRES12`, `EdoResul`.`GRUPO`, `EdoResul`.`AGRUPA2`, `EdoResul`.`AGRUPA3`, `GruContabER`.`CONCEPTO`, `CtasContPres`.`SSUBCTA`
 FROM   "IPEBD"."dbo"."GruContabER" GruContabER
 LEFT JOIN     "IPEBD"."dbo"."EdoResul" EdoResul ON
    GruContabER."GRUPO" = EdoResul."GRUPO" 

  Left  JOIN     "IPEBD"."Dbo"."IngresosContab" IngresosContab ON
  IngresosContab."Año" = EdoResul."Año" and
  IngresosContab."Cuenta" = EdoResul."Cuenta" and
  IngresosContab."Cuenta" < 5000

LEFT  JOIN    "IPEBD"."dbo"."CtasContPres" CtasContPres ON
   ( EdoResul."CUENTA" = CtasContPres."CUENTA"  AND  EdoResul."SUBCTA" = 0  AND EdoResul."AÑO" = CtasContPres."AÑO"  )
OR
   ( EdoResul."CUENTA" = CtasContPres."CUENTA"  AND  EdoResul."SUBCTA" = CtasContPres."SSUBCTA"  AND EdoResul."AÑO" = CtasContPres."AÑO" ) 
OR
   ( EdoResul."CUENTA" = 0  AND  EdoResul."SUBCTA" = 0  ) 
 WHERE  CtasContPres."AÑO" = 2009
 ORDER BY `EdoResul`.`AGRUPA3`, `EdoResul`.`AGRUPA2`, `EdoResul`.`AGRUPA1`, `EdoResul`.`GRUPO`

