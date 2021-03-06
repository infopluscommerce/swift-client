//
// BillingCodeActivity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BillingCodeActivity: JSONEncodable {
    public var id: Int32?
    public var importedId: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var date: NSDate?
    public var quantity: Double?
    public var lobId: Int32?
    public var userId: Int32?
    public var email: String?
    public var billingCodeTypeId: Int32?
    public var billingCodeTypeName: String?
    public var note: String?
    public var recordTypeName: String?
    public var recordTypeId: Int32?
    public var recordId: String?
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
        nillableDictionary["quantity"] = self.quantity
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["userId"] = self.userId?.encodeToJSON()
        nillableDictionary["email"] = self.email
        nillableDictionary["billingCodeTypeId"] = self.billingCodeTypeId?.encodeToJSON()
        nillableDictionary["billingCodeTypeName"] = self.billingCodeTypeName
        nillableDictionary["note"] = self.note
        nillableDictionary["recordTypeName"] = self.recordTypeName
        nillableDictionary["recordTypeId"] = self.recordTypeId?.encodeToJSON()
        nillableDictionary["recordId"] = self.recordId
        nillableDictionary["billingQuantity"] = self.billingQuantity
        nillableDictionary["chargeRate"] = self.chargeRate
        nillableDictionary["extendedCharge"] = self.extendedCharge
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
