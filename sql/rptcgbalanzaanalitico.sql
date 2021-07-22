
 SELECT `BalanzaTemp`.`SDOINICIAL`, `BalanzaTemp`.`CARGOS`, `BalanzaTemp`.`ABONOS`, `GrupoAna`.`CTAARM1`, `GrupoAna`.`CTAARM2`, `GrupoAna`.`CTAARM`, `GrupoAna`.`NOMBREARM1`, `GrupoAna`.`NOMBREARM2`, `BalanzaTemp`.`CTAARMON`, `GrupoAna`.`NOMBREARM`
 FROM   `IPEBD`.`dbo`.`BalanzaTemp` `BalanzaTemp` INNER JOIN `IPEBD`.`dbo`.`GrupoAna` `GrupoAna` ON `BalanzaTemp`.`CTAARMON`=`GrupoAna`.`CTAARM`
 ORDER BY `GrupoAna`.`CTAARM1`, `GrupoAna`.`CTAARM2`, `GrupoAna`.`CTAARM`

