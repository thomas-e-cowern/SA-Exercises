import UIKit

let figures = [-1, -7, 1, 5, -7, 0, -7, -2];
let figures2 = [4,5,6];

//write a function that returns the position or positions of the lowest valued integer and can handle these arrays or any other array

func lowest (array: [Int]) -> [Int] {

    let array = array
    var orderedArray = [Int]()
    var lowest = array[0]

    for i in 0..<array.count {
        if lowest == array[i] {
            orderedArray.append(i)
        } else if lowest > array[i] && orderedArray.count > 0 {
            orderedArray = []
            orderedArray.append(i)
            lowest = array[i]
        } else if lowest > array[i] {
            orderedArray[0] = i
            lowest = array[i]
        }
    }
    return orderedArray
}

let answer = lowest(array: figures)
print(answer)
