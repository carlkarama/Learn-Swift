import UIKit

/**
 * Extensions allow us to add functionality to any type. To illustrate this, we'll create a function that removes whitespaces from a string
 * Functionality easier to find
 * Internal access to data since its as if they were originally there. They get access to the internal types data
 * Enables devs to manipulate data directly or in place.
 */

/**
 * @additionalkeywords learnt - mutating (this basically means the extension function name has changed and) we can instead write trim and make it call trimmed extension method inter
 */

var quote = "  The truth is rarely pure and simple  "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    mutating func trim() {
        self = self.trimmed()
    }
}

quote.trim()
