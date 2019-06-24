jerk <- read.csv("Jerk_sensor_log_18-12-2016.csv", header = FALSE, na.strings = "0")
bout1 <- c(jerk[1:220,])
nomotion1 <- c(jerk[221:380,])

bout2 <- c(jerk[381:590,])
nomotion2 <- c(jerk[591:750,])

bout3 <- c(jerk[751:950,])
nomotion3 <- c(jerk[951:1090,])

bout4 <- c(jerk[1091:1350,])
nomotion4 <- c(jerk[1351:1530,])

bout4 <- c(jerk[1531:1770,])
nomotion4 <- c(jerk[1771:1950,])

bout5 <- c(jerk[1951:2110,])
nomotion5 <- c(jerk[2111:2260,])

bout6 <- c(jerk[2261:2550,])
nomotion6 <- c(jerk[2551:2720,])

bout7 <- c(jerk[2721:2920,])
nomotion7 <- c(jerk[2921:3130,])

bout8 <- c(jerk[3131:3360,])
nomotion8 <- c(jerk[3361:3470,])

bout9 <- c(jerk[3471:3720,])
nomotion9 <- c(jerk[3721:4071,])

# write out the data for the training purposes. 
write.csv(nomotion9, "nomotion9.csv")
bt1 <- rbind.data.frame(bout1)
