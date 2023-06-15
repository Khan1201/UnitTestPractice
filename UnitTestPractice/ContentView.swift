//
//  ContentView.swift
//  UnitTestPractice
//
//  Created by 윤형석 on 2023/06/14.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel: ViewModel = ViewModel()

    var body: some View {
        VStack {
            Text(viewModel.buttonTitle)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(Color.blue.opacity(0.3))
            }
            .onTapGesture {
                viewModel.increseCount()
            }
            .multilineTextAlignment(.center)
            .accessibilityIdentifier("button")
            
            Text(viewModel.stateTitle)
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(viewModel.isOn ? Color.blue : Color.red)
                .padding(.top, 20)
                .accessibilityIdentifier("test")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
