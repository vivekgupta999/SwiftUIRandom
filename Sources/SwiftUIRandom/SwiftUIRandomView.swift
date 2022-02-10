import SwiftUI

@available(iOS 15.0, macOS 12.0, *)
public struct SwiftUIRandomView: View {
    
    @ObservedObject var random = SwiftUIRandomViewModel()
    @Binding public var randomNumber : Int
    
    public init(randomNumber: Binding<Int>) {
        self._randomNumber = randomNumber
    }
    
    
    public var body: some View {
        VStack{
            TextField("Enter Number", value: $random.number, formatter: NumberFormatter())
                .padding()
                .textFieldStyle(.roundedBorder)
            
            Button {
                randomNumber = random.generateRandomNumber()
            } label: {
                Text("Send")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }
            
        }
    }
    
    
}

