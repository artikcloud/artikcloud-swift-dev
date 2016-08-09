//
// Device.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Device information. */
public class Device: NSObject, JSONEncodable, NSCoding {

    /** Device ID */
    public var id: String?
    /** User ID */
    public var uid: String?
    /** Device Type ID */
    public var dtid: String?
    /** Name */
    public var name: String?
    /** Manifest Version */
    public var manifestVersion: Int?
    /** Manifest Version Policy (LATEST, DEVICE) */
    public var manifestVersionPolicy: String?
    /** Needs Provider Authentication */
    public var needProviderAuth: Bool?
    public var properties: [String:AnyObject]?
    /** Created On (milliseconds since epoch) */
    public var createdOn: Int?
    /** Is Connected */
    public var connected: Bool?
    /** Certificate Info (if any) */
    public var certificateInfo: String?
    /** Certificate Signature (if any) */
    public var certificateSignature: String?
    /** External ID (if any) */
    public var eid: String?
    public var providerCredentials: [String:AnyObject]?
    
    
    struct PropertyKey {
        static let id_key = "_id"
        static let uid_key = "_uid"
        static let dtid_key = "_dtid"
        static let name_key = "_name"
        static let manifestVersion_key = "_manifestVersion"
        static let manifestVersionPolicy_key = "_manifestVersionPolicy"
        static let needProviderAuth_key = "_needProviderAuth"
        static let properties_key = "_properties"
        static let createdOn_key = "_createdOn"
        static let connected_key = "_connected"
        static let certificateInfo_key = "_certificateInfo"
        static let certificateSignature_key = "_certificateSignature"
        static let eid_key = "_eid"
        static let providerCredentials = "_providerCredentials"
    }

    public override init() {
        super.init()
    }
    
    init(id: String?, uid: String?, dtid: String?, name: String?, manifestVersion: Int?, manifestVersionPolicy: String?, needProviderAuth: Bool?, properties: [String:AnyObject]?, createdOn: Int?, connected: Bool?, certificateInfo: String?, certificateSignature: String?, eid: String?, providerCredentials: [String:AnyObject]?) {
        super.init()
        self.id = id
        self.uid = uid
        self.dtid = dtid
        self.name = name
        self.manifestVersion = manifestVersion
        self.manifestVersionPolicy = manifestVersionPolicy
        self.needProviderAuth = needProviderAuth
        self.properties = properties
        self.createdOn = createdOn
        self.connected = connected
        self.certificateInfo = certificateInfo
        self.certificateSignature = certificateSignature
        self.eid = eid
        self.providerCredentials = providerCredentials
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["uid"] = self.uid
        nillableDictionary["dtid"] = self.dtid
        nillableDictionary["name"] = self.name
        nillableDictionary["manifestVersion"] = self.manifestVersion
        nillableDictionary["manifestVersionPolicy"] = self.manifestVersionPolicy
        nillableDictionary["needProviderAuth"] = self.needProviderAuth
        nillableDictionary["properties"] = self.properties?.encodeToJSON()
        nillableDictionary["createdOn"] = self.createdOn
        nillableDictionary["connected"] = self.connected
        nillableDictionary["certificateInfo"] = self.certificateInfo
        nillableDictionary["certificateSignature"] = self.certificateSignature
        nillableDictionary["eid"] = self.eid
        nillableDictionary["providerCredentials"] = self.providerCredentials?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
    
    // MARK: NSObject Methods
    public func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(id, forKey: PropertyKey.id_key)
        aCoder.encodeObject(uid, forKey: PropertyKey.uid_key)
        aCoder.encodeObject(dtid, forKey: PropertyKey.dtid_key)
        aCoder.encodeObject(name, forKey: PropertyKey.name_key)
        aCoder.encodeObject(manifestVersion, forKey: PropertyKey.manifestVersion_key)
        aCoder.encodeObject(manifestVersionPolicy, forKey: PropertyKey.manifestVersionPolicy_key)
        aCoder.encodeObject(needProviderAuth, forKey: PropertyKey.needProviderAuth_key)
        aCoder.encodeObject(properties, forKey: PropertyKey.properties_key)
        aCoder.encodeObject(createdOn, forKey: PropertyKey.createdOn_key)
        aCoder.encodeObject(connected, forKey: PropertyKey.connected_key)
        aCoder.encodeObject(certificateInfo, forKey: PropertyKey.certificateInfo_key)
        aCoder.encodeObject(certificateSignature, forKey: PropertyKey.certificateSignature_key)
        aCoder.encodeObject(eid, forKey: PropertyKey.eid_key)
        aCoder.encodeObject(providerCredentials, forKey: PropertyKey.providerCredentials)
    }
    
    required convenience public init(coder aDecoder: NSCoder) {
        let id = aDecoder.decodeObjectForKey(PropertyKey.id_key) as? String
        let uid = aDecoder.decodeObjectForKey(PropertyKey.uid_key) as? String
        let dtid = aDecoder.decodeObjectForKey(PropertyKey.dtid_key) as? String
        let name = aDecoder.decodeObjectForKey(PropertyKey.name_key) as? String
        let manifestVersion = aDecoder.decodeObjectForKey(PropertyKey.manifestVersion_key) as? Int
        let manifestVersionPolicy = aDecoder.decodeObjectForKey(PropertyKey.manifestVersionPolicy_key) as? String
        let needProviderAuth = aDecoder.decodeObjectForKey(PropertyKey.needProviderAuth_key) as? Bool
        let properties = aDecoder.decodeObjectForKey(PropertyKey.properties_key) as? [String:AnyObject]
        let createdOn = aDecoder.decodeObjectForKey(PropertyKey.createdOn_key) as? Int
        let connected = aDecoder.decodeObjectForKey(PropertyKey.connected_key) as? Bool
        let certificateInfo = aDecoder.decodeObjectForKey(PropertyKey.certificateInfo_key) as? String
        let certificateSignature = aDecoder.decodeObjectForKey(PropertyKey.certificateSignature_key) as? String
        let eid = aDecoder.decodeObjectForKey(PropertyKey.eid_key) as? String
        let providerCredentials = aDecoder.decodeObjectForKey(PropertyKey.providerCredentials) as? [String:AnyObject]
        
        self.init(id: id, uid: uid, dtid: dtid, name: name, manifestVersion: manifestVersion, manifestVersionPolicy: manifestVersionPolicy, needProviderAuth: needProviderAuth, properties: properties, createdOn: createdOn, connected: connected, certificateInfo: certificateInfo, certificateSignature: certificateSignature, eid: eid, providerCredentials: providerCredentials)
    }
}
