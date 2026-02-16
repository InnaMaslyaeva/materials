# time in programm

#import datetime, time

from datetime import datetime, time, date
t1 = datetime.now()
print(f'{t1=}')
# program

t2 = datetime.now()
print(f'{t2=}')
delta = t2-t1
print(f'delta=}')

# -----
import time

t0 = time.strftime('%H:%M:%S')
print ('time:', t0)
# program

t1 = time.strftime('%H:%M:%S')
print ('time:', t1)
print ('time- delta:', t1, '-', t0)
