//
//  PlayerBox.swift
//  Scorecard
//
//  Created by Prateek Prakash on 6/11/24.
//

import SwiftUI

struct PlayerBox: View {
    var playerName: String
    var color: Color
    
    @Binding var strokes: Int
    @Binding var putts: Int
    @Binding var penalties: Int
    
    var body: some View {
        GroupBox() {
            VStack {
                HStack {
                    Text("Strokes:")
                        .font(.headline)
                    Spacer()
                    Button {
                        if strokes > 0 {
                            strokes -= 1
                        }
                    } label: {
                        Image(systemName: "minus")
                            .frame(width: 15, height: 15)
                    }
                    .buttonStyle(.bordered)
                    .disabled(strokes == 0 )
                    Text(String(strokes))
                        .font(.headline)
                        .fontDesign(.monospaced)
                    Button {
                        strokes += 1
                    } label: {
                        Image(systemName: "plus")
                            .frame(width: 15, height: 15)
                    }
                    .buttonStyle(.bordered)
                }
                HStack {
                    Text("Putts:")
                        .font(.headline)
                    Spacer()
                    Button {
                        if putts > 0 {
                            putts -= 1
                            if strokes > 0 {
                                strokes -= 1
                            }
                        }
                    } label: {
                        Image(systemName: "minus")
                            .frame(width: 15, height: 15)
                    }
                    .buttonStyle(.bordered)
                    .disabled(putts == 0 )
                    Text(String(putts))
                        .font(.headline)
                        .fontDesign(.monospaced)
                    Button {
                        putts += 1
                        strokes += 1
                    } label: {
                        Image(systemName: "plus")
                            .frame(width: 15, height: 15)
                    }
                    .buttonStyle(.bordered)
                }
                HStack {
                    Text("Penalties:")
                        .font(.headline)
                    Spacer()
                    Button {
                        if penalties > 0 {
                            penalties -= 1
                            if strokes > 0 {
                                strokes -= 1
                            }
                        }
                    } label: {
                        Image(systemName: "minus")
                            .frame(width: 15, height: 15)
                    }
                    .buttonStyle(.bordered)
                    .disabled(penalties == 0 )
                    Text(String(penalties))
                        .font(.headline)
                        .fontDesign(.monospaced)
                    Button {
                        penalties += 1
                        strokes += 1
                    } label: {
                        Image(systemName: "plus")
                            .frame(width: 15, height: 15)
                    }
                    .buttonStyle(.bordered)
                }
            }
        } label: {
            Label(playerName, systemImage: "person.fill")
                .foregroundColor(color)
        }
    }
}

#Preview {
    @Previewable @State var dummyInt = 0
    PlayerBox(playerName: "Player Name • 36", color: .yellow, strokes: $dummyInt, putts: $dummyInt, penalties: $dummyInt)
}
