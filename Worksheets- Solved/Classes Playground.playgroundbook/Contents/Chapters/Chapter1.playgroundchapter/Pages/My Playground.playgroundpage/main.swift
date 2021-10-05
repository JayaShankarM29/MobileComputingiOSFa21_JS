import UIKit

class Circle {
    var radius: Double = 0.0
    
    init(radius:Double){
        self.radius = radius
    }
    func getArea()->Double {
        var area = Double.pi * pow(radius, 2.0)
        return area
    }
    func getPerimeter()->Double {
        var perimeter = 2 * Double.pi * radius
        return perimeter
    }
    
}

var otherCircle = Circle(radius: 8.0)
print(otherCircle.getArea())
print(otherCircle.getPerimeter())
