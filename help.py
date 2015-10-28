# -*- coding: utf-8 -*-

# python -i python_decompile.py
a = "value of a"

class B:
    x = 1
    y = 2

b = B()


# простейший профайлер для python ---------------------
import time


class Profiler(object):
    def __enter__(self):
        self._startTime = time.time()

    def __exit__(self, type, value, traceback):
        print "Elapsed time: {:.3f} sec".format(time.time() - self._startTime)

# time start
with Profiler() as p:
    # here same code
    pass
# time end

# стандартный отладчик python
import pdb; pdb.set_trace()


# удалить все pyc
find . -name \*.pyc -delete

# сортировать по индексу в tuple или атрибуту

from operator import itemgetter, attrgetter
sorted(student_tuples, key=itemgetter(2))
sorted(student_objects, key=attrgetter('age'))

messages = ['critical!!!', 'hurry!', 'standby', 'immediate!!']
sorted(messages, key=methodcaller('count', '!'))
['standby', 'hurry!', 'immediate!!', 'critical!!!']



# flask static serve
if app.config.get('DEBUG'):
    from flask import Blueprint
    assets = Blueprint(app.config.get('STATIC_URL'), 'assets', static_folder=app.config.get('STATIC_ROOT'))
    app.register_blueprint(assets)
