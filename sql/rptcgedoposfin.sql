
 SELECT `EdoPosFin`.`CUENTA`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `Cuentas`.`SALDOI`, `EdoPosFin`.`AGRUPA1`, `GruContabEPF`.`GRUPO`, `EdoPosFin`.`AGRUPA2`, `GruContabEPF`.`CONCEPTO`
 FROM   "IPEBD"."dbo"."GruContabEPF" GruContabEPF
lEFT JOIN     "IPEBD"."dbo"."EdoPosFin" EdoPosFin ON
    GruContabEPF."GRUPO" = EdoPosFin."GRUPO" 

LEFT JOIN    "IPEBD"."dbo"."Cuentas" Cuentas ON
   ( EdoPosFin."CUENTA" = Cuentas."CUENTA"  AND  EdoPosFin."SUBCTA" = 0  AND EdoPosFin."AÑO" = Cuentas."AÑO"  )
OR
   ( EdoPosFin."CUENTA" = Cuentas."CUENTA"  AND  EdoPosFin."SUBCTA" = Cuentas."SUBCTA"  AND  EdoPosFin."SSUBCTA" = 0  AND EdoPosFin."AÑO" = Cuentas."AÑO" ) 
OR
   ( EdoPosFin."CUENTA" = Cuentas."CUENTA"  AND  EdoPosFin."SUBCTA" = Cuentas."SUBCTA"  AND  EdoPosFin."SSUBCTA" = Cuentas."SSUBCTA"   AND EdoPosFin."AÑO" = Cuentas."AÑO" ) 
OR
   ( EdoPosFin."CUENTA" = 0  AND  EdoPosFin."SUBCTA" = 0  AND  EdoPosFin."SSUBCTA" = 0   AND EdoPosFin."AÑO" = Cuentas."AÑO" ) 
 WHERE  Cuentas."AÑO" = 2015 and GruContabEPF."EMISION"  = 1
 ORDER BY `EdoPosFin`.`AGRUPA2`, `EdoPosFin`.`AGRUPA1`, `GruContabEPF`.`GRUPO`

