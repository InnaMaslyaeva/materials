# 2025.02.15 1.2 Function Evaluation 6 min 1.2
whichMin= function(a) {
  n= length(a)
  ind=-1
  amin= a[1]
  for (i in 2:n) {
    if (a[i] < amin) {
      amin <- a[i]
      ind <- i
    }
  }
   return(ind)
}
a=sample(1:100, 10)
print(a)
print(whichMin(a))
