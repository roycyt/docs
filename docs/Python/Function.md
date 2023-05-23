# Default values
When a function is created with a default value, that same object
is used in every function call where the default value is not overridden.
Unless this shared state is desired, it’s better to use immutable state for default values, or a unique object to serve as an identity check.
# Explicitly positional/key-value
A function signature containing `/` specifies that the arguments to the left in the function signature are positional only. `*` conversely specifies that arguments to the right in the function signature are keyword only. Arguments between the two can be called in either
manner.
```python
def greet(name, /, title, *, punctuation):
```