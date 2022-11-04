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
wday(maintenant)

month(maintenant,label = TRUE)
month(maintenant,label = TRUE ,abbr = FALSE)
wday(maintenant,label = TRUE, abbr = FALSE)


# convertissons les dates
ymd("2022-03-21")

ydm("2022 17 May")

ymd("2022 May, 17")

myd("May, 2022, 1")

dmy("13062022")

dmy("190118")

hms("15:34:43")

hm("11.44")

# Choisir sa timezone
ymd_hms("2022/05/12 00:34:43")

ymd_hms("2022/09/21 10:34:43", tz = "America/Toronto")

ymd_hms("2022/01/29 5:34:43", tz = "Africa/Abidjan")

# Opérations sur les dates
ymd(20220101) + years(1)
ymd(20220101) + dyears(1)
ymd(20160101) + years(1)
ymd(20160101) + dyears(1)

# Ecart entre deux dates
date_depart <- dmy_hm("27/12/2016 5:45", tz="Africa/Dakar")
date_arrive <- mdy_hm("dec 28, 2022  19:30", tz="America/Toronto", locale = "English")
duree <- interval(date_depart, date_arrive)
duree

as.period(duree)
dateR  <-  as.POSIXct("01-01-2022", format  =  "%d-%m-%Y", tz="UTC")
dateR
dateLubridate  <-  dmy("01-01-2022", tz="UTC")
dateLubridate

dateR  <-  as.POSIXct(format(dateR, "%Y-2-%d"),  tz  =  "UTC")
dateR
month(dateLubridate)  <-  2
dateLubridate

# Anniversaire de Conan Doyles
anni <- as.Date("22/05/1859", format="%d/%m/%Y")
adj <- as.Date(maintenant, format="%d/%m/%Y")
age <- as.numeric((adj-anni)/365)
age


dmy_h("05-07-2022 13")
duration("0 hours 30 min")
duration("1.5 hours")
