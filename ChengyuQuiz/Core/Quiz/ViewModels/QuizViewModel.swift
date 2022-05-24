import Foundation

extension QuizView {
    @MainActor class QuizViewModel: ObservableObject {
        @Published var chengyu: Chengyu

        init() {
            let chengyu = Chengyu(characterList: [
                ChineseCharacter(pinyin: "qi", hanzi: "七"),
                ChineseCharacter(pinyin: "shang", hanzi: "上"),
                ChineseCharacter(pinyin: "ba", hanzi: "八"),
                ChineseCharacter(pinyin: "xia", hanzi: "下"),
            ])
            self.chengyu = chengyu
        }
    }
}
