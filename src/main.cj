// 加法
pub fn add(a:i64, b:i64) -> i64 {
    return a + b;
}

// 乘法
pub fn multiply(a:i64, b:i64) -> i64 {
    return a * b;
}

// 除法
pub fn divide(a:i64, b:i64) -> i64 {
    if b == 0 {
        panic("divide by zero");
    }
    return a / b;
}

// 阶乘
pub fn factorial(n:i64) -> i64 {
    if n <= 1 {
        return 1;
    }
    var res:i64 = 1;
    for i in 2..=n {
        res *= i;
    }
    return res;
}

// 判断素数
pub fn isPrime(n:i64) -> Bool {
    if n <= 1 {
        return false;
    }
    if n == 2 {
        return true;
    }
    if n % 2 == 0 {
        return false;
    }
    var i = 3;
    while i*i <= n {
        if n % i == 0 {
            return false;
        }
        i += 2;
    }
    return true;
}
