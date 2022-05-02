//
//  RegiftErrorEnum.swift
//  
//
//  Created by Gabrielle Miller-Messner on 4/14/16.
//
//

import Foundation

// Errors thrown by Regift
public enum RegiftError: String, Error {
    case DestinationNotFound = "The temp file destination could not be created or found"
    case AddFrameToDestination = "An error occurred when adding a frame to the destination"
    case DestinationFinalize = "An error occurred when finalizing the destination"
}

// Objective-C compatible version
@objc enum RegiftErrorObjC: Int, Error {
    case DestinationNotFound = 1
    case AddFrameToDestination
    case DestinationFinalize
}

extension RegiftErrorObjC {
    var localizedDescription: String {
        switch(self) {
        case .DestinationNotFound:
            return "The temp file destination could not be created or found"
        case .AddFrameToDestination:
            return "An error occurred when adding a frame to the destination"
        case .DestinationFinalize:
            return "An error occurred when finalizing the destination"
        @unknown default:
            return "An unknown error occurred"
        }
    }
}

