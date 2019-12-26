import Foundation

let dispatchGroup = DispatchGroup()
dispatchGroup.enter()

AWSome.login(role: CommandLine.arguments[0]) { (success, error) in
    print(success)
    
    if let error = error {
        print(error.localizedDescription)
    }
    
    dispatchGroup.leave()
}

dispatchGroup.notify(queue: DispatchQueue.main) {
    exit(EXIT_SUCCESS)
}

dispatchMain()
