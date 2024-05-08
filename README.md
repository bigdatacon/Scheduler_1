как запускать :  

Scheduler_1/cmake-build-debug$ cmake --build .  
[2/2] Linking CXX executable Scheduler_1


Scheduler_1/cmake-build-debug$ ./Scheduler_1  
434235 7 9  "это результат"  
Scheduler_1/cmake-build-debug$ python3  
import my_module  
print(my_module.add_arrays([1, 2, 3], [4, 500066, 6999]))  
[5, 500068, 7002] - "это результат"  
quit()  
  
Также в файле test_1.py после билда - должна появиться возможность (ide сама предлагает) установить созданные в файле cpp my_module или даже без предложения установки
поскольку билд прошел - то можно просто файл test_1.py запускать через run - и будет то же результат  что и при запуске через терминал 
https://disk.yandex.ru/i/EPtzaXmLaHriNQ
