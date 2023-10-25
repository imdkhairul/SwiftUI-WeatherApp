//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Khairul on 10/24/23.
//

import SwiftUI

struct ContentView: View {
    @State var isNightMode:Bool = false
    var body: some View {
        ZStack {
            BackGroundView(isNightMode: isNightMode)
            VStack{
                CityAddressView(cityName:"Muntasir Ibne Khairul মুনতাসীর ইবনে খায়রুল")
                MainWeatherView(imageName: "cloud.sun.fill",
                                temparature: 72)
                Spacer()
                HStack(spacing:20){
                    DayView(dayName:"SUN",
                            imageName:"cloud.sun.fill",
                            temparature: 75)
                    DayView(dayName:"SUN",
                            imageName:"cloud.sun.fill",
                            temparature: 75)
                    DayView(dayName:"SUN",
                            imageName:"cloud.sun.fill",
                            temparature: 75)
                    DayView(dayName:"SUN",
                            imageName:"cloud.sun.fill",
                            temparature: 75)
                    DayView(dayName:"SUN",
                            imageName:"cloud.sun.fill",
                            temparature: 75)
                }
                Spacer()
                Button{
                    print("ButtonPressed")
                    isNightMode.toggle()
                }label: {
                    GenericButtonView(buttonTitle:"Change Day Time")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayView: View {
    var dayName:String
    var imageName:String
    var temparature:Int
    var body: some View {
        VStack{
            Text(dayName)
                .font(.system(size: 16.0,weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 20)
            Text("\(temparature)°")
                .font(.system(size: 20.0,weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

struct BackGroundView: View {
    var isNightMode:Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNightMode ? .black : .blue,
                                                   isNightMode ? .gray : .lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityAddressView: View {
    var cityName:String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32.0,
                          weight: .medium,
                          design:.default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    var imageName:String
    var temparature:Int
    
    var body: some View {
        VStack{
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 100)
            Text("\(temparature)°")
                .font(.system(size:70.0,
                              weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom,40)
    }
}

