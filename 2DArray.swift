// Enter your code here https://www.hackerrank.com/challenges/2d-array
func findMaxHourGlassSum(){
    var array:[[Int]] = []
    var sum = -999
    for _ in 0...5 {
        let line = readLine()!.characters.split{$0 == " "}.map(String.init)
        array.append(line.map{Int($0)!})
        
    }
    for i in 0...3{
        for j in 0...3{
            sum = findHourGlassSum(array, startHorizontalIndex: i, startVerticalIndex: j, maxSum: sum)
        }
    }
    print(sum)
    
    
}
func findHourGlassSum(array:[[Int]],startHorizontalIndex:Int,startVerticalIndex:Int,maxSum:Int)->Int{
    var sum = 0
    for i in startHorizontalIndex...startHorizontalIndex+2{
        sum += array[startVerticalIndex][i] + array[startVerticalIndex + 2][i]
    }
    sum += array[startVerticalIndex + 1][startHorizontalIndex + 1]
    return sum > maxSum ? sum:maxSum
    
}
findMaxHourGlassSum()