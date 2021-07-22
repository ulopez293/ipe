
 SELECT `ChequesIPE`.`IMPORTE`, `ChequesIPE`.`FECH`, `ChequesIPE`.`DOCUMENTO`
 FROM   "IPEBD"."Dbo"."ChequesIPE"  ChequesIPE  
Left  Join "IPEBD"."Dbo"."ChequesBan"  ChequesBan  On
     ChequesIPE."Banco" = ChequesBan."Banco" AND
     ChequesIPE."DOCUMENTO" = ChequesBan."DOCTOS_B" 
 WHERE  (((ChequesBan."Banco") is null) or ((ChequesBan."DOCTOS_B") is null)) and
   ChequesIPE."Clave" = 1

