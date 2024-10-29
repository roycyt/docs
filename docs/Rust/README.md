# Rust

## Reference

A reference points to the memory of another value. A reference means you _borrow_ the value, but you don’t own it. 

```
let my_number = 8;
let single_reference = &my_number;
let double_reference = &single_reference;

println!(single_reference); // 8
println!(double_reference); // 8
```

This means that single_reference is only looking at the data of my_number; my_number still owns its data.

## Strings

A `&str` is a simple string. It's just a pointer to the data plus the length. It is also called a _string slice_.

```
let my_variable = "Hello, world!";
```

A `String` is a pointer with data on the heap.

Ways to make a string:

```
let my_string = String::from("Hello, World!");
let my_string = "Hello, World!".to_string();
let my_string: String = "Hello, World!".into();

let name = "Bill";
let my_string = format!("Hello, {name}!");
```

```
let size_of_string = std::mem::size_of::<String>(); // 24
```
