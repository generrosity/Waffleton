write-host "`n Remove mods `n"

del diy-*.jar
del funky-*.jar
del currency-*.jar
del meecreeps-*.jar
del openmodularturrets-*.jar
del portalgun-*.jar
del spartanshields-*.jar
del colossal-*.jar

write-host "`n Change Configs `n"

$config = gc '..\scripts\00-recipes.zs'

$config = $config | ? {
   $_ -notmatch 'openmodularturrets' -and 
   $_ -notmatch 'modcurrency' -and 
   $_ -notmatch 'spartanshields'

 }

$config | out-file '..\scripts\00-recipes.zs' -Encoding ascii

write-host "`n All Done!"

sleep -Seconds 10