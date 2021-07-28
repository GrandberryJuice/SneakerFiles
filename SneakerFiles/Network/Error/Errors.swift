//
//  Errors.swift
//  SneakerFiles
//
//

import Foundation

public enum NetworkErrors: String, Error {
    case parametersNil = "Parameters were nil"
    case encodingFailed = "Parameters encoding failed"
    case missingURL = "URL is nil"
}
