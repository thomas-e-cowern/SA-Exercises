import UIKit

// Closure Strong Reference Cycle (Brian Voong)

class HTMLElement {
    
    let name: String
    let text: String
    
    lazy var asHTML: () -> String = { [weak self] in
        guard let this = self else { return "" }
        return "<\(this.name)> \(this.text) </\(this.name)>"
    }
    
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("HTMLElement \(name) is being deallocated")
    }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "Some Text Right Here")
paragraph?.asHTML()

paragraph = nil
