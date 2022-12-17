//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Armen Madoyan on 16.12.2022.
//

import SwiftUI

class StorageManager: ObservableObject {
    @State @AppStorage("name") var name = ""
}
