import SwiftUI

struct DiamondGrid<Content1: View, Content2: View, Content3: View, Content4: View>: View {
    @ViewBuilder private let one: Content1
    @ViewBuilder private let two: Content2
    @ViewBuilder private let three: Content3
    @ViewBuilder private let four: Content4

    init(
        @ViewBuilder one: () -> Content1,
        @ViewBuilder two: () -> Content2,
        @ViewBuilder three: () -> Content3,
        @ViewBuilder four: () -> Content4
    ) {
        self.one = one()
        self.two = two()
        self.three = three()
        self.four = four()
    }

    var body: some View {
        VStack {
            HStack {
                one.rotationEffect(Angle(degrees: -45))
                two.rotationEffect(Angle(degrees: -45))
            }

            HStack {
                three.rotationEffect(Angle(degrees: -45))
                four.rotationEffect(Angle(degrees: -45))
            }
        }
        .rotationEffect(Angle(degrees: 45))
    }
}

struct DiamondGrid_Previews: PreviewProvider {
    static var previews: some View {
        DiamondGrid {
            Text("a").padding()
        } two: {
            Text("b").padding()
        } three: {
            Text("c").padding()
        } four: {
            Text("d").padding()
        }
    }
}
