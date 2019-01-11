//
// PickFaceAssignment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PickFaceAssignment: JSONEncodable {
    public var id: Int32?
    public var warehouseId: Int32?
    public var locationId: Int32?
    public var replenishmentPoint: Int32?
    public var maxQuantity: Int32?
    public var active: Bool?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var customFields: [String:AnyObject]?
    public var sku: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["locationId"] = self.locationId?.encodeToJSON()
        nillableDictionary["replenishmentPoint"] = self.replenishmentPoint?.encodeToJSON()
        nillableDictionary["maxQuantity"] = self.maxQuantity?.encodeToJSON()
        nillableDictionary["active"] = self.active
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
