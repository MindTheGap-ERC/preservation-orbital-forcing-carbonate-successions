library("R.matlab")
#### load raw data ####
matlab_raw_data <- R.matlab::readMat("data/matlab_outputs/bathurst_2m_and_20m_amp_adm.mat")


time = matlab_raw_data$bathurst.20m.amp.time[1,]
time = time[time <= 2.58]
res_list = list()


for ( i in 1:nrow(matlab_raw_data$bathurst.20m.amp.adm.along.dip)){
  li = list()
  li[["height"]] = matlab_raw_data$bathurst.20m.amp.adm.along.dip[i,][seq_along(time)]
  li[["dist_from_shore_km"]]  = paste0(0.1 * i, " km")
  res_list[[i]] = li
}

sampling_freq_m = 0.05
lith_vals = rep(c(1,0), length(time))
for (i in seq_along(res_list)){
  res_list[[i]][["bed_bdries"]] = unique(res_list[[i]]$height[duplicated(res_list[[i]]$height)])
} 

for (i in seq_along(res_list)){
  loc = seq(from = 0, to = max(res_list[[i]]$bed_bdries), by = sampling_freq_m)
  val = approx(x = res_list[[i]]$bed_bdries,
                     y = lith_vals[1:length(res_list[[i]]$bed_bdries)],
                     method = "constant",
                     xout = loc)$y
  res_list[[i]][["df"]] = data.frame(loc,val)
  res_list[[i]][["mtm"]] = mtm(dat = res_list[[i]][["df"]],
                               pl = 3, output = 1)
}

freq_interp = 10^seq(-2, 1, by = 0.1)
mat = matrix(data = NA,
             nrow = 150,
             ncol = length(freq_interp))
for (i in 1:150){
  aa = approx(x = res_list[[i]]$mtm$Frequency, y = res_list[[i]]$mtm$Power, xout = freq_interp)$y
  mat[i,] = aa
}
levelplot(log10(mat), row_values = 1:150, column.values = log10(freq_interp))
levelplot(log10(mat))
i = 20
plot(log10(res_list[[i]]$mtm$Frequency), res_list[[i]]$mtm$Power, type = "l", xlim = c(-2,1))


max_height = sapply(1:150, function(x) max(res_list[[x]]$height))
tot_time = 2.56

 acc = tot_time / max_height
plot(1/acc, main = "m per myr") 
