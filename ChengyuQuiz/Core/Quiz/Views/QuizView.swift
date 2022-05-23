import SwiftUI

struct QuizView: View {
    var body: some View {
        DiamondGrid {
            QuizButton(hanzi: "七")
        } two: {
            QuizButton(hanzi: "上")
        } three: {
            QuizButton(hanzi: "八")
        } four: {
            QuizButton(hanzi: "下")
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
