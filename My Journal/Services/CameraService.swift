import SwiftUI
import AVFoundation

final class CameraService: ObservableObject {
    private let captureSession = AVCaptureSession()
    
    private let output = AVCapturePhotoOutput()
    
    enum CameraError: Error {
        case videoDeviceUnavailable
        case addInputFailed
        case addOutputFailed
        case setupFailed
    }
    
    var defaultCamera: AVCaptureDevice {
        get throws {
            guard let device = AVCaptureDevice.systemPreferredCamera else {
                throw CameraError.videoDeviceUnavailable
            }
            return device
        }
    }
    
    // MARK: - Authorization
    
    var isAuthorized: Bool {
        get async {
            let status = AVCaptureDevice.authorizationStatus(for: .video)
            
            var isAuthorized = status == .authorized
            
            if status == .notDetermined {
                isAuthorized = await AVCaptureDevice.requestAccess(for: .video)
            }
            return isAuthorized
        }
    }
    
    // MARK: - Capture session life cycle
    
    func start() async throws {
        guard await isAuthorized, !captureSession.isRunning else { return }
        
        try setUpSession()
        captureSession.startRunning()
    }
    
    private func setUpSession() throws {
        do {
            try addInput(for: defaultCamera)
            captureSession.sessionPreset = .photo
            try addOutput()
        } catch {
            throw CameraError.setupFailed
        }
    }
    
    private func addInput(for device: AVCaptureDevice) throws {
        let input = try AVCaptureDeviceInput(device: device)
        
        guard captureSession.canAddInput(input) else {
            throw CameraError.addInputFailed
        }
        
        captureSession.addInput(input)
    }
    
    private func addOutput() throws {
        guard captureSession.canAddOutput(output) else {
            throw CameraError.addOutputFailed
        }
        
        captureSession.addOutput(output)
    }
    
}
