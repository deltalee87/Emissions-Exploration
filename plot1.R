source("downloadArchive.R")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Atot <- aggregate(Emissions ~ year,NEI, sum)

png("plot1.png",width=480,height=480,units="px",bg="transparent")

barplot(
  (Atot$Emissions)/10^6,
  names.arg=Atot$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total US PM2.5 Emissions",
  col="pink"
)

dev.off()