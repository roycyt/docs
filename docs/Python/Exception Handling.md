- Exceptions are a way of handling **errors and unexpected situations** in a program.
- Using the `raise` keyword, followed by an exception object or class.
- The exception object can be any class that inherits from the built-in `Exception` type.
- Exception classes can generally be instantiated with a single `str` type argument that acts as an exception message.
- Most exceptions are derived from the `Exception` class. As such, a general `except Exception` will match most raised exceptions.

```python
try:
	# code that may raise an exception
	raise ArithmeticError
except (KeyError, ValueError):
	print("handle Key and Value errors")
except ArithmeticError as err:
	print(type(err))
```
