
 SELECT TmpLibMay.CLAVE, TmpLibMay.IMPORTE, TmpLibMayTot.CTAARMO, TmpLibMay.CTAARMO, TmpLibMayTot.SALDOI, TmpLibMayTot.DEBE, TmpLibMayTot.HABER, TmpLibMay.TIPOPOL, TmpLibMay.NUMPOL, TmpLibMay.FECH, TmpLibMay.CONCEPTO, TmpLibMayTot.NOMARMO
 FROM   "IPEBD"."dbo"."TmpLibMay" TmpLibMay Right Join  "IPEBD"."dbo"."TmpLibMayTot" TmpLibMayTot on TmpLibMay."CTAARMO" = TmpLibMayTot."CTAARMO" 
 ORDER BY TmpLibMayTot.CTAARMO
