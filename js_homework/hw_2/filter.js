function myFunc(el){
    return el%2 === 0
  }
  function myFilter(array, callback) {
    let res = []
    for (let i = 0; i <= array.length; i++){
      if (callback(array[i], i, array) === true){
        res.push(array[i])
      }
    }
    return res
  }
  console.log(myFilter([0,23,382,-1,93,-234,-1123], myFunc))