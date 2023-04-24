import Foundation

public struct AllGRhythm {
    public static func sprayBaygon() -> Void{
        let task = Process()
        let pipe = Pipe()
        
        print(URL(fileURLWithPath: "/bin/zsh"))
        
        task.standardOutput = pipe
        task.standardError = pipe
//        task.arguments = ["-c", command]
        task.executableURL = URL(fileURLWithPath: "/bin/zsh") //<--updated
        task.standardInput = nil

     //   try task.run() //<--updated
        
      //  return output
    }
}
