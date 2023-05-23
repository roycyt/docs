Variables defined within a function block are not variables which can be accessed from outside the function block. The function block is said to have it’s own *local scope*, also referred to as a *namespace* (or, the space where a given variable name is assigned), and that block scope is separate from the top-level *global scope* of the interpreter.
# Nested Scopes
The block scopes can be nested. A nested scope is a scope that
is defined within another scope. Any scope which is nested can read
variables from scopes which enclose the nested scope.
