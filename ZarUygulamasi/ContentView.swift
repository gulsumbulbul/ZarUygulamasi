//
//  ContentView.swift
//  ZarUygulamasi
//
//  Created by Gülsüm Bülbül on 27.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var zar1 = 1
    @State private var zar2 = 1
    @State private var skor = 2

    var body: some View {
        VStack{
            HStack {
                ZarImage(sayi: zar1)
                ZarImage(sayi: zar2)
            }
            .padding()
            Text("score:  \(skor)")
                .font(.largeTitle)
                .padding()
            Button("Zarları at"){
                randomSayi()
                skorHesaplama()
            }.buttonStyle(.borderedProminent).font(.largeTitle)
        }
    }
    
    func randomSayi() {
        zar1 = Int.random(in: 1...6)
        zar2 = Int.random(in: 1...6)
    }
    
    func skorHesaplama(){
        skor = zar1 + zar2
    }
    
}

struct ZarImage: View{
    var sayi: Int
    var body: some View{
        Image(systemName: "die.face.\(sayi).fill")
            .resizable()
            .frame(width: 150, height: 150)
            .padding()
    }
}

#Preview {
    ContentView()
}
