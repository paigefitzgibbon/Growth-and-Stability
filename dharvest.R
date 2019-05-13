
#' @param Time years since beginning of observation
#' @param P population size
#' @param parms - three parameters shown below:
#' @param r growth rate 
#' @param K carrying capacity
#' @param h harvest rate
#' @param mincarbon carbon at minimum harvest

dharvest= function(Time, P, parms) {
  
  dP = parms$r * P * (1- P/parms$K) - parms$harv
  if (P+dP < parms$mincarbon){ 
    dP = parms$r*P*(1-P/parms$K)}
  
  return(list(dP))
}
