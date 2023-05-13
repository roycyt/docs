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

https://apscheduler.readthedocs.io/en/3.x/modules/triggers/cron.html


每兩分鐘執行一次：

```
scheduler.add_job(
  check_and_notify,
  "cron",
  day_of_week="mon-fri",
  hour="*",
  minute="*/2",
)
```

每天早上八點執行一次：

```
scheduler.add_job(
  check_and_notify, "cron", day_of_week="mon-fri", hour="8", minute="0"
)
```
