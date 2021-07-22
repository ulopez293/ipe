If (({@Suma4} <> 0 or {@Suma6} <> 0) and ({Cuentas.CUENTA} >= 4000 and {Cuentas.CUENTA} <= 6941))  or {Cuentas.CUENTA}  = 3102 Then 
   If {Cuentas.CUENTA}  = 3102 Then
      {@Suma6}
   Else If Sum({@Sfp},{Cuentas.CUENTA}) < 0 Then
                       Abs(Sum({@Sfp},{Cuentas.CUENTA}))
           Else
                    0 
Else If ({@Suma4} <> 0 or {@Suma6} <> 0) Then 0
Else If {@mes} = 1 Then Sum ({Cuentas.CAR01}, {Cuentas.CUENTA})
Else If {@mes} = 2 Then Sum ({Cuentas.CAR02}, {Cuentas.CUENTA})
Else If {@mes} = 3 Then Sum ({Cuentas.CAR03}, {Cuentas.CUENTA})
Else If {@mes} = 4 Then Sum ({Cuentas.CAR04}, {Cuentas.CUENTA})
Else If {@mes} = 5 Then Sum ({Cuentas.CAR05}, {Cuentas.CUENTA})
Else If {@mes} = 6 Then Sum ({Cuentas.CAR06}, {Cuentas.CUENTA})
Else If {@mes} = 7 Then Sum ({Cuentas.CAR07}, {Cuentas.CUENTA})
Else If {@mes} = 8 Then Sum ({Cuentas.CAR08}, {Cuentas.CUENTA})
Else If {@mes} = 9 Then Sum ({Cuentas.CAR09}, {Cuentas.CUENTA})
Else If {@mes} = 10 Then Sum ({Cuentas.CAR10}, {Cuentas.CUENTA})
Else If {@mes} = 11 Then Sum ({Cuentas.CAR11}, {Cuentas.CUENTA})
Else If {@mes} = 12 Then Sum ({Cuentas.CAR12}, {Cuentas.CUENTA})
Else 0