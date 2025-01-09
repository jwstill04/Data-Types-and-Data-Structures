/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection: [Any] = [3.7, 12, "John", true]
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in collection {
    if let int = item as? Int {
        print("The integer has a value of \(int)")
    } else if let double = item as? Double {
        print("The double has a value of \(double)")
    } else if let string = item as? String {
        print("The string has a value of \(string)")
    } else if let bool = item as? Bool {
        print("The boolean has a value of \(bool)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary: [String: Any] = ["Double": 15.0, "Integer": 3, "String": "Jacob", "Boolean": false, "String2": "2.0"]

for (type, value) in dictionary {
    print("\(type), \(value)")
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, value) in dictionary {
    if let double = value as? Double {
        total += double
    } else if let int = value as? Int {
        total += Double(int)
    } else if value as? String != nil {
        total += 1
    } else if let bool = value as? Bool {
        if bool {
            total += 2
        } else {
            total -= 3
        }
    }
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, value) in dictionary {
    if let double = value as? Double {
        total2 += double
    } else if let int = value as? Int {
        total2 += Double(int)
    } else if let string = value as? String {
        if let newInt = Double(string) {
            total2 += newInt
        }
    }
}

print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
