import SwiftUI

struct QuizView: View {
    @StateObject private var viewModel = QuizViewModel()

    var body: some View {
        DiamondGrid {
            QuizButton(character: viewModel.chengyu.characterList[0])
        } two: {
            QuizButton(character: viewModel.chengyu.characterList[1])
        } three: {
            QuizButton(character: viewModel.chengyu.characterList[2])
        } four: {
            QuizButton(character: viewModel.chengyu.characterList[3])
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
