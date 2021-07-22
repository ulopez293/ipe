
 SELECT `AnualesPD`.`Banco`, `AnualesPD`.`CVEPD`, `AnualesPD`.`IMP`, `AnualesPD`.`ChequeRetro`, `AnualesPD`.`ChequeRetro126`
 FROM   "IPEBD"."Dbo"."AnualesPD"  AnualesPD 
 WHERE  AnualesPD."Banco" = 2 and AnualesPD."Año" = 2017 and  AnualesPD."Mes" = 8 and   AnualesPD."Adscripcion" <> 5 AND AnualesPD."Retroactivo"  = 1 
   
 ORDER BY `AnualesPD`.`Banco`, `AnualesPD`.`ChequeRetro`

