function floorCount(roomNumber) {
  const roomsOnFloor = 3
  const floors = 9
  const roomsInPorch = roomsOnFloor * floors
  if (roomNumber % roomsInPorch === 0){
    roomNumber -=1
  }
  let porch = MyRound(roomNumber/roomsInPorch)+1
  let floor = (roomNumber - (MyRound(roomNumber/roomsInPorch)*roomsInPorch))/3
  if (isFloat(floor)===true ){
     floor = MyRound(floor) + 1
  }
  let res = `porch # ${porch}, floor # ${floor}`
  return res
}


function MyRound(value) {
  if (isFloat(value) === true) {
      let final_value = value - (value % 1)
      return final_value
  }
  else {
      return value
  }
}


function isFloat(x) {
  return (x % 1 !== 0)
}