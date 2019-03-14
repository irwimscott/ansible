# plumber.R
# Tests: http://localhost:8000/calcpu
# docker pull trestletech/plumber
# docker run -p 8000:8000 -v `pwd`/api.R:/plumber.R trestletech/plumber /plumber.R
#

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @png
#* @get /plot
function(){
  rand <- rnorm(100)
  hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
function(a, b){
  as.numeric(a) + as.numeric(b)
}

#* My test selic
#* @serializer unboxedJSON
#* @get /calcpu
function(){
  total = as.numeric(1500) * as.numeric(100)
  list(result=total)
}
