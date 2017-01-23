source("../data/clean.R")

# |||||||||||| PLOT 3 ||||||||||||||
# ||||||| Save to plot3.png ||||||||

Sys.setlocale(category = "LC_TIME", locale = "en_GB.UTF-8")

plot(selected_dates$Time, selected_dates$Sub_metering_1,
     type = "l", ylab = "Energy Sub Metering", cex.lab = 0.7, xlab="")

lines(selected_dates$Time, selected_dates$Sub_metering_2, col = "red")
lines(selected_dates$Time, selected_dates$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1,1), col = c("black","red", "blue"), cex = 0.8)

dev.copy(png, 'plot3.png',  width = 480, height = 480)
dev.off()
