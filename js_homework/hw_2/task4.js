function mySort (array) {

    for (let i = 0; i < array.length; i++) {
      for (let j = i+1; j < array.length; j++) {
        if (array[i] > array[j]) {
          let tmp = array[i];
          array[i] = array[j + 1];
          array[j + 1] = tmp;
        }
      }
     
  }
  let res_value = array[0] + array[1]
  return res_value
}
