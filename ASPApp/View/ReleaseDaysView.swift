//
//  ReleaseDaysView.swift
//  ASPApp
//
//  Created by ASKER on 20.05.2023.
//

import SwiftUI

struct ReleaseDaysView: View {
    @StateObject var randcVM = ReleaseAndCalendarViewModel()
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading){
                Text("Часы")
                    .font(.system(size: 20))
                    .foregroundColor(Color("hourcolor"))
                    .bold()
                HStack(spacing:20){
                    Button {
                        randcVM.selectHour = "1"
                    } label: {
                        Text("1ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                           
                    }.padding(10)
                        .background( randcVM.selectHour == "1" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "2"
                    } label: {
                        Text("2ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }
                    .padding(10)
                    .background( randcVM.selectHour == "2" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "3"
                    } label: {
                        Text("3ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }
                    .padding(10)
                    .background( randcVM.selectHour == "3" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "4"
                    } label: {
                        Text("4ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }
                    .padding(10)
                    .background( randcVM.selectHour == "4" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "5"
                    } label: {
                        Text("5ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "5" ? .white:.clear)
                        .cornerRadius(50)
                }
                HStack(spacing:20){
                    Button {
                        randcVM.selectHour = "6"
                    } label: {
                        Text("6ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "6" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "7"
                    } label: {
                        Text("7ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "7" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "8"
                    } label: {
                        Text("8ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }
                    .padding(10)
                    .background( randcVM.selectHour == "8" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "9"
                    } label: {
                        Text("9ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "9" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "10"
                    } label: {
                        Text("10ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "10" ? .white:.clear)
                        .cornerRadius(50)
                }
                HStack{
                    Button {
                        randcVM.selectHour = "11"
                    } label: {
                        Text("11ч")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "11" ? .white:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "БС"
                    } label: {
                        Text("БС")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "БС" ? .red:.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "В"
                    } label: {
                        Text("В")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "В" ? .green :.clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "БЛ"
                    } label: {
                        Text("БЛ")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "БЛ" ? .yellow : .clear)
                        .cornerRadius(50)
                    Button {
                        randcVM.selectHour = "ОТ"
                    } label: {
                        Text("ОТ")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .bold()
                    }.padding(10)
                        .background( randcVM.selectHour == "ОТ" ? .mint :.clear)
                        .cornerRadius(50)
                }
            } .padding(5)
            .frame(maxWidth: .infinity)
            .background(.cyan
                .opacity(0.5))
            .cornerRadius(20)
        }
    }
}

struct ReleaseDaysView_Previews: PreviewProvider {
    static var previews: some View {
        ReleaseDaysView()
    }
}
