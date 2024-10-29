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
