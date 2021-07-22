
 SELECT `EdoResul`.`AGRUPA2`, `EdoResul`.`AGRUPA1`, `EdoResul`.`GRUPO`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `GruContabER`.`CONCEPTO`
 FROM   "IPEBD"."dbo"."GruContabER" GruContabER
 LEFT JOIN     "IPEBD"."dbo"."EdoResul" EdoResul ON
    GruContabER."GRUPO" = EdoResul."GRUPO" 

LEFT  JOIN     "IPEBD"."Gmesa"."IngresosContab" IngresosContab ON
  IngresosContab."Año" = EdoResul."Año" and
  IngresosContab."Cuenta" = EdoResul."Cuenta" 


LEFT  JOIN    "IPEBD"."dbo"."Cuentas" Cuentas ON
   ( EdoResul."CUENTA" = Cuentas."CUENTA"  AND  EdoResul."SUBCTA" = 0  AND EdoResul."AÑO" = Cuentas."AÑO"  )
OR
   ( EdoResul."CUENTA" = Cuentas."CUENTA"  AND  EdoResul."SUBCTA" = Cuentas."SUBCTA"  AND EdoResul."AÑO" = Cuentas."AÑO" ) 

 ORDER BY `EdoResul`.`AGRUPA2`, `EdoResul`.`AGRUPA1`, `EdoResul`.`GRUPO`

