# 2025.02.15 Function Evaluation 4 max
getLen = function(a){
  n = length(a)
  if(n == 0){
    return("Data is empty")
  }
  result = a[1]
  for(i in 2:n){
    if(a[i] > result){
      result = a[i]
    }
  }
  return(result)
}
print(getLen(c()))

