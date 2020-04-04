//
//  ContentView.swift
//  UI
//
//  Created by indo gusmas arung samudra on 04/04/20.
//  Copyright © 2020 indo gusmas arung samudra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var tutors:[Tutor] = testData
    var body: some View {
        NavigationView{
            List(tutors){tutor in
                TutorCell(tutor: tutor)
            }
        .navigationBarTitle(Text("List UI"))
        }
    }
}

struct TutorCell: View {
    let tutor: Tutor
    var body: some View{
        return NavigationLink(destination:
        TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)){
            Image(tutor.imageName)
            .cornerRadius(40)
            VStack(alignment: .leading){
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}
