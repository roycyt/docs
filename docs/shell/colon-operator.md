source: https://stackoverflow.com/questions/7444504/explanation-of-colon-operator-in-foo-value

The expression ${SOMETHING='value'} sets SOMETHING to value if it isn't already set. This is a useful operator to have in many situations. However, it also returns the assigned value, so if you simply executed

${SOMETHING='value'}
then your shell would try to invoke the command value. This might or might not do something unwanted; at the least it would throw a message "value: command not found".

To avoid this you can use the no-op :, which evaluates its argument and then throws it away, rather than executing it. This is documented [here](http://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Bourne-Shell-Builtins).

The : builtin command is also a [POSIX standard](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#colon).
