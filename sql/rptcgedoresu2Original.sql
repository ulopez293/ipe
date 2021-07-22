
 SELECT `EdoResul`.`CUENTA`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `Cuentas`.`SALDOI`, `EdoResul`.`AGRUPA2`, `EdoResul`.`AGRUPA1`, `EdoResul`.`AGRUPA3`, `EdoResul`.`GRUPO`, `GruContabEr`.`CONCEPTO`
 FROM   "IPEBD"."dbo"."GruContabEr" GruContabEr
lEFT JOIN     "IPEBD"."dbo"."EdoResul" EdoResul ON
    GruContabEr."GRUPO" = EdoResul."GRUPO" 

LEFT JOIN    "IPEBD"."dbo"."Cuentas" Cuentas ON
   ( EdoResul."CUENTA" = Cuentas."CUENTA"  AND  EdoResul."SUBCTA" = 0  AND EdoResul."AÑO" = Cuentas."AÑO"  )
OR
   ( EdoResul."CUENTA" = Cuentas."CUENTA"  AND  EdoResul."SUBCTA" = Cuentas."SUBCTA"  AND  EdoResul."SSUBCTA" = 0  AND EdoResul."AÑO" = Cuentas."AÑO" ) 
OR
   ( EdoResul."CUENTA" = Cuentas."CUENTA"  AND  EdoResul."SUBCTA" = Cuentas."SUBCTA"  AND  EdoResul."SSUBCTA" = Cuentas."SSUBCTA"   AND EdoResul."AÑO" = Cuentas."AÑO" ) 
OR
   ( EdoResul."CUENTA" = 0  AND  EdoResul."SUBCTA" = 0  AND  EdoResul."SSUBCTA" = 0   AND EdoResul."AÑO" = Cuentas."AÑO" ) 
 WHERE  Cuentas."AÑO" = 2012
 ORDER BY `EdoResul`.`AGRUPA3`, `EdoResul`.`AGRUPA2`, `EdoResul`.`AGRUPA1`, `EdoResul`.`GRUPO`

