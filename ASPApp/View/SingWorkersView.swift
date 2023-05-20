//
//  SingWorkersView.swift
//  ASPApp
//
//  Created by ASKER on 20.05.2023.
//

import SwiftUI

struct SingWorkersView: View {
    @State var name:String = ""
    @StateObject var randcVM = ReleaseAndCalendarViewModel()
    @State private var dates: Set<DateComponents> = []
    @State var isRelease = false
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 20){
                HStack{
                    Text("\(name)")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color("hourcolor"))
                    Spacer()
                }
                .padding(5)
                MultiDatePicker("Dates Available", selection: $dates)
                            .fixedSize()
                            .onChange(of: dates) { value in

                            }
                ReleaseDaysView()
                Button {
                    //
                } label: {
                    Text("Отправить данные")
                }
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
                Spacer()
            }.padding(40)
        }
    }
}

struct SingWorkersView_Previews: PreviewProvider {
    static var previews: some View {
        SingWorkersView()
    }
}
