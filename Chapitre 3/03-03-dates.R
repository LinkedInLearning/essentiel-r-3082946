# Savoir formater, manipuler et opérer des calculs sur des dates avec le package {lubridate}

library(lubridate)

# récupérer la date courante
today()

now()

# conversion simple sur la date du jour
maintenant<-now()
maintenant

year(maintenant)
month(maintenant)
day(maintenant)

month(maintenant,label = TRUE)
month(maintenant,label = TRUE ,abbr = FALSE)

# convertissons les dates
ymd("2022-03-21")

ydm("2022 17 May")

ymd("2022 May, 17")

hms("15:34:43")


# Choisir sa timezone
ymd_hms("2022/05/12 00:34:43")

ymd_hms("2022/09/21 10:34:43", tz = "America/Toronto")

ymd_hms("2022/01/29 5:34:43", tz = "Africa/Abidjan")

# Opérations sur les dates
ymd(20220101) + years(1)
ymd(20220101) - years(1)


# Anniversaire de Conan Doyles
anni <- as.Date("22/05/1859", format="%d/%m/%Y")
adj <- as.Date(maintenant, format="%d/%m/%Y")
age <- as.numeric((adj-anni)/365)
age


dmy_h("05-07-2022 13")
duration("0 hours 30 min")
duration("1.5 hours")
