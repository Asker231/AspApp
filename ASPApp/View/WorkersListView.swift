//
//  WorkersListView.swift
//  ASPApp
//
//  Created by ASKER on 20.05.2023.
//

import SwiftUI

struct WorkersListView: View {
    @StateObject var getDocumentVM    = GetDocumentFirebaseViewModel()
    @StateObject var removeDocumentVM = RemoveDocumentFirebaseViewModel()
    @StateObject var renameDocumentVM = RenameDocumentFirebaseViewModel()
    @State       var isOpen = false
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                List(getDocumentVM.workersList.reversed()){ value in
                    NavigationLink(destination: SingWorkersView(name: value.name)) {
                        VStack(alignment:.leading){
                            Text("\(value.name)")
                                .font(.system(size: 18))
                                .font(.system(.title))
                            Text("\(value.post)")
                                .font(.system(size: 14))
                                .font(.system(.largeTitle))
                        }
                    }
                }.onAppear{
                    getDocumentVM.getCollection()
                }
                
                HStack{
                    Button {
                        isOpen.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.white)
                    }
                    .padding(5)
                    .background(.cyan)
                    .cornerRadius(20)
                    .sheet(isPresented: $isOpen) {
                        AddWorkerView()
                    }
                }.padding(.horizontal,30)

            }
            .navigationTitle("Работники")
        }
        
    }
}

struct WorkersListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkersListView()
    }
}
