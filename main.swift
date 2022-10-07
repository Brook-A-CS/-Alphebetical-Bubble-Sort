var arrayOfWords = [String]()

func read(_ array: inout [String]) {    
    var line : String?
    
    repeat {
        line = readLine()?.lowercased()
        if line != nil {
            array.append(line!)
        }
    } while line != nil
}

func printArray(array: [String]) {
    for element in array {
        print(element)
    }
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp   
}

func bubbleSort(_ sortingIntegers: inout [String]) {
    
    var swapCounter = 0
    repeat {
        swapCounter = 0
        
        for index in 0 ..< sortingIntegers.count - 1 {

            let thisElement = sortingIntegers[index]
            let nextElement = sortingIntegers[index + 1]
            
            if thisElement > nextElement {
                sortingIntegers.swapAt(index, index + 1)
                swapCounter += 1
            }
        }
    } while swapCounter != 0

    
}

read(&arrayOfWords)
bubbleSort(&arrayOfWords)
//printArray(array: arrayOfWords) 
