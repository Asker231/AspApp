//
//  GetDocumentFirebaseViewModel.swift
//  ASPApp
//
//  Created by ASKER on 20.05.2023.
//

import Foundation
import Firebase
final class GetDocumentFirebaseViewModel:ObservableObject{
    @Published var workersList:[WorkerModel] = []
    func getCollection(){
        //создал ссылку на базу
        let db  = Firestore.firestore()
        
        //достучался до ворот
        db.collection("Workers").getDocuments { QuerySnapshot, error in
            if let error = error{
                print(error.localizedDescription)
            }
            if let QuerySnapshot = QuerySnapshot{
                //мапим полученные данные в нашу модель
                self.workersList = QuerySnapshot.documents.map({ el in
                    return WorkerModel(name: el["name"] as? String ?? "not info", post: el["post"] as? String ?? "not info")
                })
            }
        }
    }
    
}
