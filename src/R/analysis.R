library("astrochron")
library("palinsol")

source("src/R/utils.R")

time_increment_myr = 0.001
timespan_obs_myr = 2.58
start_obs_myr_bp = 2.58





ins_sl_2m_amp = ins_to_sl(
  from = start_obs_myr_bp,
  to = start_obs_myr_bp - timespan_obs_myr,
  by = time_increment_myr,
  max_ampl = 2
)
ins_sl_20m_amp = ins_to_sl(
  from = start_obs_myr_bp,
  to = start_obs_myr_bp - timespan_obs_myr,
  by = time_increment_myr,
  max_ampl = 20
)

plot(ins_sl_20m_amp, type = "l")


write.table(ins_sl_2m_amp$y, file = "data/r_outputs/ins_sl_2m_amp.txt", row.names = FALSE, col.names = FALSE)
write.table(ins_sl_20m_amp$y, file = "data/r_outputs/ins_sl_20m_amp.txt", row.names = FALSE, col.names = FALSE)


loc = seq(0,2.58, by = 0.1)
dat = data.frame(ins_sl_20m_amp$x, ins_sl_20m_amp$y)
aa = mtm(dat, output = 1, pl = 3)
