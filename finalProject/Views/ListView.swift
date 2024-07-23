//
//  ListView.swift
//  finalProject
//
//  Created by Jaspreet L. on 12/1/23.
//

import SwiftUI
import FirebaseFirestoreSwift


struct ListView: View {
    @StateObject var viewModel: ListViewModel
    @FirestoreQuery var items: [ToDoListItem]

    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        self._viewModel = StateObject(
            wrappedValue: ListViewModel(userId: userId)
        )
    }

    var body: some View {
        NavigationView {
            
            VStack {
                List(items) { item in
                    ListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
                Image("littlePeepleTransparent")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, -25)
                    .edgesIgnoringSafeArea(.all)
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }

            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
            
        }
        
    }
}

struct ListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(userId: "RcNUw88NDCOuzwgBeispLnTTLuv2")
    }
}
