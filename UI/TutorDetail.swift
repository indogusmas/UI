//
//  TutorDetail.swift
//  UI
//
//  Created by indo gusmas arung samudra on 04/04/20.
//  Copyright © 2020 indo gusmas arung samudra. All rights reserved.
//

import SwiftUI

struct TutorDetail: View {
    var name:String
    var headline: String
    var bio: String
    var body: some View{
        VStack{
            Image(name)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.orange, lineWidth: 4)
            )
            .shadow(radius: 20)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
            .lineLimit(50)
        }.padding().navigationBarTitle(Text(name),displayMode: .inline)
    }
}
