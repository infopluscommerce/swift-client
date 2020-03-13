//
// JobTimeActivity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class JobTimeActivity: JSONEncodable {
    public var id: Int32?
    public var importedId: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var date: NSDate?
    public var secondDuration: Int32?
    public var userId: Int32?
    public var email: String?
    public var lobId: Int32?
    public var jobTypeId: Int32?
    public var jobTypeName: String?
    public var note: String?
    public var billingQuantity: Double?
    public var chargeRate: Double?
    public var extendedCharge: Double?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["importedId"] = self.importedId?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["date"] = self.date?.encodeToJSON()
        nillableDictionary["secondDuration"] = self.secondDuration?.encodeToJSON()
        nillableDictionary["userId"] = self.userId?.encodeToJSON()
        nillableDictionary["email"] = self.email
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["jobTypeId"] = self.jobTypeId?.encodeToJSON()
        nillableDictionary["jobTypeName"] = self.jobTypeName
        nillableDictionary["note"] = self.note
        nillableDictionary["billingQuantity"] = self.billingQuantity
        nillableDictionary["chargeRate"] = self.chargeRate
        nillableDictionary["extendedCharge"] = self.extendedCharge
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}