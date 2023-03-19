function qwerty(numb) {
    let res_arr = []
    let temp_arr = []
    for (let i = 1; i <= numb; i++){
      if (i % 3 === 0){
        temp_arr.push(i)
        res_arr.push(temp_arr)
        temp_arr = []
      }
      else {
        temp_arr.push(i)
      }
    }
    return res_arr
  }