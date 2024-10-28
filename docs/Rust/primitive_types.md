# Primitive Types

## Integers

* Signed integers: i8, i16, i32, i64, i128, isize
* Unsigned integers: u8, u16, u32, u64, u128, usize
* Integer literal 預設是 i32
* usize 用在索引 (indexing)

宣告整數的幾種方式：

```
let x: u8 = 10;
let y = 10u8;
let z = 100_000_000_i32;
let _ = 100_000__000___i32;
```

## Floats

* `f32`, `f64` (default)

```
let my_float = 5.;
```

## Characters

* One character (`char`) is 4 bytes. 底層是 `u32`。
    ```
    println!("Size of a char: {}", std::mem::size_of::<char>());
    ```
* u8 可以轉成 char
    ```
    let _x: u8 = 100;
    let _c = _x as char;
    ```

## Strings

* 計算 string 佔幾 byte(s): `.len()`
* 計算 string 是幾個字元: `.chars().count()`
  * `.chars()` 將 strings 轉成 collection of character。
* 將 string 以 collection of bytes 呈現: `as_bytes()`
