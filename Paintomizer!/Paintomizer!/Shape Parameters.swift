//
//  Shape Parameters.swift
//  Paintomizer!
//
//  Created by Benjamin Ethan Levy on 5/9/22.
//

import Foundation
import CoreGraphics

struct HexagonParameters {
    let numSegments = Int.random(in: 1..<12)
    static var segments = [Segment]()
    
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    init() {
        for _ in 0..<numSegments {
            HexagonParameters.segments.append(
                Segment (
                    // Modifying the random parameters of the line attribute in Segment will change how far each point can go.
                    line:    CGPoint(x: Double.random(in: 1..<5), y: Double.random(in: 1..<5)),
                    curve:   CGPoint(x: Double.random(in: 1..<5), y: Double.random(in: 1..<5)),
                    control: CGPoint(x: Double.random(in: 1..<5), y: Double.random(in: 1..<5))
                )
            )
        }
    }
}
