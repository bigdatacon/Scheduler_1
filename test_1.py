import sys
sys.path.append('/home/user1/CLionProjects/Scheduler_1/cmake-build-debug')
import my_module


a = [1, 2, 3]
b = [4, 5, 787987]
result = my_module.add_arrays(a, b)
print(result)  # Выведет [5, 7, 9]


"""
как запускать 1

(venv) user1@host1:~/CLionProjects/Scheduler_1/cmake-build-debug$ cmake --build .
[2/2] Linking CXX executable Scheduler_1
(venv) user1@host1:~/CLionProjects/Scheduler_1/cmake-build-debug$ ./Scheduler_1
434235 7 9
(venv) user1@host1:~/CLionProjects/Scheduler_1/cmake-build-debug$ python3
Python 3.10.12 (main, Nov 20 2023, 15:14:05) [GCC 11.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
    >>> print(my_module.add_arrays([1, 2, 3], [4, 500066, 6999]))
Traceback (most recent call last):
File "<stdin>", line 1, in <module>
NameError: name 'my_module' is not defined
>>> import my_module
>>> print(my_module.add_arrays([1, 2, 3], [4, 500066, 6999]))
[5, 500068, 7002]
>>> quit()
"""



