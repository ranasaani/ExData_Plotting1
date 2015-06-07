powerData <-read.table('household_power_consumption.txt',header=TRUE,
             sep=';',na.strings='?')

powerData <- powerData[powerData$Date=='1/2/2007' | powerData$Date=='2/2/2007',]

library(data.table)
library(lubridate)

powerData$DateTime<-dmy(powerData$Date)+hms(powerData$Time)

powerData<-powerData[,c(10,3:9)]


png(filename='plot3.png',width=480,height=480,units='px')


plot(powerData$DateTime,powerData$Sub_metering_1,type='l',col='black',xlab='',ylab='Energy sub metering')
lines(powerData$DateTime,powerData$Sub_metering_2,col='red')
lines(powerData$DateTime,powerData$Sub_metering_3,col='blue')


dev.off()

