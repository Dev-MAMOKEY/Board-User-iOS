//
//  MainView.swift
//  BoradUser-iOS
//
//  Created by 최무빈 on 12/1/25.
//

import SwiftUI

// MARK: 임시용 Model 삭제 예정
struct ExBoardModel {
    let id: Int
    let title:String
    let content:String
}

struct MainView: View {
    
    let dummyBoards: [ExBoardModel] = [
        ExBoardModel(id: 1, title: "SwiftUI 질문드립니다", content: "NavigationStack 안에서 상태가 안 바뀌는데 혹시 아시는 분 계신가요?"),
        ExBoardModel(id: 2, title: "프로젝트 구조 어떻게 짜야 할까요?", content: "폴더링 기준 추천 좀 부탁드립니다. feature 별로 나누는 게 나을까요?"),
        ExBoardModel(id: 3, title: "Xcode 빌드 오류 도와주세요", content: "Linker 관련 오류인데 해결이 안 되네요. 아시는 분..?"),
        ExBoardModel(id: 4, title: "App Store 심사 리젝트 경험 공유", content: "Private API 사용했다고 나오는데 뭘 의미하는지 모르겠네요."),
        ExBoardModel(id: 5, title: "Firebase 연동 시 Crash 발생", content: "Auth 로그인 이후 무한 로딩이 걸립니다."),
        ExBoardModel(id: 6, title: "팀플에서 코드 컨벤션 어떻게 맞추세요?", content: "lint 적용하는 게 좋은지 고민 중입니다."),
        ExBoardModel(id: 7, title: "디자인 시스템 만들 때 팁 있을까요?", content: "Color, Font, Component 정리하는 법 공유 부탁드립니다."),
        ExBoardModel(id: 8, title: "Swift 초보인데 공부 루트 추천 부탁드립니다", content: "UIKit부터 하는 게 맞나요, SwiftUI부터 해도 되나요?"),
        ExBoardModel(id: 9, title: "API 응답이 너무 느리네요", content: "백엔드 서버가 어떤 로그를 보는 게 좋을까요?"),
        ExBoardModel(id: 10, title: "서버 없이 앱 테스트 가능할까요?", content: "JSON 파일 넣고 Mock 형태로 만들면 될까요? 경험 있으신 분?"),
        ExBoardModel(id: 11, title: "iOS 17 대응하다가 난관입니다", content: "새로운 권한 정책이 바뀌었는데 어디서 체크해야 할지 모르겠습니다."),
        ExBoardModel(id: 12, title: "Figma에서 Export 시 깨짐", content: "PDF로 뽑아도 엣지가 잘리는 문제 겪는 분 있나요?"),
        ExBoardModel(id: 13, title: "애니메이션 부드럽게 하는 법", content: "withAnimation 써도 약간 뚝뚝 끊겨 보이네요."),
        ExBoardModel(id: 14, title: "다크모드 대응 기준 알려주세요", content: "Color Scheme에 따른 Resource 관리 어떻게 하시나요?"),
        ExBoardModel(id: 15, title: "iPad 레이아웃 어떻게 잡나요?", content: "가로·세로 대응이 너무 어렵네요."),
        ExBoardModel(id: 16, title: "로컬 알림 구현 팁?", content: "UNUserNotificationCenter 설정이 잘 안 먹네요."),
        ExBoardModel(id: 17, title: "앱 용량 줄이는 방법", content: "Assets 최적화나 이미지 포맷 추천 부탁드립니다."),
        ExBoardModel(id: 18, title: "Git 충돌 정리 팁 공유", content: "rebase vs merge 언제 쓰는 게 좋은지 궁금합니다."),
        ExBoardModel(id: 19, title: "iOS 개발 공부 1년 후기", content: "SwiftUI로 시작했는데 나쁘지 않았습니다. 정리글 올려요."),
        ExBoardModel(id: 20, title: "스크롤뷰 안에서 버튼 클릭 안 먹힘", content: "Gesture 우선순위 문제 같은데 해결이 잘 안 됩니다.")
    ]

    
    var body: some View {
        VStack(spacing: 0) {
            topAppBar
            ScrollView() {
                LazyVStack(spacing: 0) {
                    ForEach(dummyBoards, id: \.id) { board in
                        BoardListView(board: board)
                        Divider().foregroundColor(Color(hex: "#DFDFDF"))
                    }
                }
            }
            
            Spacer()
            
        }
    }
    
    
    // MARK: - Top App Bar - 상단바
    private var topAppBar: some View {
        HStack(spacing: 0) {
            Button(action : {}){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, .gray)
                    .frame(width: 28, height: 28)
            }
            
            Spacer()
            
            HStack(spacing: 12) {
                Button(action : {}){
                    Image(systemName: "plus")
                        .font(.system(size:20 , weight: .medium))
                        .foregroundColor(.black)
                        .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color(hex: "#DFDFDF"), lineWidth: 1)
                        )
                }
                
                Button(action : {}){
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .font(.system(size:16 , weight: .bold))
                        .foregroundColor(.black)
                        .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color(hex: "#DFDFDF"), lineWidth: 1)
                        )
                }
            }
        }
        .padding(.horizontal,20)
        .padding(.vertical,18)
    }
}

struct BoardListView: View {
    let board: ExBoardModel
    
    var body: some View {
        VStack(alignment:.leading , spacing: 8) {
            Text("\(board.title)")
                .font(.pretendardBold20)
            
            Text("\(board.content)")
                .font(.pretendardRegular14)
                .foregroundColor(Color(hex: "#A5A5A5"))
        }
        .frame(maxWidth: .infinity , alignment: .leading)
        .padding(.horizontal,20)
        .padding(.vertical, 18)
    }
}

#Preview {
    MainView()
}
