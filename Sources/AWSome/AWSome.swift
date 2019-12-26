//
//  AWSome.swift
//  AWSome
//
//  Created by Kyle Decot on 12/26/19.
//

import Foundation

import Foundation
import LocalAuthentication

typealias AWSomeCallback = (Bool, Error?) -> Void

class AWSome {
    static func login(role: String, callback: @escaping AWSomeCallback) -> Void {
        
        let reason = "Log in to your account"
        let context = LAContext()
        var error: NSError?

        guard context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) else {
            callback(false, error)
            return
        }

        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason, reply: callback)
    }
}

