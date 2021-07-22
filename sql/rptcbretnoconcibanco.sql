
 SELECT `ChequesBan`.`IMPORTE_B`, `ChequesBan`.`FECHA_B`, `ChequesBan`.`DOCTOS_B`
 FROM   "IPEBD"."Dbo"."ChequesIPE"  ChequesIPE  
Right  Join "IPEBD"."Dbo"."ChequesBan"  ChequesBan  On
     ChequesIPE."Banco" = ChequesBan."Banco" AND
     ChequesIPE."DOCUMENTO" = ChequesBan."DOCTOS_B" 
 WHERE  (((ChequesIpe."Banco") is null) or ((ChequesIpe."Documento") is null)) and
   ChequesBan."Clave_B" = 1

