# Here I try to define a S4 class for data of ultrasonic anemometer

# This is the definition of class turbulence
turbulence <- setClass('turbulence', slots=c(u='numeric', v='numeric', w='numeric', t='numeric'))


# S3 method for casting a dataframe into an object of class turbulence
# Now I must do the same for matrix, default and generic function

as.turbulence <- function(data){
  if(ncol(data)!=4) stop('Ncol is different from 4')
  if(ncol(data)==4){
    turb <- turbulence(u=data[,1], v=data[,2], w=data[,3], t=data[,4])
  }
  return(turb)
}