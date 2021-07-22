
 SELECT `CtasEVHPP`.`GRUPO`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `Cuentas`.`SALDOI`, `GruEVHPP`.`CONCEPTO`
 FROM   "IPEBD"."dbo"."GruEVHPP" GruEVHPP
lEFT JOIN     "IPEBD"."dbo"."CtasEVHPP" CtasEVHPP ON
    GruEVHPP."GRUPO" = CtasEVHPP."GRUPO" 

LEFT JOIN    "IPEBD"."dbo"."Cuentas" Cuentas ON
   ( CtasEVHPP."CUENTA" = Cuentas."CUENTA"  AND  CtasEVHPP."SUBCTA" = 0  AND CtasEVHPP."AÑO" = Cuentas."AÑO"  )
OR
   ( CtasEVHPP."CUENTA" = Cuentas."CUENTA"  AND  CtasEVHPP."SUBCTA" = Cuentas."SUBCTA"  AND  CtasEVHPP."SSUBCTA" = 0  AND CtasEVHPP."AÑO" = Cuentas."AÑO" ) 
OR
   ( CtasEVHPP."CUENTA" = Cuentas."CUENTA"  AND  CtasEVHPP."SUBCTA" = Cuentas."SUBCTA"  AND  CtasEVHPP."SSUBCTA" = Cuentas."SSUBCTA"   AND CtasEVHPP."AÑO" = Cuentas."AÑO" ) 
OR
   ( CtasEVHPP."CUENTA" = 0  AND  CtasEVHPP."SUBCTA" = 0  AND  CtasEVHPP."SSUBCTA" = 0   AND CtasEVHPP."AÑO" = Cuentas."AÑO" ) 
 WHERE  Cuentas."AÑO" = 2015
 ORDER BY `CtasEVHPP`.`GRUPO`

