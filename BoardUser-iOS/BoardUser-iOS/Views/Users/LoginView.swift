//
//  LoginView.swift
//  BoradUser-iOS
//
//  Created by 최무빈 on 12/1/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 0) {
             Image(systemName: "person")
                .resizable()
                .frame(width: 128 , height:128)
            
            Spacer()
            
            CustomKakaoSignInButton(action: {})
        }
        .padding(.horizontal , 20)
        .padding(.vertical , 40)
    }
}
struct CustomKakaoSignInButton: View {
    let action: () -> Void
    var body: some View {
        Button(action : action) {
            HStack {
                Image(systemName: "message.fill")
                    .font(.system(size:18))
                Text("카카오 로그인")
                    .font(.system(size: 17 , weight: .medium))
            }
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.yellow)
            .cornerRadius(8)
        }
    }
}
#Preview {
    LoginView()
}
