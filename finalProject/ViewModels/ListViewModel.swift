//
//  ListViewModel.swift
//  finalProject
//
//  Created by Jaspreet L. on 12/1/23.
//


import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary tab
class ListViewModel: ObservableObject {
    @Published var showingNewItemView = false

    private let userId: String

    init(userId: String) {
        self.userId = userId
    }

    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()

        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
