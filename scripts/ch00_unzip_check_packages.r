

if(!("ch00_unzip_check_packages.r" %in% dir()))
  stop("These scripts were meant to be run with the",
       "working directory set to the same location as",
       "scripts")

unzip("../data/ch07/State_2010Census_DP1.zip", exdir="../data/ch07")
unzip("../data/ch07/County_2010Census_DP1.zip", exdir="../data/ch07")
unzip("../data/ch08/columbiaImages.zip", exdir="../data/ch08")
unzip("../data/ch09/holmes_anno.zip", exdir="../data/ch09")
unzip("../data/ch10/gutenbergClean_annotations.zip", exdir="../data/ch10")
unzip("../data/ch10/wiki_annotations.zip", exdir="../data/ch10")

x = require("abind") &
    require("colorspace") &
    require("coreNLP") &
    require("igraph") &
    require("jpeg") &
    require("mallet") &
    require("maptools") &
    require("RColorBrewer") &
    require("rgdal") &
    require("rgeos") &
    require("snippets") &
    require("sp")

if (x)
  print("All required packages available!")
else
  print("Some packages need to be installed (though you may do these chapter by chapter)")