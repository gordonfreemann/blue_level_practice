import Foundation

public func makeLadder(col: Int, row: Int) -> [[Int]]
{
    
    var ladder: Array<Array<Int>> = [[Int]]()
    
    for _ in 0..<col
    {
        var innerArray = Array<Int>()
        for _ in 0..<row
        {
            innerArray.append(Int(arc4random()%2))
        }
        ladder.append(innerArray)
    }
    
    return ladder
}

public func printLadder(array : Array<Array<Int>>)
{
    for innerArray in array
    {
        for item in innerArray
        {
            print("|", terminator: "")
            if item == 0
            {
                print("-", terminator : "")
            }
            else if item == 1
            {
                print(" ", terminator : "")
            }
        }
        print("|")
    }
}
