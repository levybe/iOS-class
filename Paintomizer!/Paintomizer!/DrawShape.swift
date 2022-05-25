//
//  DrawShape.swift
//  Paintomizer!
//
//  Created by Benjamin Ethan Levy on 5/25/22.
//
import SwiftUI

struct DrawShape: View {
    var shape = ShapeParameters()
    var body: some View {
        Path { path in
            var width: CGFloat = 375
            var height: CGFloat = 646
            path.move(
                to: CGPoint(
//                                        x: Double.random(in: 0.01..<width),
//                                        y: Double.random(in: 0.01..<height)
                    x: 0,
                        y: 0
                )
            )
            shape.segmentsTests.forEach { segment in
                path.addLine(
                    to: CGPoint(
                        x: width * segment.line.x,
                        y: height * segment.line.y
                    )
                )
            }
        }
        .fill(.black)
    }
}

struct DrawShape_Previews: PreviewProvider {
    static var previews: some View {
        DrawShape()
    }
}
