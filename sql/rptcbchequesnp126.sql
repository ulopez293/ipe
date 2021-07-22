
 SELECT `AnualesPD`.`Banco`, `AnualesPD`.`Cheque`, `AnualesPD`.`CVEPD`, `AnualesPD`.`Retroactivo`, `AnualesPD`.`IMP`
 FROM   "IPEBD"."Dbo"."AnualesPD"  AnualesPD 
 WHERE  AnualesPD."Cheque"  > 0 and   AnualesPD."Banco" = 1 and AnualesPD."Año" = 2010 and  AnualesPD."Mes" = 9
 ORDER BY `AnualesPD`.`Banco`, `AnualesPD`.`Cheque`

