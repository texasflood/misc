#!/usr/bin/env python

import datetime
import pytz

start = datetime.datetime(2015, 7, 24, 14, 15).replace(tzinfo=pytz.timezone('Europe/London'))
end = datetime.datetime(2015, 8, 26, 18, 40).replace(tzinfo=pytz.timezone('Europe/London'))
now = datetime.datetime.now(pytz.timezone('Europe/London'))
print start
print end
print now
print ((now - start).total_seconds())/((end - start).total_seconds())
