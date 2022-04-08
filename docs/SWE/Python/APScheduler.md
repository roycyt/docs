# APScheduler (Advanced Python Scheduler)

```python
import time
from apscheduler.schedulers.background import BackgroundScheduler

sched = BackgroundScheduler(timezone="Asia/Taipei")

@sched.scheduled_job("cron", day_of_week="mon-fri", hour=9)
def myfunc():
┊   logging.warning("myfunc: in")

sched.start()

while True:
┊   time.sleep(1)
```
