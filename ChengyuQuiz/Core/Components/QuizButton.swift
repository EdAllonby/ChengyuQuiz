import SwiftUI

struct QuizButton: View {
    private let hanzi: String

    init(hanzi: String) {
        self.hanzi = hanzi
    }

    var body: some View {
        Button {
            print("button pressed")
        } label: {
            Text(hanzi)
                .font(.title)
                .bold()
                .padding()
                .frame(width: 90, height: 90)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Circle())
        }.padding()
    }
}

struct QuizButton_Previews: PreviewProvider {
    static var previews: some View {
        QuizButton(hanzi: "你")
    }
}
