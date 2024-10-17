import SwiftUI
import AVFoundation

struct CameraView: View {
    
    @StateObject private var viewModel = CameraViewModel()

    var body: some View {
        Spacer()
        ShutterButtonView() {
            
        }
            .padding(.bottom, bottomPadding)
    }
    
    var bottomPadding: CGFloat {
        // Dynamically calculate the offset for the bottom toolbar in iOS.
        let bounds = UIScreen.main.bounds
        let rect = AVMakeRect(aspectRatio: CGSize(width: 9.0, height: 16.0), insideRect: bounds)
        return (rect.minY.rounded() / 2) + 12
    }
}

#Preview {
    CameraView()
}
