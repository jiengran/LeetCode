func plusOne(digits: [Int]) -> [Int] {
    var array = digits
    
    // 倒序进位，一直进位到小于9，直接返回数组
    // 如果所有位全部倒序完成，仍然没有返回数组，说明是全部为9的特殊情况，在最高位补1
    for index in stride(from: digits.count - 1, through: 0, by: -1) {
        if digits[index] < 9 {
            array[index] += 1
            return array
        } else {
            array[index] = 0
        }
    }
    
    array.insert(1, at: 0)
    
    return array
}
    
print( plusOne(digits:[9,9,9,9,9]) )
