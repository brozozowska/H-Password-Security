/*:
## Advanced Rules
 You could also verify that a password contains at least one uppercase letter and one lowercase letter. That way an attacker can't limit their algorithm to lowercase letters, hoping a user was too lazy to use the shift key when typing their password.
 
 Another useful check is making sure that the password doesn't contain the username, so that the user can't choose "user01" and "user01password!".
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
/*:
### Implement your algorithm below with the additional new rules:

- Contains at least one uppercase letter and one lowercase letter
- Doesn't contain the username
 
 - Note: To detect whether a character is uppercase, use the `isUppercase` property.
 */
let username = "username01"
let password = "paSsword01#$"

var commonPassword = Bool()
var containsDigit = Bool()
var containsPunctuation = Bool()
var containsUppercase = Bool()
var containsLowercase = Bool()
var containsUsername = Bool()

if tenCommonPasswords.contains(password) {
    commonPassword = true
}

if password.contains(username) {
    containsUsername = true
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
    print("You've chosen an insecure password. Your password must contain at least one digit, one punctuation symbol and one uppercase and one lowercase symbol")
} else if containsUsername == true {
    print("Your password must not contain your username. Your password must contain at least one digit, one punctuation symbol and one uppercase and one lowercase symbol")
} else if containsDigit == true && containsPunctuation == true && containsUppercase == true && containsLowercase == true {
    print("You've chosen a secure password")
} else {
    print("Your password must contain at least one digit, one punctuation symbol and one uppercase and one lowercase symbol")
}
/*:
[Previous](@previous)  |  page 3 of 5  |  [Next: Custom Algorithm](@next)
 */
