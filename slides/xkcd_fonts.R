library(extrafont)
download.file("http://simonsoftware.se/other/xkcd.ttf", dest="xkcd.ttf", mode="wb")
system("mkdir ~/.fonts")
system("cp xkcd.ttf ~/.fonts")
font_import(pattern = "[X/x]kcd", prompt=FALSE)
fonts()
fonttable()
loadfonts()
