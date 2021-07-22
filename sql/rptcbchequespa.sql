
 SELECT `TemCheIpePA`.`Banco`, `TemCheIpePA`.`DOCUMENTO`, `TemCheIpePA`.`IMPORTE`
 FROM   "IPEBD"."Dbo"."TemCheIpePA"  TemCheIpePA 
 WHERE  TemCheIpePA."Banco" = 4 and Year(TemCheIpePA."Fech") = 2010 and  Month(TemCheIpePA."Fech") = 9
 ORDER BY `TemCheIpePA`.`Banco`, `TemCheIpePA`.`DOCUMENTO`

