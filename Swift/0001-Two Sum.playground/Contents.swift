func twoSum(nums: [Int], target: Int) -> [Int] {
    
    var dic: [Int: Int] = [:]
    
    for (index , num) in nums.enumerated() {
                    
        // 以数字为索引，index 为值
        // 变求和为求差，如果差存在于字典的key中
        // dff + num = target，找到一组答案
        let diff = target - num
        if dic.keys.contains(diff) {
            return [dic[diff], index] as! [Int]
        }
        dic.updateValue(index, forKey: num)
    }
    
    return [Int]()
}
    
print( twoSum(nums:[-3,2,4], target:6) )



