# Set
- Store an **unordered** collection of **unique** items.
	- Default is mutable.
	- `frozenset` is immutable.
		```python
		frozenset({1, 2, 3})
		frozenset([4, 5, 6])
		```
- Creating an empty set is `set()`.

# Dictionary

-  Stores key-value pairs.
-  Creating an empty dictionary is `{}`.
-  Requesting a value from a dictionary using a key which is not indexed causes python to raise a `KeyError` exception.

# Tuples and Lists

- Store an **ordered** collection of items.
	- Tuple: immutable
	- List: mutable
- When you try to access an index that is out of bounds of a list or a tuple, Python raises an exception called `IndexError`.