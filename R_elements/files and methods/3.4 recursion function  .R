# 2025.02.15 Function Evaluation 4 max
#1) Алгоритм вычисления функции F(n) задан следующими соотношениями:
#  F(n) = 1 при n = 1
#  F(n) = 2·F(n–1) + n + 3, если n > 1
#  Чему равно значение функции F(19)? 

# getrecursion=function(n){
#   a = rep(0, n+1)
#   print(a)
#   for(i in 2:n){
#     if(i==1){
#       a[i]=1
#     }
#     else{
#       a[i]=2*a[i-1]+i+3
#     }
#   }
#   return(a[19])
# }
getrecursion=function(n){
   if(n==1){
       return(1)
    }
    else{
      return(2*getrecursion(n-1)+n+3)
    }
  }
n=19
cat("n =", n, "\n")
result= getrecursion(n)
print(result)

