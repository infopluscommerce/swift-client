//
// InventoryDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InventoryDetail: JSONEncodable {
    public var id: Int32?
    public var warehouseLocationId: Int32?
    public var quantity: Int32?
    public var distributionDate: NSDate?
    public var expirationDate: NSDate?
    public var quantityPerInnerPack: Int32?
    public var quantityPerCase: Int32?
    public var quantityPerPallet: Int32?
    public var estimatedInnerPacks: Int32?
    public var estimatedCases: Int32?
    public var estimatedPallets: Int32?
    public var unitsPerWrap: Int32?
    public var revisionDate: String?
    public var productionLot: String?
    public var oldestReceiptDate: NSDate?
    public var lobId: Int32?
    public var poNo: String?
    public var customFields: [String:AnyObject]?
    public var sku: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["warehouseLocationId"] = self.warehouseLocationId?.encodeToJSON()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["distributionDate"] = self.distributionDate?.encodeToJSON()
        nillableDictionary["expirationDate"] = self.expirationDate?.encodeToJSON()
        nillableDictionary["quantityPerInnerPack"] = self.quantityPerInnerPack?.encodeToJSON()
        nillableDictionary["quantityPerCase"] = self.quantityPerCase?.encodeToJSON()
        nillableDictionary["quantityPerPallet"] = self.quantityPerPallet?.encodeToJSON()
        nillableDictionary["estimatedInnerPacks"] = self.estimatedInnerPacks?.encodeToJSON()
        nillableDictionary["estimatedCases"] = self.estimatedCases?.encodeToJSON()
        nillableDictionary["estimatedPallets"] = self.estimatedPallets?.encodeToJSON()
        nillableDictionary["unitsPerWrap"] = self.unitsPerWrap?.encodeToJSON()
        nillableDictionary["revisionDate"] = self.revisionDate
        nillableDictionary["productionLot"] = self.productionLot
        nillableDictionary["oldestReceiptDate"] = self.oldestReceiptDate?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["poNo"] = self.poNo
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
