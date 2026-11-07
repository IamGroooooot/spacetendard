import AppKit
import CoreText
import CoreGraphics
// Offscreen macOS CoreText rendering; these images are not Ghostty screenshots.
let args = CommandLine.arguments
if args.count != 5 {
    print("Usage: swift tools/render-comparison.swift FONT.ttf INPUT.txt OUTPUT.png TITLE")
    exit(1)
}
let url = URL(fileURLWithPath: args[1])
let font = CTFontCreateWithGraphicsFont(CGFont(CGDataProvider(url:url as CFURL)!)!, 19, nil, nil)
let rows = try String(contentsOfFile:args[2],encoding:.utf8).split(separator:"\n",omittingEmptySubsequences:false).dropLast()
let w=1100, h=Int(rows.count)*29+160
let context=CGContext(data:nil,width:w,height:h,bitsPerComponent:8,bytesPerRow:0,space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGImageAlphaInfo.premultipliedLast.rawValue)!
context.setFillColor(CGColor(red:0.075,green:0.09,blue:0.11,alpha:1));context.fill(CGRect(x:0,y:0,width:w,height:h))
func draw(_ text:String,_ f:CTFont,_ x:CGFloat,_ y:CGFloat,_ color:CGColor){
 let a:[NSAttributedString.Key:Any]=[NSAttributedString.Key(kCTFontAttributeName as String):f,NSAttributedString.Key(kCTForegroundColorAttributeName as String):color]
 let line=CTLineCreateWithAttributedString(NSAttributedString(string:text,attributes:a))
 context.textPosition=CGPoint(x:x,y:y);CTLineDraw(line,context)
}
let title=CTFontCreateWithName("Helvetica-Bold" as CFString,25,nil)
let small=CTFontCreateWithName("Helvetica" as CFString,15,nil)
let white=CGColor(red:0.91,green:0.94,blue:0.97,alpha:1)
let muted=CGColor(red:0.6,green:0.69,blue:0.76,alpha:1)
draw(args[4],title,40,CGFloat(h)-48,white)
draw("macOS CoreText · 19 pt · identical UTF-8 source · default OpenType features",small,40,CGFloat(h)-80,muted)
for (i,row) in rows.enumerated(){draw(String(row),font,40,CGFloat(h)-125-CGFloat(i*29),white)}
let bitmap=NSBitmapImageRep(cgImage:context.makeImage()!)
try bitmap.representation(using:.png,properties:[:])!.write(to:URL(fileURLWithPath:args[3]))
print(args[3],w,h)
