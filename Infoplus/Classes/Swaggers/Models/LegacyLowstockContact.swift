//
// LegacyLowstockContact.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class LegacyLowstockContact: JSONEncodable {

    public var lobId: Int?
    public var internalId: Int?
    public var id: String?
    public var name: String?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["lobId"] = self.lobId
        nillableDictionary["internalId"] = self.internalId
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
