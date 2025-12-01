//
//  BoardDetailView.swift
//  BoradUser-iOS
//
//  Created by 최무빈 on 12/1/25.
//

import SwiftUI

struct BoardDetailView: View {
    let board: ExBoardModel
    
    var body: some View {
        BasicAppBarComponent(title:"")
        
        VStack(alignment: .leading , spacing: 36) {
            Text("\(board.title)")
                .font(.pretendardBold24)
            
            Text("\(board.content)")
                .font(.pretendardRegular16)
            
            // TODO: 조회했을 때 작성자인 경우에 버튼이 보여야함
            boardDetailButton
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity , alignment: .topLeading)
        .padding(.horizontal, 20)
        .padding(.vertical, 18)
        .navigationBarBackButtonHidden(true)
        Spacer()
    }
    
    
    private var boardDetailButton: some View {
        HStack(spacing: 16) {
            Button(action: {
                print("수정 로직 실행")
            }) {
                HStack(spacing: 6){
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 19 , weight: .semibold))
                        .foregroundColor(.white)
                    
                    Text("수정")
                        .font(.pretendardRegular14)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 12)
                .padding(.vertical , 4)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color(hex: "#FF9F43"))
                )
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                print("삭제 로직 실행")
            }) {
                HStack(spacing: 6){
                    Image(systemName: "trash")
                        .font(.system(size: 18 , weight: .semibold))
                        .foregroundColor(.white)
                    
                    Text("삭제")
                        .font(.pretendardRegular14)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 12)
                .padding(.vertical , 4)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color(hex: "#FC4F4F"))
                )
            }.buttonStyle(PlainButtonStyle())
        }.frame(maxWidth: .infinity , alignment: .trailing)
    }
}


#Preview {
    BoardDetailView(board: ExBoardModel(id: 1, title: "test", content: "ang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddiang gi mo ddi"))
}
