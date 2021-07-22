
 SELECT `ChequesIPE`.`IMPORTE`, `ChequesBan`.`IMPORTE_B`, `ChequesIPE`.`FECH`, `ChequesIPE`.`DOCUMENTO`
 FROM   "IPEBD"."Dbo"."ChequesIPE"  ChequesIPE  
Inner  Join "IPEBD"."Dbo"."ChequesBan"  ChequesBan  On
     ChequesIPE."Banco" = ChequesBan."Banco" AND
     ChequesIPE."DOCUMENTO" = ChequesBan."DOCTOS_B" 
 WHERE  ChequesIPE."IMPORTE" > ChequesBan."IMPORTE_B" and
   ChequesIPE."Clave" = 2

