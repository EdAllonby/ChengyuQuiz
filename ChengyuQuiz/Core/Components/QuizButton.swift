import SwiftUI

struct QuizButton: View {
    private let character: ChineseCharacter

    init(character: ChineseCharacter) {
        self.character = character
    }

    var body: some View {
        Button {
            print("button pressed")
        } label: {
            Text(character.hanzi)
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
        QuizButton(character: ChineseCharacter(pinyin: "ni", hanzi: "你"))
    }
}
