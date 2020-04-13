// Given a list of n numbers, determine if it contains any duplicate numbers.

func duplicates (_ nums: [Int]) -> Bool {
  // Consider replacing with hashset
  var extantNums: [Int : Bool] = [:]
  for num in nums {
    if extantNums[num] == nil {
      extantNums[num] = true
    }
    else {
      return true  // There is a duplicate in the list
    }
  }
  return false  // There is NOT a duplicate in the list
}

print(duplicates([0,1,2,3,4]))  // False
print(duplicates([0,1,2,2,3,4]))  // True
print(duplicates([-3,-6,0,1,2,-6,4]))  // True
