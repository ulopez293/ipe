
 SELECT `AnualesPD`.`Banco`, `AnualesPD`.`Cheque`, `AnualesPD`.`CVEPD`, `AnualesPD`.`Retroactivo`, `AnualesPD`.`IMP`
 FROM   "IPEBD"."Dbo"."AnualesPD"  AnualesPD 
 WHERE  AnualesPD."Cheque"  > 0 and   AnualesPD."Banco" = 1 and AnualesPD."Año" = 2016 and  AnualesPD."Mes" = 11 and  AnualesPD."adscripcion" <> 5 and (AnualesPD."Status"  <> 3 and AnualesPD."Status"  <> 1)
  
 ORDER BY `AnualesPD`.`Banco`, `AnualesPD`.`Cheque`

