//
// ExportData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Export Data. */
public class ExportData: JSONEncodable {

    public var expirationDate: Int?
    public var exportId: String?
    public var fileSize: Int?
    public var md5: String?
    public var request: ExportRequest?
    /** Export status */
    public var status: String?
    public var totalMessages: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["expirationDate"] = self.expirationDate
        nillableDictionary["exportId"] = self.exportId
        nillableDictionary["fileSize"] = self.fileSize
        nillableDictionary["md5"] = self.md5
        nillableDictionary["request"] = self.request?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["totalMessages"] = self.totalMessages
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}