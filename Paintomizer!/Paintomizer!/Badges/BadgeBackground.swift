//
//  BadgeBackground.swift
//  Paintomizer!
//
//  Created by Benjamin Ethan Levy on 5/12/22.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        Path { path in
            var width: CGFloat = 100
            let height = width
            path.move(
                to: CGPoint(
                    x: width * Double.random(in: 0...1),
                    y: height * Double.random(in: 0...1))
                )
            
            HexagonParameters.segments.forEach { segment in
                path.addLine(
                    to: CGPoint(
                        x: width * segment.line.x + xOffset,
                        y: height * segment.line.y
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * segment.curve.x + xOffset,
                        y: height * segment.curve.y
                    ),
                    control: CGPoint(
                        x: width * segment.control.x + xOffset,
                        y: height * segment.control.y
                    )
                )
            }
        }
        .fill(.black)
    }
}


struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
