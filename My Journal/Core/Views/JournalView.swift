import SwiftUI

struct JournalView: View {
    
    @EnvironmentObject private var viewModel: JournalViewModel
    @State var isAuth: Bool = false
    var service = CameraService()
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                journalList
                    .navigationTitle("My journal")
            }
            .toolbar {
                ToolBarContent()
            }
        }
    }
}

#Preview {
    JournalView()
        .environmentObject(DeveloperPreview.shared.viewModel)
}

extension JournalView {
    private var journalList: some View {
        List {
            ForEach(viewModel.arrayOfFood) { food in
                HStack {
                    Image(uiImage: food.image)
                        .resizable()
                        .scaledToFit()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text(food.title)
                            .font(.headline)
                            .lineLimit(1)
                        
                        Text(food.description!)
                            .font(.caption)
                        
                        Text(food.date.description)
                            .font(.caption2)
                    }
                }
            }
            .listStyle(.grouped)
        }
    }
}

struct ToolBarContent: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            NavigationLink {
                AddingView()
            } label: {
                Image(systemName: "plus")
            }
        }
    }
}
