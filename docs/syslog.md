```
/* Print debug messages to systemd journal logs */
#define DEBUG_ME 1
#if DEBUG_ME
# include <stdarg.h>
# include <sys/syslog.h>
# define SYSLOG_HELPER(fmt, ...) syslog(LOG_DEBUG, fmt "%s", __VA_ARGS__)
# define DPRINT(...) SYSLOG_HELPER(__VA_ARGS__, "")
#else
# define DPRINT(...)
#endif
```

與 printf 相同的用法:
```
DPRINT("/sbin/ip tunnel del %s: %s", name, strerror(ret));
```

$ journalctl | grep tunnel

https://man7.org/linux/man-pages/man3/stdarg.3.html
