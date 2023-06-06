import SwiftUI
import CoreLocation
import CoreLocationUI

struct ContentView: View {
    @State var select = 0
    
    @State private var compassHeading = 0.0
//    var delegate = CLLocationManagerDelegate()
    
    var body: some View {
        TabView {
            NavigationStack(root: {
                GeometryReader { geometry in
                    Text("1111")
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
                .navigationBarTitle("Tab 1")
            })
            .navigationViewStyle(.stack)
            .tabItem {
                Image(systemName: "tab1Icon")
                Text("Tab 1")
            }
            
            NavigationView {
                GeometryReader { geometry in
                    Text("222222")
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
                .navigationBarTitle("Tab 2")
            }
            .tabItem {
                Image(systemName: "tab2Icon")
                Text("Tab 2")
            }
            
            // Add more tabs if needed
        }
        .tabViewStyle(.page)

    }
    

}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



