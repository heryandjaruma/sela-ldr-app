//
//  HomeView.swift
//  sela
//
//  Created by Heryan Djaruma on 20/08/24.
//

import SwiftUI
import SwiftData
import PencilKit

struct HomeView: View {
    @State private var canvasView = PKCanvasView()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 20) {
                HStack {
                    Image("GF Icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    Spacer()
                        .frame(width: 60)
                    Image("BF Icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Text("Draw something cute for your partner to see ☺️")
                    .multilineTextAlignment(.center)
                    .padding()
                MyCanvas(canvasView: $canvasView)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .border(Color.secondary, width: 2)
                    .padding()
            }
        }
    }
}

struct MyCanvas: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView

    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .systemPink, width: 15)
        return canvasView
    }

    func updateUIView(_ canvasView: PKCanvasView, context: Context) { }
}

#Preview("Home View") {
    HomeView()
}
