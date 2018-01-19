//
// ItemReceipt.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ItemReceipt: JSONEncodable {
    public var id: Int32?
    public var poNoId: Int32?
    public var lobId: Int32?
    public var legacyPoNo: String?
    public var warehouseId: Int32?
    public var orderDate: NSDate?
    public var fullDescription: String?
    public var factCost: Double?
    public var mlCost: Double?
    public var sku: String?
    public var orderQuantity: Int32?
    public var requestedDeliveryDate: NSDate?
    public var unitCode: String?
    public var wrapCode: String?
    public var unitsPerWrap: Int32?
    public var cost: Double?
    public var sellPrice: Double?
    public var pricingPer: String?
    public var maxFreight: Double?
    public var chargeFreight: String?
    public var maxOther: Double?
    public var distDate: NSDate?
    public var voidDate: NSDate?
    public var freezeAction: String?
    public var revDate: String?
    public var artBack: String?
    public var origin: String?
    public var sample: Int32?
    public var sampleTo: String?
    public var maxOvers: Int32?
    public var maxUnders: Int32?
    public var receivedSfp: Int32?
    public var budgetCode: String?
    public var accountingCode: String?
    public var taxExempt: String?
    public var capitalize: String?
    public var accrual: String?
    public var oddQuantity: Int32?
    public var freightCost: Double?
    public var receivedDate: NSDate?
    public var receivedQuantity: Int32?
    public var fromProd: Int32?
    public var sfpComplete: String?
    public var endQuantity: Int32?
    public var endVal: Double?
    public var endFact: Double?
    public var interimQuantity: Int32?
    public var interimVal: Double?
    public var interimFact: Double?
    public var lastAct: NSDate?
    public var weightPerWrap: Double?
    public var norcs: String?
    public var vendorId: Int32?
    public var bsVendor: Int32?
    public var mlVendor: Int32?
    public var receiptNo: Int32?
    public var paidFull: String?
    public var enteredBy: String?
    public var receivedBy: String?
    public var lineNo: Int32?
    public var prodLot: String?
    public var productIdTag: String?
    public var unitsPerCase: Int32?
    public var caseWeight: Double?
    public var height: Double?
    public var width: Double?
    public var length: Double?
    public var dockDate: NSDate?
    public var modifyDate: NSDate?
    public var impressions: Int32?
    public var asnLine: Int32?
    public var upc: String?
    public var vendorSKU: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["poNoId"] = self.poNoId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["legacyPoNo"] = self.legacyPoNo
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["orderDate"] = self.orderDate?.encodeToJSON()
        nillableDictionary["fullDescription"] = self.fullDescription
        nillableDictionary["factCost"] = self.factCost
        nillableDictionary["mlCost"] = self.mlCost
        nillableDictionary["sku"] = self.sku
        nillableDictionary["orderQuantity"] = self.orderQuantity?.encodeToJSON()
        nillableDictionary["requestedDeliveryDate"] = self.requestedDeliveryDate?.encodeToJSON()
        nillableDictionary["unitCode"] = self.unitCode
        nillableDictionary["wrapCode"] = self.wrapCode
        nillableDictionary["unitsPerWrap"] = self.unitsPerWrap?.encodeToJSON()
        nillableDictionary["cost"] = self.cost
        nillableDictionary["sellPrice"] = self.sellPrice
        nillableDictionary["pricingPer"] = self.pricingPer
        nillableDictionary["maxFreight"] = self.maxFreight
        nillableDictionary["chargeFreight"] = self.chargeFreight
        nillableDictionary["maxOther"] = self.maxOther
        nillableDictionary["distDate"] = self.distDate?.encodeToJSON()
        nillableDictionary["voidDate"] = self.voidDate?.encodeToJSON()
        nillableDictionary["freezeAction"] = self.freezeAction
        nillableDictionary["revDate"] = self.revDate
        nillableDictionary["artBack"] = self.artBack
        nillableDictionary["origin"] = self.origin
        nillableDictionary["sample"] = self.sample?.encodeToJSON()
        nillableDictionary["sampleTo"] = self.sampleTo
        nillableDictionary["maxOvers"] = self.maxOvers?.encodeToJSON()
        nillableDictionary["maxUnders"] = self.maxUnders?.encodeToJSON()
        nillableDictionary["receivedSfp"] = self.receivedSfp?.encodeToJSON()
        nillableDictionary["budgetCode"] = self.budgetCode
        nillableDictionary["accountingCode"] = self.accountingCode
        nillableDictionary["taxExempt"] = self.taxExempt
        nillableDictionary["capitalize"] = self.capitalize
        nillableDictionary["accrual"] = self.accrual
        nillableDictionary["oddQuantity"] = self.oddQuantity?.encodeToJSON()
        nillableDictionary["freightCost"] = self.freightCost
        nillableDictionary["receivedDate"] = self.receivedDate?.encodeToJSON()
        nillableDictionary["receivedQuantity"] = self.receivedQuantity?.encodeToJSON()
        nillableDictionary["fromProd"] = self.fromProd?.encodeToJSON()
        nillableDictionary["sfpComplete"] = self.sfpComplete
        nillableDictionary["endQuantity"] = self.endQuantity?.encodeToJSON()
        nillableDictionary["endVal"] = self.endVal
        nillableDictionary["endFact"] = self.endFact
        nillableDictionary["interimQuantity"] = self.interimQuantity?.encodeToJSON()
        nillableDictionary["interimVal"] = self.interimVal
        nillableDictionary["interimFact"] = self.interimFact
        nillableDictionary["lastAct"] = self.lastAct?.encodeToJSON()
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["norcs"] = self.norcs
        nillableDictionary["vendorId"] = self.vendorId?.encodeToJSON()
        nillableDictionary["bsVendor"] = self.bsVendor?.encodeToJSON()
        nillableDictionary["mlVendor"] = self.mlVendor?.encodeToJSON()
        nillableDictionary["receiptNo"] = self.receiptNo?.encodeToJSON()
        nillableDictionary["paidFull"] = self.paidFull
        nillableDictionary["enteredBy"] = self.enteredBy
        nillableDictionary["receivedBy"] = self.receivedBy
        nillableDictionary["lineNo"] = self.lineNo?.encodeToJSON()
        nillableDictionary["prodLot"] = self.prodLot
        nillableDictionary["productIdTag"] = self.productIdTag
        nillableDictionary["unitsPerCase"] = self.unitsPerCase?.encodeToJSON()
        nillableDictionary["caseWeight"] = self.caseWeight
        nillableDictionary["height"] = self.height
        nillableDictionary["width"] = self.width
        nillableDictionary["length"] = self.length
        nillableDictionary["dockDate"] = self.dockDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["impressions"] = self.impressions?.encodeToJSON()
        nillableDictionary["asnLine"] = self.asnLine?.encodeToJSON()
        nillableDictionary["upc"] = self.upc
        nillableDictionary["vendorSKU"] = self.vendorSKU
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
