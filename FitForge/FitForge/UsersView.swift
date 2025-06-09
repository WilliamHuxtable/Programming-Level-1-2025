import SwiftUI

struct UsersView: View {
    @State private var usernames: Set<String> = [
        "BenchGuy",
        "BenchHater",
        "DipGuy",
        "PullUpGuy",
        "SquatGuy",
        "BBRowGuy",
        "CurlGuy",
        "MPGuy",
        "DeadliftHater",
        "SquatHater",
        "MPHater",
        "BBRowHater",
        "PullupHater",
        "DipsHater",
        "CurlHater"
    ]
    @State private var searchUsernames = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("MainBackgroundColor")
                    .ignoresSafeArea()
                List {
                    ForEach(searchResults.sorted(), id: \.self) { name in
                        NavigationLink(destination: UserSearchView(username: name)) {
                            HStack {
                                Image(systemName: "person.crop.circle.fill")
                                    .resizable()
                                    .foregroundStyle(Color("MainTextColor"))
                                    .scaledToFit()
                                    .frame(width:50,height:50)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .overlay{
                                        Circle().stroke(Color("BorderColor"), lineWidth: 2)
                                    }
                                    .padding(.trailing, 20)
                                Text(name)
                                    .foregroundStyle(Color("MainTextColor"))
                            }
                            }
                            .listRowBackground(Color("SubBackgroundColor"))
                    }
                }
                .padding([.leading, .trailing], 4)
                .searchable(text: $searchUsernames)
                .scrollContentBackground(.hidden)            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Users")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(Color("MainTextColor"))
            }
        }
    }
    
    var searchResults: [String] {
        if searchUsernames.isEmpty {
            return usernames.sorted()
        } else {
            return usernames.filter { $0.localizedCaseInsensitiveContains(searchUsernames) }
                                            .sorted()
        }
    }
}

struct UserSearchView: View {
    @State private var isPressed = false
    
    let username: String
    
    var body: some View {
        ZStack {
            Color("MainBackgroundColor")
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .foregroundStyle(Color("MainTextColor"))
                        .scaledToFit()
                        .frame(width:100,height:130)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay{
                            Circle().stroke(Color("BorderColor"), lineWidth: 4)
                        }
                        .padding(.trailing)
                    VStack {
                        HStack {
                            Text("\(username)")
                                .font(.title2)
                                .foregroundStyle(Color("MainTextColor"))
                                .background(Color("SubBackgroundColor"))
                                .padding([.top, .bottom, .leading, .trailing], 4)
                                .multilineTextAlignment(.center)
                           
                        }
                        HStack {
                            Text("10")
                                .foregroundStyle(Color("MainTextColor"))
                                .fontWeight(.bold)
                            Text("Friends")
                                .foregroundStyle(Color("MainTextColor"))
                            Button(action: {
                                        isPressed.toggle()
                                    }) {
                                        Text(isPressed ? "Added" : "Add Friend")
                                            .foregroundColor(isPressed ? Color("MainTextColor") : Color("MainTextColor"))
                                            .padding(5)
                                            .background(isPressed ? Color("MainBackgroundColor") : Color("SubTextColor"))
                                            .cornerRadius(10)
                                            .overlay{
                                                RoundedRectangle(cornerRadius: 10).stroke(Color("BorderColor"), lineWidth: 2)
                                            }
                                    }
                                    .animation(.easeInOut, value: isPressed)
                        }
                    }
                    Spacer()
                }
                .frame(height: 130)
                .padding([.bottom, .leading, .trailing])
                .background(Color("SubBackgroundColor"))
                .overlay(
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(Color("BorderColor")),
                    alignment: .bottom
                )
                .padding(.bottom)
                Text("ABOUT")
                    
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 17))
                    .foregroundStyle(Color("MainTextColor"))
                    .padding([.leading, .trailing])
                    .padding([.leading, .trailing])
                    .padding(.bottom, 4)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet sagittis enim, non maximus lectus. Quisque ac lorem accumsan, convallis ex ac, posuere lacus. Nunc id eros at urna convallis interdum non nec nibh.")
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundStyle(Color("MainTextColor"))
                    .padding([.leading, .trailing, .bottom])
                    .padding([.leading, .trailing])
                
                HStack {
                    Text("STATS")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 17))
                        .foregroundStyle(Color("MainTextColor"))
                        .padding([.leading, .trailing])
                        .padding([.leading, .trailing])
                        .padding(4)
                    
                }
                .padding(.trailing)
                .fontWeight(.semibold)
                .foregroundStyle(Color("MainTextColor"))
                .toggleStyle(SwitchToggleStyle(tint: Color("SubTextColor")))
                
                
                
                HStack {
                    Spacer()
                    HStack {
                        VStack(alignment: .center) {
                            Text("Lift\nDeadlift\nSquat\nBench Press\nMilitary Press\nBarbell Row\nPullup\nDip\nStrict Curl")
                                .foregroundStyle(Color("MainTextColor"))
                                .padding(8)
                                .padding([.leading, .trailing], 8)
                                .overlay{
                                    Rectangle().stroke(Color("BorderColor"), lineWidth: 2)
                                }
                                .background(
                                    Rectangle()
                                        .fill(Color("SubBackgroundColor"))
                                )
                        }
                        VStack(alignment: .center) {
                            Text("Weight\n495lbs\n445lbs\n330lbs\n180lbs\n280lbs\n100lbs\n135lbs\n100lbs")
                                .foregroundStyle(Color("MainTextColor"))
                                .padding(8)
                        }
                        VStack(alignment: .center) {
                            Text("BW Ratio\n3x\n2.7x\n2x\n1.1\n1.7x\n0.6x\n0.8x\n0.6x")
                                .foregroundStyle(Color("MainTextColor"))
                                .padding(8)
                                .padding([.leading, .trailing], 8)
                                .overlay{
                                    Rectangle().stroke(Color("BorderColor"), lineWidth: 2)
                                }
                                .background(
                                    Rectangle()
                                        .fill(Color("SubBackgroundColor"))
                                )
                        }
                        
                    }
                    .overlay{
                        Rectangle().stroke(Color("BorderColor"), lineWidth: 2)
                    }
                    .background(
                        Rectangle()
                            .fill(Color("SubBackgroundColor"))
                    )
                    .padding([.leading, .trailing])
                    .padding([.leading, .trailing], 7)
                Spacer()
                }
                    Spacer()
            }
            }
        }
        }

#Preview {
    UsersView()
}
