use std.unittest;
use std.unittest.testmacro.*;
use cangjie_demo::*;

// 加法测试类
@Test
class AddTest {
    @TestCase
    fn testPosAdd() {
        @Expect(add(1,2), 3);
    }
    @TestCase
    fn testNegAdd() {
        @Expect(add(-5, -3), -8);
    }
    @TestCase
    fn testBigAdd() {
        @Expect(add(9999, 1), 10000);
    }
}

// 乘法测试
@Test
class MultiplyTest {
    @TestCase
    fn testPosMul() {
        @Expect(multiply(3,4),12);
    }
    @TestCase
    fn testZeroMul() {
        @Expect(multiply(99,0),0);
    }
    @TestCase
    fn testNegMul() {
        @Expect(multiply(-2,3),-6);
    }
}

// 除法测试（包含除零异常）
@Test
class DivideTest {
    @TestCase
    fn testNormalDiv() {
        @Expect(divide(10,2),5);
    }
    @TestCase
    fn testNegDiv() {
        @Expect(divide(-10,2),-5);
    }
    @TestCase
    @AssertThrows
    fn testDivZero() {
        divide(5,0);
    }
}

// 阶乘测试
@Test
class FactorialTest {
    @TestCase
    fn testBoundary() {
        @Expect(factorial(0),1);
        @Expect(factorial(1),1);
    }
    @TestCase
    fn testNormal() {
        @Expect(factorial(3),6);
        @Expect(factorial(5),120);
        @Expect(factorial(7),5040);
    }
}

// 素数测试
@Test
class PrimeTest {
    @TestCase
    fn testNotPrime() {
        @Expect(isPrime(4), false);
    }
    @TestCase
    fn testPrime() {
        @Expect(isPrime(7), true);
    }
    @TestCase
    fn testBigPrime() {
        @Expect(isPrime(97), true);
    }
}

// 独立测试函数
@TestCase
fn simpleAddTest() {
    @Expect(add(100,200),300);
}

@TestCase
fn simpleFactorialTest() {
    @Expect(factorial(4),24);
}
