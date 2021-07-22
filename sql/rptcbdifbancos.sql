
 SELECT `ChequesBan`.`IMPORTE_B`, `ChequesIPE`.`IMPORTE`, `ChequesBan`.`FECHA_B`, `ChequesBan`.`DOCTOS_B`
 FROM   "IPEBD"."Dbo"."ChequesIPE"  ChequesIPE  
Inner  Join "IPEBD"."Dbo"."ChequesBan"  ChequesBan  On
     ChequesIPE."Banco" = ChequesBan."Banco" AND
     ChequesIPE."DOCUMENTO" = ChequesBan."DOCTOS_B" 
 WHERE  ChequesBan."IMPORTE_B" > ChequesIpe."IMPORTE" and
   ChequesBan."Clave_B" = 1

