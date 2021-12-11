import SwiftUI

class Dat1: ObservableObject, Identifiable {
    @Published var id = UUID()
    @Published var name: String
    @Published var type: Int
    
    init(
        name: String = "",
        type: Int = 0
    ) {
        self.name = name
        self.type = type
    }
}

class Dat2: ObservableObject {
    @Published var datAry: [Dat1] = []
}
