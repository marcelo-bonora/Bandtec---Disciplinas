from services.mysql import Mysql
from services.dataGenerator import get_data_cpu
from services.dataGenerator import get_data_ram
import time

#Inserir user, password, host, database
mysql = Mysql('root','bandtec', 'localhost', 'MAQUINAS')

mysql.connect()

while True:
    # values = getData()
    # values_ram = get_data_ram()
   
    values_ram = get_data_ram()
    mysql.insert_ram(values_ram)
    # time.sleep(5)

    values_cpu = get_data_cpu()
    mysql.insert_cpu(values_cpu)
    # time.sleep(5)
    # # mysql.insert(values_cpu)
    time.sleep(5)
