//
// WorkActivity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class WorkActivity: JSONEncodable {
    public var id: Int32?
    public var importedRecordId: Int32?
    public var lobId: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var userId: Int32?
    public var email: String?
    public var type: String?
    public var typeName: String?
    public var status: String?
    public var statusName: String?
    public var workBatchId: Int32?
    public var workParentId: Int32?
    public var priorityCode: Int32?
    public var foreignId: Int32?
    public var sourceWarehouseId: Int32?
    public var sourceWarehouseName: String?
    public var sourceLocation: String?
    public var sourceBuildingId: Int32?
    public var sourceBuildingName: String?
    public var sourceZoneId: Int32?
    public var sourceZoneName: String?
    public var sourceAisleId: Int32?
    public var sourceAisleAddress: String?
    public var sourceOrigin: Int32?
    public var sourceOriginName: String?
    public var sourceBillingTypeId: Int32?
    public var sourceBillingTypeName: String?
    public var sourceBehaviorType: String?
    public var sourceBehaviorTypeName: String?
    public var sourceFootprintId: Int32?
    public var sourceFootprintName: String?
    public var sourceFootprintHeight: Int32?
    public var sourceFootprintWidth: Int32?
    public var sourceFootprintDepth: Int32?
    public var sourceAddressSchemeId: Int32?
    public var sourceAddressSchemeName: String?
    public var sourceLevel: Int32?
    public var sourceBay: Int32?
    public var sourceNumber: Int32?
    public var sourceOnline: Bool?
    public var sourcePriorityCode: Int32?
    public var sourceCost: Int32?
    public var sourceAllowItemMixing: Bool?
    public var destinationWarehouseId: Int32?
    public var destinationWarehouseName: String?
    public var destinationLocation: String?
    public var destinationBuildingId: Int32?
    public var destinationBuildingName: String?
    public var destinationZoneId: Int32?
    public var destinationZoneName: String?
    public var destinationAisleId: Int32?
    public var destinationAisleAddress: String?
    public var destinationOrigin: Int32?
    public var destinationOriginName: String?
    public var destinationBillingTypeId: Int32?
    public var destinationBillingTypeName: String?
    public var destinationBehaviorType: String?
    public var destinationBehaviorTypeName: String?
    public var destinationFootprintId: Int32?
    public var destinationFootprintName: String?
    public var destinationFootprintHeight: Int32?
    public var destinationFootprintWidth: Int32?
    public var destinationFootprintDepth: Int32?
    public var destinationAddressSchemeId: Int32?
    public var destinationAddressSchemeName: String?
    public var destinationLevel: Int32?
    public var destinationBay: Int32?
    public var destinationNumber: Int32?
    public var destinationOnline: Bool?
    public var destinationPriorityCode: Int32?
    public var destinationCost: Int32?
    public var destinationAllowItemMixing: Bool?
    public var workCreateDate: NSDate?
    public var workModifyDate: NSDate?
    public var masterRef: Int32?
    public var weightPerWrap: Double?
    public var sku: String?
    public var numericSortOrder: Int32?
    public var itemDescription: String?
    public var additionalDescription: String?
    public var unitCode: String?
    public var wrapCode: String?
    public var unitsPerWrap: Int32?
    public var quantity: Int32?
    public var numberOfWraps: Int32?
    public var numberOfCases: Int32?
    public var pickTouches: Int32?
    public var classRestriction: String?
    public var maxCycle: Int32?
    public var maxInterim: Int32?
    public var seasonalItem: String?
    public var secure: String?
    public var productType: Int32?
    public var itemStatus: String?
    public var overallLeadTime: Int32?
    public var overallFixedReorderPoint: Int32?
    public var qualityControlIndicator: String?
    public var lotControlFlag: String?
    public var productCodeFlag: String?
    public var chargeCode: String?
    public var podRevDate: String?
    public var podOrderSuffix: Int32?
    public var serialCode: String?
    public var assetCode: String?
    public var backorder: String?
    public var absoluteMax: String?
    public var accountCodeId: Int32?
    public var summaryCodeId: Int32?
    public var lowStockContactId: Int32?
    public var legacyLowLevelContactId: Int32?
    public var lowStockCodeId: Int32?
    public var majorGroupId: Int32?
    public var subGroupId: Int32?
    public var productCodeId: Int32?
    public var buyerId: Int32?
    public var vendorSKU: String?
    public var upc: String?
    public var packingSlipDescription: String?
    public var commodityCode: String?
    public var compCode: Int32?
    public var criticalAmount: Int32?
    public var listPrice: Double?
    public var outsideVendor: Int32?
    public var pickNo: String?
    public var requiresProductionLot: String?
    public var sector: String?
    public var voidDate: NSDate?
    public var extrinsicText1: String?
    public var extrinsicText2: String?
    public var extrinsicText3: String?
    public var extrinsicNumber1: Int32?
    public var extrinsicNumber2: Int32?
    public var extrinsicDecimal1: Double?
    public var extrinsicDecimal2: Double?
    public var casebreakEnabled: String?
    public var alcoholTypeId: Int32?
    public var alcoholTypeName: String?
    public var alcoholContent: Double?
    public var alcoholContainerId: Int32?
    public var alcoholContainerName: String?
    public var alcoholContainerVolume: Int32?
    public var alcoholVintageYear: String?
    public var alcoholCountryId: Int32?
    public var alcoholCountryName: String?
    public var alcoholState: String?
    public var alcoholRegion: String?
    public var alcoholBrand: String?
    public var alcoholUPCCode: String?
    public var alcoholNABCACode: String?
    public var alcoholUNIMERCCode: String?
    public var alcoholSCCCode: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["importedRecordId"] = self.importedRecordId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["userId"] = self.userId?.encodeToJSON()
        nillableDictionary["email"] = self.email
        nillableDictionary["type"] = self.type
        nillableDictionary["typeName"] = self.typeName
        nillableDictionary["status"] = self.status
        nillableDictionary["statusName"] = self.statusName
        nillableDictionary["workBatchId"] = self.workBatchId?.encodeToJSON()
        nillableDictionary["workParentId"] = self.workParentId?.encodeToJSON()
        nillableDictionary["priorityCode"] = self.priorityCode?.encodeToJSON()
        nillableDictionary["foreignId"] = self.foreignId?.encodeToJSON()
        nillableDictionary["sourceWarehouseId"] = self.sourceWarehouseId?.encodeToJSON()
        nillableDictionary["sourceWarehouseName"] = self.sourceWarehouseName
        nillableDictionary["sourceLocation"] = self.sourceLocation
        nillableDictionary["sourceBuildingId"] = self.sourceBuildingId?.encodeToJSON()
        nillableDictionary["sourceBuildingName"] = self.sourceBuildingName
        nillableDictionary["sourceZoneId"] = self.sourceZoneId?.encodeToJSON()
        nillableDictionary["sourceZoneName"] = self.sourceZoneName
        nillableDictionary["sourceAisleId"] = self.sourceAisleId?.encodeToJSON()
        nillableDictionary["sourceAisleAddress"] = self.sourceAisleAddress
        nillableDictionary["sourceOrigin"] = self.sourceOrigin?.encodeToJSON()
        nillableDictionary["sourceOriginName"] = self.sourceOriginName
        nillableDictionary["sourceBillingTypeId"] = self.sourceBillingTypeId?.encodeToJSON()
        nillableDictionary["sourceBillingTypeName"] = self.sourceBillingTypeName
        nillableDictionary["sourceBehaviorType"] = self.sourceBehaviorType
        nillableDictionary["sourceBehaviorTypeName"] = self.sourceBehaviorTypeName
        nillableDictionary["sourceFootprintId"] = self.sourceFootprintId?.encodeToJSON()
        nillableDictionary["sourceFootprintName"] = self.sourceFootprintName
        nillableDictionary["sourceFootprintHeight"] = self.sourceFootprintHeight?.encodeToJSON()
        nillableDictionary["sourceFootprintWidth"] = self.sourceFootprintWidth?.encodeToJSON()
        nillableDictionary["sourceFootprintDepth"] = self.sourceFootprintDepth?.encodeToJSON()
        nillableDictionary["sourceAddressSchemeId"] = self.sourceAddressSchemeId?.encodeToJSON()
        nillableDictionary["sourceAddressSchemeName"] = self.sourceAddressSchemeName
        nillableDictionary["sourceLevel"] = self.sourceLevel?.encodeToJSON()
        nillableDictionary["sourceBay"] = self.sourceBay?.encodeToJSON()
        nillableDictionary["sourceNumber"] = self.sourceNumber?.encodeToJSON()
        nillableDictionary["sourceOnline"] = self.sourceOnline
        nillableDictionary["sourcePriorityCode"] = self.sourcePriorityCode?.encodeToJSON()
        nillableDictionary["sourceCost"] = self.sourceCost?.encodeToJSON()
        nillableDictionary["sourceAllowItemMixing"] = self.sourceAllowItemMixing
        nillableDictionary["destinationWarehouseId"] = self.destinationWarehouseId?.encodeToJSON()
        nillableDictionary["destinationWarehouseName"] = self.destinationWarehouseName
        nillableDictionary["destinationLocation"] = self.destinationLocation
        nillableDictionary["destinationBuildingId"] = self.destinationBuildingId?.encodeToJSON()
        nillableDictionary["destinationBuildingName"] = self.destinationBuildingName
        nillableDictionary["destinationZoneId"] = self.destinationZoneId?.encodeToJSON()
        nillableDictionary["destinationZoneName"] = self.destinationZoneName
        nillableDictionary["destinationAisleId"] = self.destinationAisleId?.encodeToJSON()
        nillableDictionary["destinationAisleAddress"] = self.destinationAisleAddress
        nillableDictionary["destinationOrigin"] = self.destinationOrigin?.encodeToJSON()
        nillableDictionary["destinationOriginName"] = self.destinationOriginName
        nillableDictionary["destinationBillingTypeId"] = self.destinationBillingTypeId?.encodeToJSON()
        nillableDictionary["destinationBillingTypeName"] = self.destinationBillingTypeName
        nillableDictionary["destinationBehaviorType"] = self.destinationBehaviorType
        nillableDictionary["destinationBehaviorTypeName"] = self.destinationBehaviorTypeName
        nillableDictionary["destinationFootprintId"] = self.destinationFootprintId?.encodeToJSON()
        nillableDictionary["destinationFootprintName"] = self.destinationFootprintName
        nillableDictionary["destinationFootprintHeight"] = self.destinationFootprintHeight?.encodeToJSON()
        nillableDictionary["destinationFootprintWidth"] = self.destinationFootprintWidth?.encodeToJSON()
        nillableDictionary["destinationFootprintDepth"] = self.destinationFootprintDepth?.encodeToJSON()
        nillableDictionary["destinationAddressSchemeId"] = self.destinationAddressSchemeId?.encodeToJSON()
        nillableDictionary["destinationAddressSchemeName"] = self.destinationAddressSchemeName
        nillableDictionary["destinationLevel"] = self.destinationLevel?.encodeToJSON()
        nillableDictionary["destinationBay"] = self.destinationBay?.encodeToJSON()
        nillableDictionary["destinationNumber"] = self.destinationNumber?.encodeToJSON()
        nillableDictionary["destinationOnline"] = self.destinationOnline
        nillableDictionary["destinationPriorityCode"] = self.destinationPriorityCode?.encodeToJSON()
        nillableDictionary["destinationCost"] = self.destinationCost?.encodeToJSON()
        nillableDictionary["destinationAllowItemMixing"] = self.destinationAllowItemMixing
        nillableDictionary["workCreateDate"] = self.workCreateDate?.encodeToJSON()
        nillableDictionary["workModifyDate"] = self.workModifyDate?.encodeToJSON()
        nillableDictionary["masterRef"] = self.masterRef?.encodeToJSON()
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["sku"] = self.sku
        nillableDictionary["numericSortOrder"] = self.numericSortOrder?.encodeToJSON()
        nillableDictionary["itemDescription"] = self.itemDescription
        nillableDictionary["additionalDescription"] = self.additionalDescription
        nillableDictionary["unitCode"] = self.unitCode
        nillableDictionary["wrapCode"] = self.wrapCode
        nillableDictionary["unitsPerWrap"] = self.unitsPerWrap?.encodeToJSON()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["numberOfWraps"] = self.numberOfWraps?.encodeToJSON()
        nillableDictionary["numberOfCases"] = self.numberOfCases?.encodeToJSON()
        nillableDictionary["pickTouches"] = self.pickTouches?.encodeToJSON()
        nillableDictionary["classRestriction"] = self.classRestriction
        nillableDictionary["maxCycle"] = self.maxCycle?.encodeToJSON()
        nillableDictionary["maxInterim"] = self.maxInterim?.encodeToJSON()
        nillableDictionary["seasonalItem"] = self.seasonalItem
        nillableDictionary["secure"] = self.secure
        nillableDictionary["productType"] = self.productType?.encodeToJSON()
        nillableDictionary["itemStatus"] = self.itemStatus
        nillableDictionary["overallLeadTime"] = self.overallLeadTime?.encodeToJSON()
        nillableDictionary["overallFixedReorderPoint"] = self.overallFixedReorderPoint?.encodeToJSON()
        nillableDictionary["qualityControlIndicator"] = self.qualityControlIndicator
        nillableDictionary["lotControlFlag"] = self.lotControlFlag
        nillableDictionary["productCodeFlag"] = self.productCodeFlag
        nillableDictionary["chargeCode"] = self.chargeCode
        nillableDictionary["podRevDate"] = self.podRevDate
        nillableDictionary["podOrderSuffix"] = self.podOrderSuffix?.encodeToJSON()
        nillableDictionary["serialCode"] = self.serialCode
        nillableDictionary["assetCode"] = self.assetCode
        nillableDictionary["backorder"] = self.backorder
        nillableDictionary["absoluteMax"] = self.absoluteMax
        nillableDictionary["accountCodeId"] = self.accountCodeId?.encodeToJSON()
        nillableDictionary["summaryCodeId"] = self.summaryCodeId?.encodeToJSON()
        nillableDictionary["lowStockContactId"] = self.lowStockContactId?.encodeToJSON()
        nillableDictionary["legacyLowLevelContactId"] = self.legacyLowLevelContactId?.encodeToJSON()
        nillableDictionary["lowStockCodeId"] = self.lowStockCodeId?.encodeToJSON()
        nillableDictionary["majorGroupId"] = self.majorGroupId?.encodeToJSON()
        nillableDictionary["subGroupId"] = self.subGroupId?.encodeToJSON()
        nillableDictionary["productCodeId"] = self.productCodeId?.encodeToJSON()
        nillableDictionary["buyerId"] = self.buyerId?.encodeToJSON()
        nillableDictionary["vendorSKU"] = self.vendorSKU
        nillableDictionary["upc"] = self.upc
        nillableDictionary["packingSlipDescription"] = self.packingSlipDescription
        nillableDictionary["commodityCode"] = self.commodityCode
        nillableDictionary["compCode"] = self.compCode?.encodeToJSON()
        nillableDictionary["criticalAmount"] = self.criticalAmount?.encodeToJSON()
        nillableDictionary["listPrice"] = self.listPrice
        nillableDictionary["outsideVendor"] = self.outsideVendor?.encodeToJSON()
        nillableDictionary["pickNo"] = self.pickNo
        nillableDictionary["requiresProductionLot"] = self.requiresProductionLot
        nillableDictionary["sector"] = self.sector
        nillableDictionary["voidDate"] = self.voidDate?.encodeToJSON()
        nillableDictionary["extrinsicText1"] = self.extrinsicText1
        nillableDictionary["extrinsicText2"] = self.extrinsicText2
        nillableDictionary["extrinsicText3"] = self.extrinsicText3
        nillableDictionary["extrinsicNumber1"] = self.extrinsicNumber1?.encodeToJSON()
        nillableDictionary["extrinsicNumber2"] = self.extrinsicNumber2?.encodeToJSON()
        nillableDictionary["extrinsicDecimal1"] = self.extrinsicDecimal1
        nillableDictionary["extrinsicDecimal2"] = self.extrinsicDecimal2
        nillableDictionary["casebreakEnabled"] = self.casebreakEnabled
        nillableDictionary["alcoholTypeId"] = self.alcoholTypeId?.encodeToJSON()
        nillableDictionary["alcoholTypeName"] = self.alcoholTypeName
        nillableDictionary["alcoholContent"] = self.alcoholContent
        nillableDictionary["alcoholContainerId"] = self.alcoholContainerId?.encodeToJSON()
        nillableDictionary["alcoholContainerName"] = self.alcoholContainerName
        nillableDictionary["alcoholContainerVolume"] = self.alcoholContainerVolume?.encodeToJSON()
        nillableDictionary["alcoholVintageYear"] = self.alcoholVintageYear
        nillableDictionary["alcoholCountryId"] = self.alcoholCountryId?.encodeToJSON()
        nillableDictionary["alcoholCountryName"] = self.alcoholCountryName
        nillableDictionary["alcoholState"] = self.alcoholState
        nillableDictionary["alcoholRegion"] = self.alcoholRegion
        nillableDictionary["alcoholBrand"] = self.alcoholBrand
        nillableDictionary["alcoholUPCCode"] = self.alcoholUPCCode
        nillableDictionary["alcoholNABCACode"] = self.alcoholNABCACode
        nillableDictionary["alcoholUNIMERCCode"] = self.alcoholUNIMERCCode
        nillableDictionary["alcoholSCCCode"] = self.alcoholSCCCode
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}