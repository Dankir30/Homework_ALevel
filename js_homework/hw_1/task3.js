function paperCount(sheetsInReamPaper, consumptionPerWeek, weeksAmount) {
    let finalPaperAmount = (consumptionPerWeek / sheetsInReamPaper) * weeksAmount
    return MyRound(finalPaperAmount) + 1
}

function MyRound(value) {
    let temp = true
    if (isFloat(value) == temp) {
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