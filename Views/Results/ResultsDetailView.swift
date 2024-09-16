import SwiftUI

struct ResultsDetailView: View {

    @State var eventData: [String : String]
    
    var body: some View {
        ZStack {
            Image("")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
        VStack{
            HStack(spacing: UIScreen.main.bounds.width/13){
                VStack {
                    Image("LMLogo")
                        .resizable()
                        .frame(width: (UIScreen.main.bounds.width/5), height: (UIScreen.main.bounds.width/5))
                Text("Lower Merion")

                    .font(Constants.LargeFont)
                    .foregroundColor(.black)

                }
                if eventData["scorelm"] ?? "0" > eventData["scoreOpponent"] ?? "0" {
                    VStack(spacing: 2){
                    Text(eventData["scorelm"] ?? "?")
                        .foregroundColor(.black)
                        .font(Constants.GameScoreFont)
                    Rectangle()
                            .frame(width: UIScreen.main.bounds.width/10, height: 2)
                            .foregroundColor(.black)
                    }

                    Text(eventData["scoreOpponent"] ?? "?")
                        .foregroundColor(.black.opacity(0.4))
                        .font(Constants.GameScoreFont)
                }

                else {
                    Text(eventData["scorelm"] ?? "?")
                        .foregroundColor(.black.opacity(0.4))
                        .font(Constants.GameScoreFont)

                    VStack(spacing: 3){

                    Text(eventData["scoreOpponent"] ?? "?")
                        .foregroundColor(.black)
                        .font(Constants.GameScoreFont)

                        Rectangle()
                                .frame(width: UIScreen.main.bounds.width/10, height: 2)
                                .foregroundColor(.black)

                    }
                }

                VStack {
                Image(eventData["name"] ?? "badLogo")
                    .resizable()
                    .frame(width: (UIScreen.main.bounds.width/5), height: (UIScreen.main.bounds.width/5))

                Text("\(eventData["name"] ?? "?")")
                    .font(Constants.LargeFont)
                    .foregroundColor(.black)

                }
            }

            Spacer()

            Text(eventData["date"] ?? "_")
        }.padding(.vertical, 50)

        }

    }

}



struct ResultsDetailView_Previews: PreviewProvider {

    static var previews: some View {

        ResultsDetailView(eventData : [:])

    }

}
