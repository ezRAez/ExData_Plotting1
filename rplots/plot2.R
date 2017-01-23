source("../data/clean.R")

# |||||||||||| PLOT 2 ||||||||||||||
# ||||||| Save to plot2.png ||||||||

Sys.setlocale(category = "LC_TIME", locale = "en_GB.UTF-8")

with(selected_dates, plot(Time, Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power (in kilowatts)",
    cex.lab = 0.7, cex.axis = 0.8))

# save the output to plot2.png
dev.copy(png,'plot2.png',  width = 480, height = 480)
dev.off()
