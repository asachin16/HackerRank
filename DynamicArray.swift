//https://www.hackerrank.com/challenges/dynamic-array
func initDynamicArray(){
    var lastAns = 0
    var firstInput = readLine()!.characters.split{$0 == " "}.map(String.init)
    let N:Int = Int(firstInput[0])!
    var q:Int = Int(firstInput[1])!
    var seqList:[[Int]] = []
    for _ in 0...N-1{
        seqList.append([])
    }
    while q > 0 {
        let inputArray = readLine()!.characters.split{$0 == " "}.map(String.init).map{Int($0)}
        let seqIndex = sequenceIndex(inputArray[1]!,lastAns: lastAns,N: N)
        if(inputArray[0] == 1){
            seqList[seqIndex].append(inputArray[2]!)
        }else{
            lastAns = seqList[seqIndex][inputArray[2]!%seqList[seqIndex].count]
            print(lastAns)
        }
        
        q -= 1
    }
    
    
}
func sequenceIndex(x:Int,lastAns:Int,N:Int)->Int{
    return (x^lastAns) % N
}

initDynamicArray()