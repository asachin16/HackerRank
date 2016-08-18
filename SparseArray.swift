//https://www.hackerrank.com/challenges/sparse-arrays
func spareArray(){
    var N = Int(readLine()!)!
    var stringSet:[String] = []
    while N > 0{
        stringSet.append(readLine()!)
        N -= 1
    }
    var Q = Int(readLine()!)!
    while Q > 0{
        let query = readLine()!
        let filter = stringSet.filter{$0 == query}
        print(filter.count)
        Q -= 1
    }
    
    
    
}
spareArray()