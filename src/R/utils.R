insolation <- function(times, astrosol=la04,...){
  #' 
  #' @title get insolation based on astronomical solution
  #' 
  #' @param times: numeric vector, time (years) before present
  #' @param astrosol: astronomical solution to be used, see ?Insol
  #' 
  #' @return numeric vector of length(times): insolation
  sapply(times, function(tt) Insol(orbit=astrosol(tt)))
}

ins_to_sl = function(from, to, by , max_ampl = 1){
  #' 
  #' @title Translate insolation into sea level
  #' 
  #' @param  from: numeric, age in myr when observation starts
  #' @param  to: numberi, age in myr when observation ends
  #' @param  by: numeric, time increments in myr for obs
  #' @param max_ampl: numeric, maxumum SL amplitude
  #' 
  #' @returns list with components x and y. x is age, y is sea level 
  
  # turn age in myr into time BP in years 
  from = - from * 10^6
  to = - to * 10^6
  by = by * 10^6
  tt = seq(from = from, to = to, by = by)
  
  # get insolation
  isl <- insolation(tt, la04)
  # normalize
  # mean 0
  isl = isl - mean(isl)
  # max amplitude 1
  isl = isl/max(abs(isl)) * max_ampl
  return(list(x = tt * 10^-6, # myr before present
              y = isl))
  
}