//
//  PathBuilder.swift
//  AnimatedWaveViewExample
//
//  Created by Wilkin, Jason on 3/2/18.
//  Copyright © 2018 Nike. All rights reserved.
//

import Foundation
import UIKit

struct PathBuilder {
    
    static func buildStar() -> UIBezierPath {
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: 12.5, y: 0))
        starPath.addLine(to: CGPoint(x: 14.82, y: 5.37))
        starPath.addLine(to: CGPoint(x: 19.85, y: 2.39))
        starPath.addLine(to: CGPoint(x: 18.57, y: 8.09))
        starPath.addLine(to: CGPoint(x: 24.39, y: 8.64))
        starPath.addLine(to: CGPoint(x: 20, y: 12.5))
        starPath.addLine(to: CGPoint(x: 24.39, y: 16.36))
        starPath.addLine(to: CGPoint(x: 18.57, y: 16.91))
        starPath.addLine(to: CGPoint(x: 19.85, y: 22.61))
        starPath.addLine(to: CGPoint(x: 14.82, y: 19.63))
        starPath.addLine(to: CGPoint(x: 12.5, y: 25))
        starPath.addLine(to: CGPoint(x: 10.18, y: 19.63))
        starPath.addLine(to: CGPoint(x: 5.15, y: 22.61))
        starPath.addLine(to: CGPoint(x: 6.43, y: 16.91))
        starPath.addLine(to: CGPoint(x: 0.61, y: 16.36))
        starPath.addLine(to: CGPoint(x: 5, y: 12.5))
        starPath.addLine(to: CGPoint(x: 0.61, y: 8.64))
        starPath.addLine(to: CGPoint(x: 6.43, y: 8.09))
        starPath.addLine(to: CGPoint(x: 5.15, y: 2.39))
        starPath.addLine(to: CGPoint(x: 10.18, y: 5.37))
        starPath.close()
        return starPath
    }
}
