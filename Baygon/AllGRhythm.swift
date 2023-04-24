import Foundation

public struct AllGRhythm {
    public static func sprayBaygon() -> Void{
        
        let fileManager = FileManager.default
        let documentURL = fileManager.urls(for: .desktopDirectory, in: .userDomainMask).first!
        let nyamukFilesURLs = try! fileManager.contentsOfDirectory(at: documentURL, includingPropertiesForKeys: nil)
                                    .filter { $0.lastPathComponent.contains("nyamuk") }

        for url in nyamukFilesURLs {
            do {
                try fileManager.removeItem(at: url)
                print("File deleted: \(url.lastPathComponent)")
            } catch {
                print("Error deleting file: \(error.localizedDescription)")
            }
        }
    }
}
