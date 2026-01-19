//
// MatchMarkers.swift
// StanfordCS193p
//
// Created by Aaron Makaruk on 1/15/26.
//

import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
}

struct MatchMarkers: View {
    var matches: [Match]

    var body: some View {
        HStack {
            VStack {
                matchMarker(peg: 0)
                matchMarker(peg: 1)
            }
            VStack {
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
            VStack {
                matchMarker(peg: 4)
                matchMarker(peg: 5)
            }
        }
    }
    // Renders one Mastermind-style feedback peg: black fill = exact, white + black border = inexact, white only = no match.
    func matchMarker(peg: Int) -> some View {
        let exactCount = matches.count { $0 == .exact }
        let inexactCount = matches.count { $0 != .nomatch }
        return Circle()
            .fill(exactCount > peg ? Color.primary : Color.clear)
            .strokeBorder(inexactCount > peg ? Color.primary : .clear, lineWidth: 2)
            .aspectRatio(1, contentMode: .fit)
    }

}

#Preview {
    MatchMarkers(matches: [.exact, .inexact, .nomatch, .exact, .exact, .inexact])
}
