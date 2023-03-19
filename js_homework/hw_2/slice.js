function mySlice (array, start, end) {   
    start = start > 0 ? start: array.length +start  
    end = end > 0 ? end: array.length + end
    let res_arr = []
    for (let i = start; i <= end; i++) {
       res_arr.push(array[i])
    }
    return res_arr
  }