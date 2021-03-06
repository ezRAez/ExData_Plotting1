source("../data/clean.R")

# |||||||||||| PLOT 4 ||||||||||||||
# ||||||| Save to plot4.png ||||||||

Sys.setlocale(category = "LC_TIME", locale = "en_GB.UTF-8")

par(mfrow = c(2,2))
# TL
with(selected_dates, plot(Time, Global_active_power,
     type = "l",
     xlab = "", ylab = "Global Active Power",
     cex.lab = 0.7, cex.axis = 0.8,
))

# TR
with(selected_dates, plot(Time, Voltage,
     type = "l",
     xlab = "", ylab = "Voltage",
     cex.lab = 0.7, cex.axis = 0.8,
))

# BL
plot(selected_dates$Time, selected_dates$Sub_metering_1,
     type = "l", ylab = "Energy sub metering", xlab = "", cex.lab = 0.7, cex.axis = 0.8)
lines(selected_dates$Time, selected_dates$Sub_metering_2, col = "red")
lines(selected_dates$Time, selected_dates$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
     lty = c(1,1,1), col = c("black","red", "blue"), cex = 0.7, bty = "n")

# BR
with(selected_dates, plot(Time, selected_dates$Global_reactive_power,
     type = "l",lwd = 0.5,
     xlab = "datetime", ylab = "Global_reactive_power",
     cex.lab = 0.7, cex.axis = 0.8))

dev.copy(png, 'plot4.png',  width = 480, height = 480)
dev.off()
