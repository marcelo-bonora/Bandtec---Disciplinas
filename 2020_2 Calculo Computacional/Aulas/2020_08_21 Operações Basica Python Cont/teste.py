
import psutil

teste = psutil.cpu_percent(interval=1, percpu=True)
teste2 = psutil.cpu_percent()


for x in teste:
    print(x, )

