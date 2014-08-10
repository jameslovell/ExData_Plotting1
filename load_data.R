load_data <- function(){
  fullData <- read.csv("household_power_consumption.txt", 
                       header=TRUE, 
                       sep=";",
                       na.strings="?",
                       colClasses=c(rep("character", 2), rep("numeric", 7)))
  
  fullData$Time <- strptime(paste(fullData$Date, fullData$Time), "%d/%m/%Y %H:%M:%S")
  fullData$Date <- as.Date(fullData$Date, "%d/%m/%Y")
  plotData <- fullData[fullData$Date>="2007-02-01" & fullData$Date<="2007-02-02",]
  
  return(plotData)
}