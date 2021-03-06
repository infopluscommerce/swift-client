//
// BusinessTransaction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BusinessTransaction: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var serverName: String?
    public var queueName: String?
    public var lobId: Int32?
    public var messageBody: String?
    public var alertId: Int32?
    public var status: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["serverName"] = self.serverName
        nillableDictionary["queueName"] = self.queueName
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["messageBody"] = self.messageBody
        nillableDictionary["alertId"] = self.alertId?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
