//
//  UploadPostView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI
import PhotosUI
struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex:Int
    
    var body: some View {
        VStack{
            // action tool bar
            HStack{
                Button{
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.PostImage = nil
                    tabIndex = 0
                }label: {
                    Text("Cancel")
                        .padding(.leading)
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                Button{
                    print("Post button")
                }label: {
                    Text("Post")
                        .fontWeight(.semibold)
                        .padding(.trailing)
                }
            }
            // post image and caption
            HStack(spacing:8){
                if let image = viewModel.PostImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                        .clipped()
                }
                    
                TextField("Enter your caption...",text: $caption,axis: .vertical)
                
            }
            .padding()
            Spacer()
        }
        .onAppear(){
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented:$imagePickerPresented , selection: $viewModel.selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView(tabIndex: .constant(0))
    }
}
