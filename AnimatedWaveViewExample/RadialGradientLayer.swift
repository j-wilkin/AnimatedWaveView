//
//  RadialGradientLayer.swift
//  AnimatedWaveViewExample
//
//  Created by Wilkin, Jason on 3/2/18.
//  Copyright © 2018 Nike. All rights reserved.
//

import Foundation
import UIKit

class RadialGradientLayer: CALayer {
    
    var colors: [CGColor] = []
    var center: CGPoint = CGPoint.zero
    
    override init() {
        super.init()
        needsDisplayOnBoundsChange = true
    }
    
    init(colors: [CGColor], center: CGPoint) {
        self.colors = colors
        self.center = center
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init()
    }
    
    override func draw(in ctx: CGContext) {
        ctx.saveGState()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        // Create a range of locations (CGFloats) from 0-1 for each color
        let step: CGFloat = 1.0 / CGFloat(colors.count)
        var locations = [CGFloat]()
        for i in 0 ..< colors.count {
            locations.append(CGFloat(i) * step)
        }
        
        // Create the CGGradient
        guard let gradient = CGGradient(colorsSpace: colorSpace, colors: colors as CFArray, locations: locations) else {
            ctx.restoreGState()
            return
        }
        let gradRadius = min(self.bounds.size.width, self.bounds.size.height)
        // Draw the radial gradient in the context, starting at the center and ending at view bounds
        ctx.drawRadialGradient(gradient, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: gradRadius, options: [])
        ctx.restoreGState()
    }
}
