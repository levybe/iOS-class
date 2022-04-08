/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection: [Any] = [1.0, 9.1106, 17, 36, "Something", "Something else", true, false]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for thing in collection {
    if thing is Double {
        print("The double has a value of \(thing).")
    }
    else if thing is Int {
        print("The integer has a value of \(thing).")
    }
    else if thing is String {
        print("The string has a value of \(thing).")
    }
    else if thing is Bool {
        print("The boolean has a value of \(thing).")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var things: [String: Any] = ["Double" : 8.77249, "Integer" : 9001, "String" : "Something else else?", "Boolean" : false]
print (things)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for thing in things {
    if let value = thing.value as? Double {
        total += value
    }
    else if let value = thing.value as? Int {
        total += Double(value)
    }
    else if thing.value is String {
        total += 1
    }
    else if let value = thing.value as? Bool {
        if value {
            total += 2
        }
        else {
            total -= 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for thing in things {
    if let value = thing.value as? Double {
        total2 += value
    }
    else if let value = thing.value as? Int {
        total2 += Double(value)
    }
    else if let value = thing.value as? String {
        if let unwrappedValue = Double (value) {
            total2 += unwrappedValue
        }
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
