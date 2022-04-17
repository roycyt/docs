# flask

## flask run

```bash
$ flask run
Error: Could not locate a Flask application. You did not provide the "FLASK_APP" environment variable, and a "wsgi.py" or "app.py" module was not found in the current directory.
```

```bash
$ flask run -h 0.0.0.0
```

Options:

* `-h, --host TEXT`: The interface to bind to.
* `-p, --port INTEGER`: The port to bind to.
