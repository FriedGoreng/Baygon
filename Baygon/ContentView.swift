import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("baliman")
            VStack {
                Text("Baygon by John.")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                Text("Sponsored by Bapak Hirawan")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                Button("Spray"){
                    AllGRhythm.sprayBaygon()
                }.buttonStyle(BlueButton())
            }

        }
    }
}

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 30)
            .background(Color(red: 0.5, green: 0, blue: 0))
            .font(.system(size: 100))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
