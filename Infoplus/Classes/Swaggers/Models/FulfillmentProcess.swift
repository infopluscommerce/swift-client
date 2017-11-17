//
// FulfillmentProcess.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FulfillmentProcess: JSONEncodable {

    public var id: Int?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var processNo: Int?
    public var workBatchId: Int?
    public var warehouseId: Int?
    public var fulfillmentPlanId: Int?
    public var pickScanSchemeId: Int?
    public var status: String?
    public var orderSmartFilterId: Int?
    public var locationSmartFilterId: Int?
    public var orderLimit: Int?
    public var numberOfOrders: Int?
    public var numberOfLines: Int?
    public var numberOfSKUs: Int?
    public var completedPicks: Int?
    public var totalPicks: Int?
    public var shippedCasebreaks: Int?
    public var totalCasebreaksToShip: Int?
    public var shippedOrders: Int?
    public var totalOrdersToShip: Int?
    public var completedToDo: Int?
    public var totalToDo: Int?
    public var createPickWork: Bool?
    public var pickingRule: String?
    public var layoutRule: String?
    public var pickSortRule: String?
    public var firstPickPosition: Int?
    public var pickListFormat: String?
    public var pickListLayout: String?
    public var pickListGroup: String?
    public var pickListSort: String?
    public var pickSummaryFormat: String?
    public var pickSummaryLayout: String?
    public var pickSummarySort: String?
    public var createPickSummary: Bool?
    public var createPickList: Bool?
    public var preGenerateParcelLabels: Bool?
    public var shipDate: NSDate?
    public var autoShipCasebreakCartons: Bool?
    public var cartonizeOrders: Bool?
    public var createPackingSlip: Bool?
    public var overridePackingSlipTemplateId: Int?
    public var createOrderAssemblyGuide: Bool?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["processNo"] = self.processNo
        nillableDictionary["workBatchId"] = self.workBatchId
        nillableDictionary["warehouseId"] = self.warehouseId
        nillableDictionary["fulfillmentPlanId"] = self.fulfillmentPlanId
        nillableDictionary["pickScanSchemeId"] = self.pickScanSchemeId
        nillableDictionary["status"] = self.status
        nillableDictionary["orderSmartFilterId"] = self.orderSmartFilterId
        nillableDictionary["locationSmartFilterId"] = self.locationSmartFilterId
        nillableDictionary["orderLimit"] = self.orderLimit
        nillableDictionary["numberOfOrders"] = self.numberOfOrders
        nillableDictionary["numberOfLines"] = self.numberOfLines
        nillableDictionary["numberOfSKUs"] = self.numberOfSKUs
        nillableDictionary["completedPicks"] = self.completedPicks
        nillableDictionary["totalPicks"] = self.totalPicks
        nillableDictionary["shippedCasebreaks"] = self.shippedCasebreaks
        nillableDictionary["totalCasebreaksToShip"] = self.totalCasebreaksToShip
        nillableDictionary["shippedOrders"] = self.shippedOrders
        nillableDictionary["totalOrdersToShip"] = self.totalOrdersToShip
        nillableDictionary["completedToDo"] = self.completedToDo
        nillableDictionary["totalToDo"] = self.totalToDo
        nillableDictionary["createPickWork"] = self.createPickWork
        nillableDictionary["pickingRule"] = self.pickingRule
        nillableDictionary["layoutRule"] = self.layoutRule
        nillableDictionary["pickSortRule"] = self.pickSortRule
        nillableDictionary["firstPickPosition"] = self.firstPickPosition
        nillableDictionary["pickListFormat"] = self.pickListFormat
        nillableDictionary["pickListLayout"] = self.pickListLayout
        nillableDictionary["pickListGroup"] = self.pickListGroup
        nillableDictionary["pickListSort"] = self.pickListSort
        nillableDictionary["pickSummaryFormat"] = self.pickSummaryFormat
        nillableDictionary["pickSummaryLayout"] = self.pickSummaryLayout
        nillableDictionary["pickSummarySort"] = self.pickSummarySort
        nillableDictionary["createPickSummary"] = self.createPickSummary
        nillableDictionary["createPickList"] = self.createPickList
        nillableDictionary["preGenerateParcelLabels"] = self.preGenerateParcelLabels
        nillableDictionary["shipDate"] = self.shipDate?.encodeToJSON()
        nillableDictionary["autoShipCasebreakCartons"] = self.autoShipCasebreakCartons
        nillableDictionary["cartonizeOrders"] = self.cartonizeOrders
        nillableDictionary["createPackingSlip"] = self.createPackingSlip
        nillableDictionary["overridePackingSlipTemplateId"] = self.overridePackingSlipTemplateId
        nillableDictionary["createOrderAssemblyGuide"] = self.createOrderAssemblyGuide
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
