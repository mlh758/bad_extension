# Bad Extension

I made this hoping to create an unsafe C library to use with the Ruby FFI for a CTF. Been struggling to make
the overflow actually work, I suspect the OS is trying to protect me.

# Building main.c

`gcc -L$(pwd) -Wall -o test main.c -lPasswordExt -fno-stack-protector`

# Building Extension

`gcc -c -Wall -Werror -fpic -fno-stack-protector password_ext.c && gcc -shared -o libPasswordExt.dylib password_ext.o`