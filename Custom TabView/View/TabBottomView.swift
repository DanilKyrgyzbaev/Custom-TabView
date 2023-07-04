//
//  TabBottomView.swift
//  Custom TabView
//
//  Created by Macbook on 3/7/23.
//

import SwiftUI

struct TabBottomView: View {
    let tabbarItems: [TabItemData]
    var height: CGFloat = 70
    var width: CGFloat = UIScreen.main.bounds.width - 32
    @Binding var selectedIndex: Int
    
    var tabIndices: Range<Int> {
        return 0..<tabbarItems.count
    }
    
    var body: some View {
        HStack {
            Spacer()
            
            ForEach(tabIndices, id: \.self) { index in
                let item = tabbarItems[index]
                Button {
                    self.selectedIndex = index
                } label: {
                    let isSelected = selectedIndex == index
                    TabItemView(data: item, isSelected: isSelected)
                }
                Spacer()
            }
        }
        .frame(width: width, height: height)
        .background(Color.white)
        .cornerRadius(13)
        .shadow(radius: 5, x: 0, y: 4)
    }
}
