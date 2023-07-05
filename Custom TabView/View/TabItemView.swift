//
//  TabItemView.swift
//  Custom TabView
//
//  Created by Macbook on 3/7/23.
//

import SwiftUI

struct TabItemView: View {
    let data: TabItemData
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: isSelected ? data.selectedImage : data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .onAppear{
                    withAnimation(.default){
                        // Код, который требует анимации
                    }
                }
            
            Spacer().frame(height: 4)
            
            Text(data.title)
                .foregroundColor(isSelected ? .black : .gray)
                .font(.system(size: 11))
        }
    }
}
