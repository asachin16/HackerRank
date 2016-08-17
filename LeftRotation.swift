//https://www.hackerrank.com/challenges/array-left-rotation
func rotateArray(){
    let firstLine = readLine()!.characters.split{$0 == " "}.map(String.init).map{Int($0)}
    let n:Int = firstLine[0]!
    let d:Int = firstLine[1]!
    let inputArray = readLine()!.characters.split{$0 == " "}.map(String.init)
    for i in d...n-1{
        print(inputArray[i], terminator: " ")
    }
    for i in 0...d-1{
        print(inputArray[i], terminator: " ")
    }
    
}
rotateArray()