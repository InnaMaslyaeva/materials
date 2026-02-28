# 2025.02.15 recursion 3.2

factorialRecursive= function(n) {
  if(n==1){
      return(1)
  }
  else{
      return(n*factorialRecursive(n-1)) 
  }
}
x=2
result= factorialRecursive(x)
#cat( "factorial", n, "= ", result, "\n")
print(result)
