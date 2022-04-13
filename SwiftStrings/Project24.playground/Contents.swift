//import UIKit
import Foundation

let password = "12345"
password.hasPrefix("123")
password.hasSuffix("345")

//aeyrwq

extension String {
    // remove a prefix if it exists
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }

    // remove a suffix if it exists
    func deletingSuffix(_ suffix: String) -> String {
        guard self.hasSuffix(suffix) else { return self }
        return String(self.dropLast(suffix.count))
    }
    
    func withPrefix(_ prefix: String) -> String {
        guard !self.hasPrefix(prefix) else { return self }
        return prefix + self
    }
    
    func isNumeric() -> Bool {
        for character in self {
            if character.isNumber { return true }
        }
        return false
    }
    
    var capitalizedFirst: String {
        guard let firstLetter = self.first else { return "" }
        return firstLetter.uppercased() + self.dropFirst()
    }
    
    func containsAny(of array: [String]) -> Bool {
        for item in array {
            if self.contains(item) {
                return true
            }
        }

        return false
    }
}

let weather = "it's going to rain"
print(weather.capitalizedFirst)
let first = "azteca"
print(first.deletingPrefix("az"))
print(first.deletingSuffix("ca"))

let input = "Swift is like Objective-C without the C"
input.contains("Swift")
let languages = ["Python", "Ruby", "Swift"]
languages.contains("Swift")
input.containsAny(of: languages)
//Contiene un closure que llama a cada elemento para devolver un true o false
languages.contains(where: input.contains)

//let string = "This is a test string"
//let attributes: [NSAttributedString.Key: Any] = [
//    .foregroundColor: UIColor.white,
//    .backgroundColor: UIColor.red,
//    .font: UIFont.boldSystemFont(ofSize: 36)
//]
//
//let attributedString = NSAttributedString(string: string, attributes: attributes)
//
//let attributedString = NSMutableAttributedString(string: string)
//attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 8), range: NSRange(location: 0, length: 4))
//attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 16), range: NSRange(location: 5, length: 2))
//attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 24), range: NSRange(location: 8, length: 1))
//attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 32), range: NSRange(location: 10, length: 4))
//attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 40), range: NSRange(location: 15, length: 6))

"pet".withPrefix("car")
"carpet".withPrefix("car")

"SAMsun@¢".isNumeric()
"ferr0c4rr1l".isNumeric()

