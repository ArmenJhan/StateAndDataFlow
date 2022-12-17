//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("name") var name = ""
    
}
