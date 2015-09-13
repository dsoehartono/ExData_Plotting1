datafile <- "household_power_consumption.txt"
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
datefilter <- as.Date(c("1/2/2007","2/2/2007"), "%d/%m/%Y")
datasubset <- data[data$Date %in% datefilter,]

globalActivePower <- as.numeric(datasubset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
