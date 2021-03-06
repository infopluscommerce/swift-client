//
// LowStock.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class LowStock: JSONEncodable {
    public var id: Int32?
    public var warehouseId: Int32?
    public var lowLevelDate: NSDate?
    public var lowStockMessage: String?
    public var printFlag: String?
    public var isDelayed: Bool?
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
        nillableDictionary["lowLevelDate"] = self.lowLevelDate?.encodeToJSON()
        nillableDictionary["lowStockMessage"] = self.lowStockMessage
        nillableDictionary["printFlag"] = self.printFlag
        nillableDictionary["isDelayed"] = self.isDelayed
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
