function calculateFactial(number) {
    let factorial = 1
    while (number > 1) {
        factorial *= number
        number -= 1
    }
    return factorial
}
