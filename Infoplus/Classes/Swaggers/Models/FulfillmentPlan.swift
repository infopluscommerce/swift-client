//
// FulfillmentPlan.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FulfillmentPlan: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var name: String?
    public var description: String?
    public var warehouseId: Int32?
    public var lastRunTime: NSDate?
    public var orderSmartFilterId: Int32?
    public var locationSmartFilterId: Int32?
    public var maxOrders: Int32?
    public var batchSize: Int32?
    public var version: String?
    public var createPickWork: Bool?
    public var pickingRule: String?
    public var layoutRule: String?
    public var pickSortRule: String?
    public var createPickList: Bool?
    public var pickListFormat: String?
    public var pickListLayout: String?
    public var pickListGroup: String?
    public var pickListSort: String?
    public var createPickSummary: Bool?
    public var pickSummaryFormat: String?
    public var pickSummaryLayout: String?
    public var pickSummarySort: String?
    public var pickScanSchemeId: Int32?
    public var cartonizeOrders: Bool?
    public var autoShipCasebreakCartons: Bool?
    public var preGenerateParcelLabels: Bool?
    public var createPackingSlip: String?
    public var overridePackingSlipTemplateId: Int32?
    public var createOrderAssemblyGuide: Bool?
    public var createOrderInvoice: String?
    public var overrideOrderInvoiceTemplateId: Int32?
    public var sendToExternalShippingSystem: Bool?
    public var externalShippingSystemId: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["description"] = self.description
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["lastRunTime"] = self.lastRunTime?.encodeToJSON()
        nillableDictionary["orderSmartFilterId"] = self.orderSmartFilterId?.encodeToJSON()
        nillableDictionary["locationSmartFilterId"] = self.locationSmartFilterId?.encodeToJSON()
        nillableDictionary["maxOrders"] = self.maxOrders?.encodeToJSON()
        nillableDictionary["batchSize"] = self.batchSize?.encodeToJSON()
        nillableDictionary["version"] = self.version
        nillableDictionary["createPickWork"] = self.createPickWork
        nillableDictionary["pickingRule"] = self.pickingRule
        nillableDictionary["layoutRule"] = self.layoutRule
        nillableDictionary["pickSortRule"] = self.pickSortRule
        nillableDictionary["createPickList"] = self.createPickList
        nillableDictionary["pickListFormat"] = self.pickListFormat
        nillableDictionary["pickListLayout"] = self.pickListLayout
        nillableDictionary["pickListGroup"] = self.pickListGroup
        nillableDictionary["pickListSort"] = self.pickListSort
        nillableDictionary["createPickSummary"] = self.createPickSummary
        nillableDictionary["pickSummaryFormat"] = self.pickSummaryFormat
        nillableDictionary["pickSummaryLayout"] = self.pickSummaryLayout
        nillableDictionary["pickSummarySort"] = self.pickSummarySort
        nillableDictionary["pickScanSchemeId"] = self.pickScanSchemeId?.encodeToJSON()
        nillableDictionary["cartonizeOrders"] = self.cartonizeOrders
        nillableDictionary["autoShipCasebreakCartons"] = self.autoShipCasebreakCartons
        nillableDictionary["preGenerateParcelLabels"] = self.preGenerateParcelLabels
        nillableDictionary["createPackingSlip"] = self.createPackingSlip
        nillableDictionary["overridePackingSlipTemplateId"] = self.overridePackingSlipTemplateId?.encodeToJSON()
        nillableDictionary["createOrderAssemblyGuide"] = self.createOrderAssemblyGuide
        nillableDictionary["createOrderInvoice"] = self.createOrderInvoice
        nillableDictionary["overrideOrderInvoiceTemplateId"] = self.overrideOrderInvoiceTemplateId?.encodeToJSON()
        nillableDictionary["sendToExternalShippingSystem"] = self.sendToExternalShippingSystem
        nillableDictionary["externalShippingSystemId"] = self.externalShippingSystemId?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
