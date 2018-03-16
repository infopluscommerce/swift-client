//
// Item.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Item: JSONEncodable {
    public var id: Int32?
    public var accountCodeId: Int32?
    public var lowStockContactId: Int32?
    public var legacyLowLevelContactId: Int32?
    public var lowStockCodeId: Int32?
    public var majorGroupId: Int32?
    public var subGroupId: Int32?
    public var productCodeId: Int32?
    public var summaryCodeId: Int32?
    public var buyerId: Int32?
    public var lobId: Int32?
    public var sku: String?
    public var vendorSKU: String?
    public var upc: String?
    public var itemDescription: String?
    public var packingSlipDescription: String?
    public var absoluteMax: String?
    public var additionalDescription: String?
    public var backorder: String?
    public var chargeCode: String?
    public var commodityCode: String?
    public var compCode: Int32?
    public var createDate: NSDate?
    public var criticalAmount: Int32?
    public var overallFixedReorderPoint: Int32?
    public var overallLeadTime: Int32?
    public var sellPrice: Double?
    public var pricingPer: String?
    public var lotControlFlag: String?
    public var maxCycle: Int32?
    public var maxInterim: Int32?
    public var numericSortOrder: Int32?
    public var outsideVendorId: Int32?
    public var pickNo: String?
    public var podOrderSuffix: Int32?
    public var podRevDate: String?
    public var status: String?
    public var seasonalItem: String?
    public var requiresProductionLot: String?
    public var sector: String?
    public var secure: String?
    public var serialCode: String?
    public var unitCode: String?
    public var unitsPerWrap: Int32?
    public var weightPerWrap: Double?
    public var quantityPerInnerPack: Int32?
    public var quantityPerCase: Int32?
    public var quantityPerPallet: Int32?
    public var voidDate: NSDate?
    public var wrapCode: String?
    public var extrinsicText1: String?
    public var extrinsicText2: String?
    public var extrinsicText3: String?
    public var extrinsicNumber1: Int32?
    public var extrinsicNumber2: Int32?
    public var extrinsicDecimal1: Double?
    public var extrinsicDecimal2: Double?
    public var casebreakEnabled: String?
    public var vendorId: Int32?
    public var vendorPrice: Double?
    public var vendorPer: String?
    public var modifyDate: NSDate?
    public var primaryImage: String?
    public var pickImage: String?
    public var behaviorType: String?
    public var forwardLotMixingRule: String?
    public var storageLotMixingRule: String?
    public var forwardItemMixingRule: String?
    public var storageItemMixingRule: String?
    public var allocationRule: String?
    public var barcodeField: String?
    public var warehouseDisplayField: String?
    public var productIdTagSchemeId: Int32?
    public var itemSerialSchemeId: Int32?
    public var hazmat: String?
    public var isAlcohol: Bool?
    public var alcoholType: String?
    public var alcoholContent: Double?
    public var alcoholContainer: String?
    public var alcoholVintageYear: String?
    public var alcoholCountry: String?
    public var alcoholState: String?
    public var alcoholRegion: String?
    public var alcoholBrand: String?
    public var alcoholUPCCode: String?
    public var alcoholNAMBCACode: String?
    public var alcoholUNIMERCCode: String?
    public var alcoholSCCCode: String?
    public var length: Double?
    public var width: Double?
    public var height: Double?
    public var topUp: Bool?
    public var shipSolo: Bool?
    public var inventoryUpdateTimestamp: NSDate?
    public var availableQuantity: Int32?
    public var damagedQuantity: Int32?
    public var inFulfillmentProcessQuantity: Int32?
    public var onHandQuantity: Int32?
    public var openOrderQuantity: Int32?
    public var openPOQuantity: Int32?
    public var orderableQuantity: Int32?
    public var unallocatableQuantity: Int32?
    public var unavailableQuantity: Int32?
    public var overallDaysOnHand: Int32?
    public var overallStockStatus: String?
    public var estimatedPallets: Int32?
    public var estimatedCases: Int32?
    public var estimatedInnerPacks: Int32?
    public var w1EstimatedPallets: Int32?
    public var w1EstimatedCases: Int32?
    public var w1EstimatedInnerPacks: Int32?
    public var w2EstimatedPallets: Int32?
    public var w2EstimatedCases: Int32?
    public var w2EstimatedInnerPacks: Int32?
    public var w3EstimatedPallets: Int32?
    public var w3EstimatedCases: Int32?
    public var w3EstimatedInnerPacks: Int32?
    public var w4EstimatedPallets: Int32?
    public var w4EstimatedCases: Int32?
    public var w4EstimatedInnerPacks: Int32?
    public var w5EstimatedPallets: Int32?
    public var w5EstimatedCases: Int32?
    public var w5EstimatedInnerPacks: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["accountCodeId"] = self.accountCodeId?.encodeToJSON()
        nillableDictionary["lowStockContactId"] = self.lowStockContactId?.encodeToJSON()
        nillableDictionary["legacyLowLevelContactId"] = self.legacyLowLevelContactId?.encodeToJSON()
        nillableDictionary["lowStockCodeId"] = self.lowStockCodeId?.encodeToJSON()
        nillableDictionary["majorGroupId"] = self.majorGroupId?.encodeToJSON()
        nillableDictionary["subGroupId"] = self.subGroupId?.encodeToJSON()
        nillableDictionary["productCodeId"] = self.productCodeId?.encodeToJSON()
        nillableDictionary["summaryCodeId"] = self.summaryCodeId?.encodeToJSON()
        nillableDictionary["buyerId"] = self.buyerId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["vendorSKU"] = self.vendorSKU
        nillableDictionary["upc"] = self.upc
        nillableDictionary["itemDescription"] = self.itemDescription
        nillableDictionary["packingSlipDescription"] = self.packingSlipDescription
        nillableDictionary["absoluteMax"] = self.absoluteMax
        nillableDictionary["additionalDescription"] = self.additionalDescription
        nillableDictionary["backorder"] = self.backorder
        nillableDictionary["chargeCode"] = self.chargeCode
        nillableDictionary["commodityCode"] = self.commodityCode
        nillableDictionary["compCode"] = self.compCode?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["criticalAmount"] = self.criticalAmount?.encodeToJSON()
        nillableDictionary["overallFixedReorderPoint"] = self.overallFixedReorderPoint?.encodeToJSON()
        nillableDictionary["overallLeadTime"] = self.overallLeadTime?.encodeToJSON()
        nillableDictionary["sellPrice"] = self.sellPrice
        nillableDictionary["pricingPer"] = self.pricingPer
        nillableDictionary["lotControlFlag"] = self.lotControlFlag
        nillableDictionary["maxCycle"] = self.maxCycle?.encodeToJSON()
        nillableDictionary["maxInterim"] = self.maxInterim?.encodeToJSON()
        nillableDictionary["numericSortOrder"] = self.numericSortOrder?.encodeToJSON()
        nillableDictionary["outsideVendorId"] = self.outsideVendorId?.encodeToJSON()
        nillableDictionary["pickNo"] = self.pickNo
        nillableDictionary["podOrderSuffix"] = self.podOrderSuffix?.encodeToJSON()
        nillableDictionary["podRevDate"] = self.podRevDate
        nillableDictionary["status"] = self.status
        nillableDictionary["seasonalItem"] = self.seasonalItem
        nillableDictionary["requiresProductionLot"] = self.requiresProductionLot
        nillableDictionary["sector"] = self.sector
        nillableDictionary["secure"] = self.secure
        nillableDictionary["serialCode"] = self.serialCode
        nillableDictionary["unitCode"] = self.unitCode
        nillableDictionary["unitsPerWrap"] = self.unitsPerWrap?.encodeToJSON()
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["quantityPerInnerPack"] = self.quantityPerInnerPack?.encodeToJSON()
        nillableDictionary["quantityPerCase"] = self.quantityPerCase?.encodeToJSON()
        nillableDictionary["quantityPerPallet"] = self.quantityPerPallet?.encodeToJSON()
        nillableDictionary["voidDate"] = self.voidDate?.encodeToJSON()
        nillableDictionary["wrapCode"] = self.wrapCode
        nillableDictionary["extrinsicText1"] = self.extrinsicText1
        nillableDictionary["extrinsicText2"] = self.extrinsicText2
        nillableDictionary["extrinsicText3"] = self.extrinsicText3
        nillableDictionary["extrinsicNumber1"] = self.extrinsicNumber1?.encodeToJSON()
        nillableDictionary["extrinsicNumber2"] = self.extrinsicNumber2?.encodeToJSON()
        nillableDictionary["extrinsicDecimal1"] = self.extrinsicDecimal1
        nillableDictionary["extrinsicDecimal2"] = self.extrinsicDecimal2
        nillableDictionary["casebreakEnabled"] = self.casebreakEnabled
        nillableDictionary["vendorId"] = self.vendorId?.encodeToJSON()
        nillableDictionary["vendorPrice"] = self.vendorPrice
        nillableDictionary["vendorPer"] = self.vendorPer
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["primaryImage"] = self.primaryImage
        nillableDictionary["pickImage"] = self.pickImage
        nillableDictionary["behaviorType"] = self.behaviorType
        nillableDictionary["forwardLotMixingRule"] = self.forwardLotMixingRule
        nillableDictionary["storageLotMixingRule"] = self.storageLotMixingRule
        nillableDictionary["forwardItemMixingRule"] = self.forwardItemMixingRule
        nillableDictionary["storageItemMixingRule"] = self.storageItemMixingRule
        nillableDictionary["allocationRule"] = self.allocationRule
        nillableDictionary["barcodeField"] = self.barcodeField
        nillableDictionary["warehouseDisplayField"] = self.warehouseDisplayField
        nillableDictionary["productIdTagSchemeId"] = self.productIdTagSchemeId?.encodeToJSON()
        nillableDictionary["itemSerialSchemeId"] = self.itemSerialSchemeId?.encodeToJSON()
        nillableDictionary["hazmat"] = self.hazmat
        nillableDictionary["isAlcohol"] = self.isAlcohol
        nillableDictionary["alcoholType"] = self.alcoholType
        nillableDictionary["alcoholContent"] = self.alcoholContent
        nillableDictionary["alcoholContainer"] = self.alcoholContainer
        nillableDictionary["alcoholVintageYear"] = self.alcoholVintageYear
        nillableDictionary["alcoholCountry"] = self.alcoholCountry
        nillableDictionary["alcoholState"] = self.alcoholState
        nillableDictionary["alcoholRegion"] = self.alcoholRegion
        nillableDictionary["alcoholBrand"] = self.alcoholBrand
        nillableDictionary["alcoholUPCCode"] = self.alcoholUPCCode
        nillableDictionary["alcoholNAMBCACode"] = self.alcoholNAMBCACode
        nillableDictionary["alcoholUNIMERCCode"] = self.alcoholUNIMERCCode
        nillableDictionary["alcoholSCCCode"] = self.alcoholSCCCode
        nillableDictionary["length"] = self.length
        nillableDictionary["width"] = self.width
        nillableDictionary["height"] = self.height
        nillableDictionary["topUp"] = self.topUp
        nillableDictionary["shipSolo"] = self.shipSolo
        nillableDictionary["inventoryUpdateTimestamp"] = self.inventoryUpdateTimestamp?.encodeToJSON()
        nillableDictionary["availableQuantity"] = self.availableQuantity?.encodeToJSON()
        nillableDictionary["damagedQuantity"] = self.damagedQuantity?.encodeToJSON()
        nillableDictionary["inFulfillmentProcessQuantity"] = self.inFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["onHandQuantity"] = self.onHandQuantity?.encodeToJSON()
        nillableDictionary["openOrderQuantity"] = self.openOrderQuantity?.encodeToJSON()
        nillableDictionary["openPOQuantity"] = self.openPOQuantity?.encodeToJSON()
        nillableDictionary["orderableQuantity"] = self.orderableQuantity?.encodeToJSON()
        nillableDictionary["unallocatableQuantity"] = self.unallocatableQuantity?.encodeToJSON()
        nillableDictionary["unavailableQuantity"] = self.unavailableQuantity?.encodeToJSON()
        nillableDictionary["overallDaysOnHand"] = self.overallDaysOnHand?.encodeToJSON()
        nillableDictionary["overallStockStatus"] = self.overallStockStatus
        nillableDictionary["estimatedPallets"] = self.estimatedPallets?.encodeToJSON()
        nillableDictionary["estimatedCases"] = self.estimatedCases?.encodeToJSON()
        nillableDictionary["estimatedInnerPacks"] = self.estimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w1EstimatedPallets"] = self.w1EstimatedPallets?.encodeToJSON()
        nillableDictionary["w1EstimatedCases"] = self.w1EstimatedCases?.encodeToJSON()
        nillableDictionary["w1EstimatedInnerPacks"] = self.w1EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w2EstimatedPallets"] = self.w2EstimatedPallets?.encodeToJSON()
        nillableDictionary["w2EstimatedCases"] = self.w2EstimatedCases?.encodeToJSON()
        nillableDictionary["w2EstimatedInnerPacks"] = self.w2EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w3EstimatedPallets"] = self.w3EstimatedPallets?.encodeToJSON()
        nillableDictionary["w3EstimatedCases"] = self.w3EstimatedCases?.encodeToJSON()
        nillableDictionary["w3EstimatedInnerPacks"] = self.w3EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w4EstimatedPallets"] = self.w4EstimatedPallets?.encodeToJSON()
        nillableDictionary["w4EstimatedCases"] = self.w4EstimatedCases?.encodeToJSON()
        nillableDictionary["w4EstimatedInnerPacks"] = self.w4EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w5EstimatedPallets"] = self.w5EstimatedPallets?.encodeToJSON()
        nillableDictionary["w5EstimatedCases"] = self.w5EstimatedCases?.encodeToJSON()
        nillableDictionary["w5EstimatedInnerPacks"] = self.w5EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
