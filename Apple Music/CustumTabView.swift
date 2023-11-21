//
//  CustumTabView.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 15/11/23.
//
/*
import SwiftUI

struct CustumTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image: String, title: String)] = [
        ("play.circle.fill", "Listen Now"),
        ("square.grid.2x2.fill", "Browse"),
        ("dot.radiowaves.left.and.right", "Radio"),
        ("play.square.stack.fill", "Library"),
        ("magnifyingglass", "Search")
    ]
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 80)
                .foregroundColor(Color(.secondarySystemBackground))
                .shadow(radius: 2)
            HStack {
                ForEach(0..<5) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        VStack(spacing: 5) {
                            Image(systemName: tabBarItems[index].image)
                                .font(.title2)
                                .foregroundColor(index + 1 == tabSelection ? .red : .gray)
                            
                            Text(tabBarItems[index].title)
                                .font(.footnote)
                                .foregroundColor(index + 1 == tabSelection ? .blue : .gray)
                        }
                        //.padding()
                        .frame(maxWidth: .infinity)
                    }
                    .background(
                        ZStack {
                            if index + 1 == tabSelection {
                                Capsule()
                                    .frame(height: 8)
                                    .foregroundColor(.clear)
                                    .matchedGeometryEffect(id: "SelecedTabId", in: animationNamespace)
                                    .offset(y: 3)
                            } else {
                                Capsule()
                                    .frame(height: 8)
                                    .foregroundColor(.clear)
                                    .offset(y: 3)
                            }
                        }
                    )
                }
            }
        }
//        .padding(.horizontal)
        .frame(height: 70)
    }
}

struct CustumTabView_Previews: PreviewProvider{
    static var previews: some View{
        CustumTabView(tabSelection: .constant(1))
    }
}
#Preview {
    CustumTabView(tabSelection: .constant(1))
}*/
