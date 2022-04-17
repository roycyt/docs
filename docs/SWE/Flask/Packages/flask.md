# flask

```python
import typing as t
```

# Request

```python
from flask import request
```

Request arguments:

```python
# $ curl -i "http://127.0.0.1:5000/dict?word=foo"

name = request.args.get("word") # -> str | None
if not word:
    return jsonify({"status": "error"})
```

```python
# $ curl -i "http://127.0.0.1:5000/dict?word=foo&word=bar"

words = request.args.getlist("word") # -> List[str]
# ["foo", "bar"]
```

# Response

```python
from flask import jsonify
```

* jsonify(*args: t.Any, **kwargs: t.Any) -> "Response":
