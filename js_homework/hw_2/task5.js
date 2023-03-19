function fromBinary(array){
    let temp_array = []
    let n = array.length-1
    for (let i = 0; i < array.length; i++){
      let value =  Number(array[i]) * (2**n)
      n -=1
      temp_array.push(value)
    } 
    let sum = 0
    for (let i = 0; i < temp_array.length; i++){
      sum += temp_array[i]
    }
  
    return sum
  }