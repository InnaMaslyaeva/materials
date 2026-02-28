# 3.1

# factorialRecursive= function(n) {
#   if(n==1){
#     return(1)
#   }
#   else{
#     return(n*factorialRecursive(n-1)) 
#   }
# }
# x=2
# result= factorialRecursive(x)
# #cat( "factorial", n, "= ", result, "\n")
# print(result)

f= function(n){
  if (n==1){ return(n)  }
  else {return(n+f(n-1))} #n+f(n-1)}
}

x = f(100)
print(x)