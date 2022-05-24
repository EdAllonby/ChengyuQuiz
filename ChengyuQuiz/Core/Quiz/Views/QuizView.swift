import SwiftUI

struct QuizView: View {
    var body: some View {
        DiamondGrid {
            QuizButton(character: ChineseCharacter(pinyin: "qi", hanzi: "七"))
        } two: {
            QuizButton(character: ChineseCharacter(pinyin: "shang", hanzi: "上"))
        } three: {
            QuizButton(character: ChineseCharacter(pinyin: "ba", hanzi: "八"))
        } four: {
            QuizButton(character: ChineseCharacter(pinyin: "xia", hanzi: "下"))
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
