/*:
## Custom Algorithm
 Think about more rules you could add to make your users' passwords even more secure. Implement your algorithm below.

 You can copy the code from the previous page as a starting point.
 */
import Foundation
let tenCommonPasswords = [
    "123456",
    "123456789",
    "qwerty",
    "password",
    "12345678",
    "111111",
    "iloveyou",
    "1q2w3e",
    "123123",
    "password1"
]
let digits = "0123456789"
let punctuation = "!@#$%^&*(),.<>;'`~[]{}\\|/?_-+= "

let username = "username01"
let password = "paSsword01#$$%^&"

var commonPassword = Bool()
var containsDigit = Bool()
var containsPunctuation = Bool()
var containsUppercase = Bool()
var containsLowercase = Bool()
var containsUsername = Bool()
var containsReqCharNumber = Bool()

if tenCommonPasswords.contains(password) {
    commonPassword = true
}

if password.contains(username) {
    containsUsername = true
}

if password.count >= 16 {
    containsReqCharNumber = true
}

for char in password {
    if containsDigit == false && digits.contains(char) {
        containsDigit = true
    } else if containsPunctuation == false && punctuation.contains(char) {
        containsPunctuation = true
    } else if containsUppercase == false && char.isUppercase {
        containsUppercase = true
    } else if containsLowercase == false && char.isLowercase {
        containsLowercase = true
    }
}

if commonPassword == true {
    print("You've chosen an insecure password. Your password must be more or equal than 16 symbols, must contain at least one digit, one punctuation symbol and one uppercase and one lowercase symbol")
} else if containsUsername == true {
    print("Your password must not contain your username. Your password must be more or equal than 16 symbols, must contain at least one digit, one punctuation symbol and one uppercase and one lowercase symbol")
} else if containsReqCharNumber == false {
    print("Your password must be more or equal than 16 symbols, must contain at least one digit, one punctuation symbol and one uppercase and one lowercase symbol")
} else if containsReqCharNumber == true && containsDigit == true && containsPunctuation == true && containsUppercase == true && containsLowercase == true {
    print("You've chosen a secure password")
} else {
    print("Your password must be more or equal than 16 symbols, must contain at least one digit, one punctuation symbol and one uppercase and one lowercase symbol")
}
/*:
[Previous](@previous)  |  page 4 of 5  |  [Next: Brute-Force Guessing](@next)
 */
