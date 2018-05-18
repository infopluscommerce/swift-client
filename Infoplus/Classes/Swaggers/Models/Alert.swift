//
// Alert.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Alert: JSONEncodable {
    public var id: Int32?
    public var type: String?
    public var level: String?
    public var message: String?
    public var link: String?
    public var linkText: String?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var expirationDate: NSDate?
    public var acknowledgeDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["level"] = self.level
        nillableDictionary["message"] = self.message
        nillableDictionary["link"] = self.link
        nillableDictionary["linkText"] = self.linkText
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["expirationDate"] = self.expirationDate?.encodeToJSON()
        nillableDictionary["acknowledgeDate"] = self.acknowledgeDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}