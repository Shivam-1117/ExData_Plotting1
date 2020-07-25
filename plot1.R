household <- data.table::fread("household_power_consumption.txt")
household$Date <- as.Date(household$Date, "%d/%m/%Y")
household <- household[household$Date %in% c(as.Date("2007-02-01", "%Y-%m-%d"), as.Date("2007-02-02", "%Y-%m-%d")), ]
household$Global_active_power <- as.numeric(household$Global_active_power)
par(mar = c(5, 4, 4, 1))
hist(household$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.copy(png, "plot1.png")
dev.off()
