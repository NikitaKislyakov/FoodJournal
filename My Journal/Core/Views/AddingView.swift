import SwiftUI

struct AddingView: View {
    
    @EnvironmentObject private var viewModel: JournalViewModel
    
    
    @State var titleText = ""
    @State var desctiptionText = ""
    @State var date = Date()
    
    var body: some View {
        VStack(spacing: 10) {
            imageView
            titleSection
            descriptionSection
            datePickerSection
            confirmButton
        }
        .navigationTitle("Adding")
        
        Spacer()
    }
}

#Preview {
    NavigationStack {
        AddingView()
            .environmentObject(DeveloperPreview.shared.viewModel)
    }
}

extension AddingView {
    private var imageView: some View {
        Image("Image")
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 40)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Enter your title")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            TextField("Type your food...", text: $titleText)
                .padding(.top, 10)
                .padding(.horizontal, 10)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 2)
        }
        .padding()
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Enter your description")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            TextField("Type your description...", text: $desctiptionText)
                .padding(.top, 10)
                .padding(.horizontal, 10)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 2)
        }
        .padding(.horizontal)
    }
    
    private var datePickerSection: some View {
        DatePicker(selection: $date) {
            Text("Pick a date")
                .font(.headline)
        }
        .padding()
    }
    
    private var confirmButton: some View {
        Button(action: {
            
        }, label: {
            Text("Confirm")
                .foregroundStyle(Color.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
        })
    }
}
