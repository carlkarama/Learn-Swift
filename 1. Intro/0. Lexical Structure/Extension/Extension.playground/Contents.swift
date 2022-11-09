import UIKit

/**
 * Extensions allow us to add functionality to any type. To illustrate this, we'll create a function that removes whitespaces from a string
 * Functionality easier to find
 * Internal access to data since its as if they were originally there. They get access to the internal types data
 * Enables devs to manipulate data directly or in place.
 * You can use extensions to add properties. But they must be computed properties not stored properties. Reasoning is because adding stored properties would affect the size of the data
 */

/**
 * @additionalkeywords learnt - mutating (this basically means the extension function name has changed and) we can instead write trim and make it call trimmed extension method inter
 */


extension String {
    
    /// computed property to separate array of lyrics into new lines. We can later use the lines to
    /// calculate different operations.
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
Everyday I spend my time
Drinking wine
Feeling fine
Waiting here to find the signs
That I can understand
Yes I am
"""


print(lyrics.lines.count)

