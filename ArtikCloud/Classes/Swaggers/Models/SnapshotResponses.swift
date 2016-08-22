//
// SnapshotResponses.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/**  */
public class SnapshotResponses: JSONEncodable {
    public var sdids: String?
    public var size: Int32?
    public var data: [SnapshotResponse]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["sdids"] = self.sdids
        nillableDictionary["size"] = self.size?.encodeToJSON()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}