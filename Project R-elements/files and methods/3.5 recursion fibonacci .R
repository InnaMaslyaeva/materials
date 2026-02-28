fib=function(n){
  a=rep(0, n)
  a[1]=0
  a[2]=1
  for (i in 3:n){
    a[i]=a[i-2]+a[i-1]
  }
  return(a)
}

x = fib(15)
print(x)