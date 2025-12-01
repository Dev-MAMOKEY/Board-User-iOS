//
//  BasicAppBarComponent.swift
//  BoradUser-iOS
//
//  Created by 최무빈 on 12/1/25.
//

import SwiftUI

struct BasicAppBarComponent: View {
    @Environment(\.dismiss) private var dismiss
    let title: String
    
    var body: some View {
        HStack(spacing: 0){
            Button(action: { dismiss() }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20 , weight: .semibold))
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Text("\(title)")
                .font(.pretendardBold16)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20 , weight: .semibold))
            }
            .disabled(true)
            .opacity(0)
        }
        .padding(.horizontal,20)
        .padding(.vertical,18)
    }
}

#Preview {
    BasicAppBarComponent(title:"Test")
}
