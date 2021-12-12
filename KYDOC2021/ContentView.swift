import SwiftUI

struct ContentView: View {
    @ObservedObject var dat: Dat2 = Dat2()
    @State var name: String = ""
    @State var type: Int = 0
    var typeText = [
        "A型",
        "B型",
        "AB型",
        "O型"
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(white: 0.9)
                    .edgesIgnoringSafeArea(.bottom)
                VStack {
                    ForEach(dat.datAry) {item in
                        HStack {
                            Text(item.name)
                            Text(typeText[item.type])
                        }
                    }
                    Spacer()
                    HStack {
                        Text("名前")
                            .frame(width: 100)
                        TextField("名前を入力ください", text: $name)
                    }
                    HStack {
                        Text("血液型")
                            .frame(width: 100)
                        Picker("血液型", selection: $type) {
                            Text(typeText[0]).tag(0)
                            Text(typeText[1]).tag(1)
                            Text(typeText[2]).tag(2)
                            Text(typeText[3]).tag(3)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    Button(action: {
                        dat.datAry.append(Dat1(name: name, type: type))
                        name = ""
                        type = 0
                    }) {
                        Text("登録する")
                    }
                }
                .padding()
            }
            .font(.system(size: 20, weight: .regular, design: .monospaced))
            .navigationTitle("KYボード V1.0")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
