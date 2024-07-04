# 13 demo2024

'''
В терминологии сетей TCP/IP маской сети называют двоичное число,
которое показывает, какая часть IP-адреса узла сети относится к адресу сети,
а какая – к адресу узла в этой сети. Адрес сети получается в результате
применения поразрядной конъюнкции к заданному адресу узла и маске сети.
Сеть задана IP-адресом 192.168.32.160 и маской сети 255.255.255.240.
Сколько в этой сети IP-адресов, для которых сумма единиц в двоичной
записи IP-адреса чётна?
В ответе укажите только число.'''
# 8

from ipaddress import *

net = ip_network("204.152.228.160/225.225.225.224",0)
#ipadress = [net[:4:], net[4:7:], net[7:10:], net[10::]]
#ipadress = str(net) #.strip('/')
#ipadress = ipadress.split('.')
print(f'  {net= } ') 

##for i in range(32): 
##     net = ip_network("204.152.228.160/225.225.225.224",0)
##     #ipadress = [net[:4:], net[4:7:], net[7:10:], net[10::]]
##     ipadress = str(net) #.strip('/')
##     ipadress = ipadress.split('.')
##     print(f' {i= } {net= }  {ipadress= } ') # {ipadress= } 
##     #x10 = int(net.netmask) # маска в 10СС
##
##     #x2 = bin(x10)[2:] # маска в 2СС
##     #n1 = x2.count('1')
##     #if n1%2==0:         
##     #print(f' {i= } {net= } {x10= } {x2= } {n1= } ')
##



##for i in range(32): 
##     net = ip_network("192.168.32.160/"+ str(i),0)
##     #ipadress = [net[:4:], net[4:7:], net[7:10:], net[10::]]
##     ipadress = str(net) #.strip('/')
##     ipadress = ipadress.split('.')
##     print(f' {i= } {net= }  {ipadress= } ') # {ipadress= } 
##     #x10 = int(net.netmask) # маска в 10СС
##
##     #x2 = bin(x10)[2:] # маска в 2СС
##     #n1 = x2.count('1')
##     #if n1%2==0:         
##     #print(f' {i= } {net= } {x10= } {x2= } {n1= } ')
