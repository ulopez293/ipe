
 SELECT `DatGenCheques`.`Cheque`, `ClavesCheques`.`ClaveP`, `ClavesCheques`.`ClaveD`, `ClavesdeDescuentoP`.`DesLarga`, `ClavesdeDescuentoD`.`DesLarga`, `ClavesCheques`.`ImporteP`, `ClavesCheques`.`ImporteD`, `DatGenCheques`.`Aviso1`, `DatGenCheques`.`Aviso2`, `DatGenCheques`.`Aviso3`, `DatGenCheques`.`Aviso4`, `DatGenCheques`.`Aviso5`, `DatGenCheques`.`ImporteN`, `DatGenCheques`.`CURP`, `DatGenCheques`.`RFC`, `DatGenCheques`.`Banco`, `DatGenCheques`.`Fecha`, `DatGenCheques`.`Cuenta`, `ClavesCheques`.`Cheque`, `DatGenCheques`.`Nombre`, `DatGenCheques`.`MesAño`, `DatGenCheques`.`ImporteL`, `DatGenCheques`.`AfiImss`, `DatGenCheques`.`Total`, `DatGenCheques`.`ID`, `DatGenCheques`.`Domicilio`, `DatGenCheques`.`Colonia`, `DatGenCheques`.`Ciudad`, `DatGenCheques`.`Percepciones`, `DatGenCheques`.`Deducciones`, `DatGenCheques`.`CP`
 FROM   "IPEBD"."dbo"."DatGenCheques" DatGenCheques LEFT JOIN
    "IPEBD"."dbo"."ClavesCheques" ClavesCheques ON
    DatGenCheques."Banco" = ClavesCheques."Banco" AND
    DatGenCheques."Cheque" = ClavesCheques."Cheque" 
    LEFT JOIN "IPEBD"."dbo"."ClavesdeDescuento" ClavesdeDescuentoP ON
    ClavesCheques."ClaveP" = ClavesdeDescuentoP."Clave" AND
    ClavesdeDescuentoP."ActPen" = 'P' 
    LEFT JOIN "IPEBD"."dbo"."ClavesdeDescuento" ClavesdeDescuentoD ON
    ClavesCheques."ClaveD" = ClavesdeDescuentoD."Clave" AND
    ClavesdeDescuentoD."ActPen" = 'P' 
 WHERE  DatGenCheques."ID" = 15991
 ORDER BY `DatGenCheques`.`Cheque`

