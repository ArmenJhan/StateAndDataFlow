//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var storageManager = StorageManager()
    @State private var name = ""
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack(spacing: 25){
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(width: 180)
        
                Text("\(name.count)")
                    .frame(width: 35)
                    .foregroundColor(name.count <= 3 ? .red : .green)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(name.count <= 3 ? true : false)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            storageManager.name = name
            userManager.name = storageManager.name
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
