// Given a list of n numbers, determine if it contains any duplicate numbers.

func duplicates (nums: [Int]) {
  // a hash set would be better but idk how to us those yet :(
  extant_nums: [Int : Bool] = [:]
  for num in nums {
    if extant_nums[num] == nil {
      extant_nums[num] = True
    }
    else {
      return True // there is a duplicate
    }
  }
  return False
}

print(duplicates([0,1,2,3,4]))
print(duplicates([0,1,2,2,3,4]))
print(duplicates([-3,-6,0,1,2,-6,4]))
