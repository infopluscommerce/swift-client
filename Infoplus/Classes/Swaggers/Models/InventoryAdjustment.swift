//
// InventoryAdjustment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InventoryAdjustment: JSONEncodable {
    public var id: Int32?
    public var lobId: Int32?
    public var sku: String?
    public var poNoId: Int32?
    public var adjustmentDate: NSDate?
    public var adjustmentTime: String?
    public var location: String?
    public var qty: Int32?
    public var note: String?
    public var authorizedBy: String?
    public var printed: String?
    public var orderNo: Double?
    public var adjustmentCode: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["poNoId"] = self.poNoId?.encodeToJSON()
        nillableDictionary["adjustmentDate"] = self.adjustmentDate?.encodeToJSON()
        nillableDictionary["adjustmentTime"] = self.adjustmentTime
        nillableDictionary["location"] = self.location
        nillableDictionary["qty"] = self.qty?.encodeToJSON()
        nillableDictionary["note"] = self.note
        nillableDictionary["authorizedBy"] = self.authorizedBy
        nillableDictionary["printed"] = self.printed
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["adjustmentCode"] = self.adjustmentCode
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
