powerData <-read.table('household_power_consumption.txt',header=TRUE,
             sep=';',na.strings='?')

powerData <- powerData[powerData$Date=='1/2/2007' | powerData$Date=='2/2/2007',]


png(filename='plot1.png',width=480,height=480,units='px')

hist(powerData$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

dev.off()