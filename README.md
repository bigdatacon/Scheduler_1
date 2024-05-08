как запускать :

у меня скопировано из своей ide код - то есть прям видны пути в моем проекте в терминале
Чтобы отбросить лишние пути - то есть то что не относится к проекту  - нужно просто не учитывать эту строку  (venv) user1@host1:~/CLionProjects/

(venv) user1@host1:~/CLionProjects/Scheduler_1/cmake-build-debug$ cmake --build .
[2/2] Linking CXX executable Scheduler_1
(venv) user1@host1:~/CLionProjects/Scheduler_1/cmake-build-debug$ ./Scheduler_1
434235 7 9
(venv) user1@host1:~/CLionProjects/Scheduler_1/cmake-build-debug$ python3
>>> import my_module
>>> print(my_module.add_arrays([1, 2, 3], [4, 500066, 6999]))
[5, 500068, 7002]
>>> quit()

Также в файле test_1.py после билда - должна появиться возможность (ide сама предлагает) установить созданные в файле cpp my_module или даже без предложения установки
поскольку билд прошел - то можно просто файл test_1.py запускать через run - и будет то же результат  что и при запуске через терминал 
https://disk.yandex.ru/i/EPtzaXmLaHriNQ
