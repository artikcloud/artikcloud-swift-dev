//
// EventFeedData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** WebSocket Event Feed */
public class EventFeedData: JSONEncodable {
    /** Event */
    public var event: String?
    /** Timestamp */
    public var ts: Int64?
    /** Message Payload */
    public var data: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["event"] = self.event
        nillableDictionary["ts"] = self.ts?.encodeToJSON()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
