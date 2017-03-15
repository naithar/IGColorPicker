//
// Copyright (c) 2017 iGenius Srl
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import Foundation


/// https://gist.github.com/gotev/76df9006674762859626846cf171ff80
extension UIColor {
    
    var redValue: CGFloat {
        guard let components = cgColor.components, components.count > 0 else { return 0 }
        return components[0]
    }
    
    var greenValue: CGFloat {
        guard let components = cgColor.components, components.count > 1 else { return 0 }
        return components[1]
    }
    
    var blueValue: CGFloat {
        guard let components = cgColor.components, components.count > 2 else { return 0 }
        return components[2]
    }
    
    var alphaValue: CGFloat {
        guard let components = cgColor.components, components.count > 3 else { return 1 }
        return components[3]
    }
    
    var isWhiteText: Bool {
        
        let red = self.redValue * 255
        let green = self.greenValue * 255
        let blue = self.blueValue * 255
        
        // https://en.wikipedia.org/wiki/YIQ
        // https://24ways.org/2010/calculating-color-contrast/
        let yiq = ((red * 299) + (green * 587) + (blue * 114)) / 1000
        return yiq < 192
    }
    
}
