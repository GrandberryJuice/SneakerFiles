//
//  NetworkRouter.swift
//  SneakerFiles
//
//

import Foundation

public typealias NetworkRouterCompletionBlock = (_ data: Data?,_ response: URLResponse?,_ error: Error?)-> ()

protocol NetworkRouter: class {
    associatedtype Endpoint: EndPointType
    func request(_ route: Endpoint, completion: @escaping NetworkRouterCompletionBlock)
    func cancel()
}
