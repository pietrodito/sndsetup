## Première installation
```
fs::dir_create(paste0("~/sasdata1/sasuser/", c("packages_R_externes/", "local-R-lib/")))
system("echo '.libPaths(c(\"~/sasdata1/sasuser/local-R-lib/\", .libPaths()))' >> ~/.Rprofile")
file.edit("~/sasdata1/sasuser/packages_R_externes/sndsetup.csv")
```
+ Copiez/collez dedans le contenu du fichier [`zzz_sndsetup.csv`](https://raw.githubusercontent.com/pietrodito/sndshare/main/zzz_sndsetup.csv).
+ Puis sauvegardez.

+ Exécutez le code suivant sur la console :
```
system("base64 -d ~/sasdata1/sasuser/packages_R_externes/sndsetup.csv > sndsetup.zip")
system("unzip -o sndsetup.zip -d ~/sasdata1/sasuser/packages_R_externes/")
system("rm sndsetup.zip ~/sasdata1/sasuser/packages_R_externes/sndsetup.csv")
rstudioapi::openProject("~/sasdata1/sasuser/packages_R_externes/sndsetup/sndsetup.Rproj")
```



## Mise à jour
