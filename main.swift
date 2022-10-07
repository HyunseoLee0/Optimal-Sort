var words = [String]()
let newWords : [String]

func swap(strings:inout [String],firstIndex:Int,secondIndex:Int)
{
    strings.swapAt(firstIndex,secondIndex)
}
func whetherStringIsGreater(string1:String,string2:String) -> Bool
{
    return string1.count > string2.count
}
func sort(unsortedStrings:[String]) -> [String]
{
    var unsortedArray = unsortedStrings
    var doSwap = true
    var index = 0
    var swapCount = 0
    repeat
    {
        swapCount = 0
        while index + 1 < unsortedArray.count
        {
            if whetherStringIsGreater(string1:unsortedArray[index],string2:unsortedArray[index + 1])
            {
                swap(strings:&unsortedArray,firstIndex:index,secondIndex:index + 1)
                swapCount += 1
            }
            index += 1
        }
        index = 0
        if swapCount == 0
        {
            doSwap = false
        }
    } while doSwap
    return unsortedArray
}
print("If you're done, then press Control + d")
while let word = readLine()
{
    if word == ""
    {
        break
    }
    else
    {
        words.append(word)
    }
}
newWords = sort(unsortedStrings:words)
print("========== The Result ==========")
for word in newWords
{
    print(word)
}
