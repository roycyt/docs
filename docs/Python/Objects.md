- In Python, everything is an object, which means that each element in the language is an instance of a specific class. This includes the built-in data
types such as integers, strings, and lists, as well as more complex data structures like functions and modules.
- When a variable is assigned a value in Python, that value is actually an object.
- In Python, each object has a unique identity that is assigned to it when it is created. This identity is an integer value that is used to distinguish one
object from another. The built-in function `id()` can be used to retrieve the identity of an object.
There are specific values which Python has elected to make as what is called a **singleton**. Meaning, that there will only ever be a single instance
of this object. For example, the integers -5 through 256 are singletons, because of how common they are in everyday programming. The values `None`, `False`, and `True` are singletons as well.
- The `==` operator can be used to check if they have the same value and the `is` operator can be used to check if they have the same memory address.