def merge_sort(array)
  if array.length < 2
    return array
  else
    halff = merge_sort(array[0..(array.length/2 - 1)])
    halfs = merge_sort(array[(array.length/2)..(array.length-1)])
    return merge(halff, halfs, array.length)
  end
end

def merge(halff, halfs, length)
  merged_array = Array.new
  it1 = 0
  it2 = 0
  until merged_array.length == (length)
    if halff[it1] == nil
      merged_array.push(halfs[it2])
      it2 += 1
    elsif halfs[it2] == nil
      merged_array.push(halff[it1])
      it1 += 1
    elsif halff[it1] < halfs[it2]
      halff[it1]
      merged_array.push(halff[it1])
      it1 += 1
    else
      halfs[it2]
      merged_array.push(halfs[it2])
      it2 += 1
    end
  end
  return merged_array
end


p merge_sort([3, 5, 7, 2, 6, 1, 4, 12, 8, 10, 11, 9])
