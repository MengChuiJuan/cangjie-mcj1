package string_utils_demo

// 反转字符串
public func reverse(s: String): String {
    let chars = s.toCharArray()
    let len = chars.size
    let builder = StringBuilder()
    for (i in len - 1 down to 0) {
        builder.append(chars[i])
    }
    return builder.toString()
}

// 判断是否为回文（忽略空格和大小写）
public func isPalindrome(s: String): Bool {
    let cleaned = s.toLowerCase().replaceAll("\\s+", "")
    return cleaned == reverse(cleaned)
}

// 转大写（仅演示，仓颉有内置，这里自己实现）
public func toUpper(s: String): String {
    let diff = 'a' as Int - 'A' as Int
    let builder = StringBuilder()
    for (ch in s.toCharArray()) {
        if (ch >= 'a' && ch <= 'z') {
            builder.append((ch as Int - diff) as Char)
        } else {
            builder.append(ch)
        }
    }
    return builder.toString()
}

// 转小写
public func toLower(s: String): String {
    let diff = 'a' as Int - 'A' as Int
    let builder = StringBuilder()
    for (ch in s.toCharArray()) {
        if (ch >= 'A' && ch <= 'Z') {
            builder.append((ch as Int + diff) as Char)
        } else {
            builder.append(ch)
        }
    }
    return builder.toString()
}

// 统计元音字母个数（不区分大小写）
public func countVowels(s: String): Int {
    let vowels = ['a', 'e', 'i', 'o', 'u']
    var count = 0
    for (ch in s.toLowerCase().toCharArray()) {
        if (vowels.contains(ch)) {
            count += 1
        }
    }
    return count
}
