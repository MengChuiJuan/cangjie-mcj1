import std.unittest.*
import std.unittest.testmacro.*
import string_utils_demo.*

@Test
class ReverseTest {
    @TestCase
    func testReverseNormal() {
        @Expect(reverse("hello"), "olleh")
    }
    @TestCase
    func testReverseEmpty() {
        @Expect(reverse(""), "")
    }
    @TestCase
    func testReverseSingle() {
        @Expect(reverse("a"), "a")
    }
}

@Test
class PalindromeTest {
    @TestCase
    func testPalindromeTrue() {
        @Expect(isPalindrome("racecar"), true)
    }
    @TestCase
    func testPalindromeWithSpaces() {
        @Expect(isPalindrome("never odd or even"), true)
    }
    @TestCase
    func testPalindromeFalse() {
        @Expect(isPalindrome("hello"), false)
    }
}

@Test
class UpperLowerTest {
    @TestCase
    func testToUpper() {
        @Expect(toUpper("hello"), "HELLO")
    }
    @TestCase
    func testToLower() {
        @Expect(toLower("WORLD"), "world")
    }
    @TestCase
    func testMixed() {
        @Expect(toUpper("AbCd"), "ABCD")
    }
}

@Test
class VowelCountTest {
    @TestCase
    func testVowelsOnly() {
        @Expect(countVowels("aeiou"), 5)
    }
    @TestCase
    func testNoVowels() {
        @Expect(countVowels("xyz"), 0)
    }
    @TestCase
    func testMixedCase() {
        @Expect(countVowels("Hello World"), 3) // e, o, o
    }
}
