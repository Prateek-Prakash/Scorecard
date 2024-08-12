//
//  ContentView.swift
//  Scorecard
//
//  Created by Prateek Prakash on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    var holeNumbers = [1,2, 3, 4, 5, 6, 7, 8, 9]
    
    @State var strokesA = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var strokesB = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var strokesC = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var strokesD = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    @State var puttsA = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var puttsB = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var puttsC = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var puttsD = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    @State var penaltiesA = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var penaltiesB = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var penaltiesC = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var penaltiesD = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    var body: some View {
        TabView {
            ForEach(holeNumbers, id: \.self) { holeNumber in
                VStack(alignment: .leading) {
                    // playerA
                    PlayerBox(
                        playerName: "Player A • \(strokesA.reduce(0, +))",
                        color: .red,
                        strokes: $strokesA[holeNumber - 1],
                        putts: $puttsA[holeNumber - 1],
                        penalties: $penaltiesA[holeNumber - 1]
                    )
                    // playerB
                    PlayerBox(
                        playerName: "Player B • \(strokesB.reduce(0, +))",
                        color: .green,
                        strokes: $strokesB[holeNumber - 1],
                        putts: $puttsB[holeNumber - 1],
                        penalties: $penaltiesB[holeNumber - 1]
                    )
                    // playerC
                    PlayerBox(
                        playerName: "Player C • \(strokesC.reduce(0, +))",
                        color: .blue,
                        strokes: $strokesC[holeNumber - 1],
                        putts: $puttsC[holeNumber - 1],
                        penalties: $penaltiesC[holeNumber - 1]
                    )
                    // playerD
                    PlayerBox(
                        playerName: "Player D • \(strokesD.reduce(0, +))",
                        color: .purple,
                        strokes: $strokesD[holeNumber - 1],
                        putts: $puttsD[holeNumber - 1],
                        penalties: $penaltiesD[holeNumber - 1]
                    )
                }
            }
            .padding()
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
