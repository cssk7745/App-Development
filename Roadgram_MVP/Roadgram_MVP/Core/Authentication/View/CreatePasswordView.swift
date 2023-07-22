//
//  CreatePasswordView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//
import SwiftUI

struct CreatePasswordView: View {
    
   
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing:12){
            Text("Create a Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            SecureField("Password",text: $password)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CompleteSignUpView()
                    .navigationBarBackButtonHidden(true)
            }label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
            }
            .padding(.vertical)
            Spacer()
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }

}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
