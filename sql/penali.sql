
 SELECT `AnualesPA126`.`Banco`, `AnualesPA126`.`Cheque`, `AnualesPA126`.`IMP`
 FROM   AnualesPA126 
 WHERE  AnualesPA126."Banco" = 2 and AnualesPA126."Cheque" >= 1935960 and  AnualesPA126."Cheque" <= 1937955 
 ORDER BY `AnualesPA126`.`Banco`, `AnualesPA126`.`Cheque`

