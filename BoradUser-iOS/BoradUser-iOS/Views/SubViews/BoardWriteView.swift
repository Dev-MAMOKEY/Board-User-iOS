//
//  BoardWriteView.swift
//  BoradUser-iOS
//
//  Created by 최무빈 on 12/1/25.
//

import SwiftUI

struct BoardWriteView: View {
    @State private var title: String = ""
    @State private var content: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            BasicAppBarComponent(title: "게시글 작성")
            boardWriteComponent
            boardWriteSubmit
            Spacer()
            
            
        }.navigationBarBackButtonHidden(true)
    }
    
    // MARK: - 게시물 작성 컴포넌드
    private var boardWriteComponent : some View {
        VStack(spacing: 16) {
            TextField("" , text: $title , prompt: Text("제목을 입력해주세요").foregroundColor(Color(hex: "#DFDFDF")))
                .font(.pretendardBold24)
                .foregroundColor(.black)
                .padding(.horizontal,12)
                .padding(.vertical, 8)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(hex: "#DFDFDF"), lineWidth: 1)
                }
            
            ZStack(alignment: .topLeading) {
                // placeholder 텍스트 (content가 비어있을 때만 표시)
                if content.isEmpty {
                    Text("정확한 전달을 위해 교수님 성함 혹은 과목명을 정확하게 기재해주세요.")
                        .font(.pretendardRegular16)
                        .foregroundColor(Color(hex: "#DFDFDF"))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 16)
                }
                
                TextEditor(text: $content)
                    .font(.pretendardRegular16)
                    .foregroundColor(.black)
                    .scrollContentBackground(.hidden) // 기본 배경 제거
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
            }
            .frame(maxWidth: .infinity, minHeight: 150, alignment: .topLeading)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(hex: "#DFDFDF"), lineWidth: 1)
            }
            
            
        }
        .padding(.horizontal , 20)
        .padding(.vertical, 18)
    }
    
    private var boardWriteSubmit: some View {
        Button(action: {}) {
            Spacer()
            HStack(spacing: 6) {
                Image(systemName: "icloud.and.arrow.up")
                    .font(.system(size:20 , weight: .semibold))
                Text("작성하기")
                    .font(.pretendardRegular14)
            }
            .foregroundColor(.white)
            .padding(.horizontal,12)
            .padding(.vertical, 4)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.black)
            )
        }
        .padding(.horizontal , 20)
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    BoardWriteView()
}
