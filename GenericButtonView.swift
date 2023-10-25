//
//  GenericButtonView.swift
//  SwiftUI-WeatherApp
//
//  Created by Khairul on 10/24/23.
//

import SwiftUI

struct GenericButtonView: View {
    var buttonTitle:String
    var body: some View {
        Text(buttonTitle)
            .foregroundStyle(.blue)
            .font(.system(size: 14.0,weight: .bold))
            .frame(width:280,height: 40)
            .background(.white)
            .cornerRadius(10.0)
    }
}

#Preview {
    GenericButtonView(buttonTitle: "Button Text")
}
