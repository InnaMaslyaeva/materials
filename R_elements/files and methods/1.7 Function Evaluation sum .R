# 2025.02.15 1.1 Function Evaluation 6 sum
getSum=function(a){
  n=length(a)
  if(n==0){
    return(0)
  }
  
  s=0
  n=length(a)
  for(i in 1:n){
    s=s+a[i]
    }
  return(s)
}
a=c()
a=sample(1:100, 10)
a=seq(1:100)
print(getSum(a))

