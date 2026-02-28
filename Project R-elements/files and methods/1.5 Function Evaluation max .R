# 2025.02.15 Function Evaluation 4 max

getMax=function(a){
    n = length(a)
    result = a[1]
    for(i in 2:n){
      if(a[i] > result){
        result = a[i]
      }
    }
    return(result)
}

a=c(2,9,3,7,12,4)
cat("a =", a, "\n")
result= getMax(a)
print(result)
