
 SELECT `Cuentas`.`SALDOI`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `EdoResulAna`.`CTAARM3`, `EdoResulAna`.`CTAARM4`, `EdoResulAna`.`CTAARM5`, `Cuentas`.`CTAARMO`, `Cuentas`.`NOMARMO`, `Polizas`.`CLAVE`, `Polizas`.`IMPORTE`, `EdoResulAna`.`AÑO`, `EdoResulAna`.`CLAVE`, `Polizas`.`CONCEPTO`, `Polizas`.`TIPOPOL`, `Polizas`.`NUMPOL`, `Polizas`.`FECH`, `GrupoCtaArm3`.`NOMBREARM`, `GrupoCtaArm4`.`NOMBREARM`, `GrupoCtaArm5`.`NOMBREARM`
 FROM   EdoResulAna INNER JOIN
                      Cuentas ON EdoResulAna.CUENTA = Cuentas.CUENTA AND EdoResulAna.SUBCTA = Cuentas.SUBCTA AND EdoResulAna.SSUBCTA = Cuentas.SSUBCTA AND 
                      EdoResulAna.AÑO = Cuentas.AÑO INNER JOIN
                      GrupoCtaArm ON EdoResulAna.CTAARM1 = GrupoCtaArm.CTAARM INNER JOIN
                      GrupoCtaArm AS GrupoCtaArm2 ON EdoResulAna.CTAARM2 = GrupoCtaArm2.CTAARM LEFT OUTER JOIN
                      GrupoCtaArm AS GrupoCtaArm5 ON EdoResulAna.CTAARM5 = GrupoCtaArm5.CTAARM LEFT OUTER JOIN
                      GrupoCtaArm AS GrupoCtaArm4 ON EdoResulAna.CTAARM4 = GrupoCtaArm4.CTAARM LEFT OUTER JOIN
                      GrupoCtaArm AS GrupoCtaArm3 ON EdoResulAna.CTAARM3 = GrupoCtaArm3.CTAARM 

 Left Join  "IPEBD"."dbo"."Polizas" Polizas on
 (Cuentas."SUBCTA" = Polizas."Subctap"  and
   Cuentas."SSUBCTA" = Polizas."SSubctap"  and
   Cuentas."AÑO" = Polizas."AÑO" and
    Cuentas."CUENTA" = Polizas."CUENTAP" AND   Polizas."FECH" >=  '15/04/2013' AND Polizas."FECH" <=  '15/04/2013' ) 
 WHERE  Cuentas."AÑO" = 2013  and Cuentas."CUENTA" = 2103  

 ORDER BY `EdoResulAna`.`CTAARM3`, `EdoResulAna`.`CTAARM4`, `EdoResulAna`.`CTAARM5`, `Cuentas`.`CTAARMO`

