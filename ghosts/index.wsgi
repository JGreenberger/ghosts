import os
import sys
import site

#Add apps dir to pythonpath
sys.path.append('/var/www/calliope.tcl.sc.edu/ghosts_database/ghosts')
sys.path.append('/var/www/calliope.tcl.sc.edu/ghosts_database/ghosts/ghosts')

os.enviorn['DJANGO_SETTINGS_MODULE'] = 'ghosts.settings'

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()
