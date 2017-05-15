//: [Previous](@previous) / [Next](@next)
//: # Exercise 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Blur](Blur.png "Blur")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
// Make Blue Background
canvas.fillColor = Color(hue: 190, saturation: 100, brightness: 80, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)
// Text
canvas.textColor = Color(hue: 170, saturation: 100, brightness: 5, alpha: 100)
canvas.drawText(message: "blur", size: 200, x: 10, y: 279)

// Create blur
canvas.textColor = Color(hue: 170, saturation: 100, brightness: 5, alpha: 20)
for blur in stride(from: 300, to: -50, by: -7){
    canvas.drawText(message: "blur", size: 200, x: 10, y: blur)
}


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
