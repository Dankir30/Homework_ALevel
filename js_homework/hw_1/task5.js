function MyRepeat(str, number) {
    let final_string = ''
    for (let i = 1; i <= number; i++) {
        final_string += str
    }
    return final_string
}


function draw_asfsad(number) {
    let n = 1
    for (let i = number; i >= 1; i--) {
        console.log(MyRepeat('-', (i - 1)) + MyRepeat('#', n) + MyRepeat('-', (i - 1)))
        n += 2
    }
}
