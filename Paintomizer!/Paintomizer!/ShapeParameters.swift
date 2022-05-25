//
//  ShapeParameters.swift
//  Paintomizer!
//
//  Created by Benjamin Ethan Levy on 5/25/22.
//

import Foundation
import CoreGraphics

struct ShapeParameters {
    let numSegments = Int.random(in: 2..<12)
    var segments = [Segment]()
    
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    let segmentsTests = [
            Segment(
                line:    CGPoint(x: 1.0, y: 0.0),
                curve:   CGPoint(x: 0.0, y: 0.0),
                control: CGPoint(x: 0.0, y: 0.0)
            ),
            Segment(
                line:    CGPoint(x: 1.0, y: 1.0),
                curve:   CGPoint(x: 0.0, y: 0.0),
                control: CGPoint(x: 0.0, y: 0.0)
            ),
            Segment(
                line:    CGPoint(x: 0.0, y: 1.0),
                curve:   CGPoint(x: 0.00, y: 0.0),
                control: CGPoint(x: 0.00, y: 0.0)
            )
            ]
    
//    init() {
//        for _ in 0..<numSegments {
//            segments.append(
//                Segment (
//                    // Modifying the random parameters of the line attribute in Segment will change how far each point can go.
//                    line:    CGPoint(x: Double.random(in: 0.01..<1), y: Double.random(in: 0.01..<1)),
//                    curve:   CGPoint(x: Double.random(in: 0.01..<1), y: Double.random(in: 0.01..<1)),
//                    control: CGPoint(x: Double.random(in: 0.01..<1), y: Double.random(in: 0.01..<1))
//                )
//            )
//        }
//    }
}
