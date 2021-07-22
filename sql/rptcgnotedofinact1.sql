 SELECT `TmpEdoPosFin`.`Subgrupo`, `TmpEdoPosFin`.`Grupo`, `TmpEdoPosFin`.`ImpMesAñoAct1`, `TmpEdoPosFin`.`ImpMesAñoAnt1`, `TmpEdoPosFin`.`Cuenta`, `TmpEdoPosFin`.`Concepto1`
 FROM   `IPEBD`.`dbo`.`TmpEdoPosFin` `TmpEdoPosFin`
 WHERE  TmpEdoPosFin."Grupo" = 3
 ORDER BY `TmpEdoPosFin`.`Subgrupo`