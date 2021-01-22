//
// Warehouse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Warehouse: JSONEncodable {
    public var id: Int32?
    public var client: Int32?
    public var name: String?
    public var address: String?
    public var company: String?
    public var street1: String?
    public var street2: String?
    public var street3: String?
    public var city: String?
    public var state: String?
    public var zip: String?
    public var country: String?
    public var phone: String?
    public var locationBarcodePrefix: String?
    public var lpnPrefix: String?
    public var timeZone: String?
    public var packStationAllowPackingBeforePickWorkIsComplete: Bool?
    public var packStationSkipCartonLPN: Bool?
    public var packStationRequireConfirmOnError: Bool?
    public var packStationAllowScanningSKUToIdentifyOrders: Bool?
    public var shipStationWeightCheckPackedOrders: Bool?
    public var shipStationShowUserWeightCheckExceptions: Bool?
    public var shipStationAutoPrintPreGeneratedLabels: Bool?
    public var shipStationAllowScanningSKUToIdentifyOrders: Bool?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["client"] = self.client?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["address"] = self.address
        nillableDictionary["company"] = self.company
        nillableDictionary["street1"] = self.street1
        nillableDictionary["street2"] = self.street2
        nillableDictionary["street3"] = self.street3
        nillableDictionary["city"] = self.city
        nillableDictionary["state"] = self.state
        nillableDictionary["zip"] = self.zip
        nillableDictionary["country"] = self.country
        nillableDictionary["phone"] = self.phone
        nillableDictionary["locationBarcodePrefix"] = self.locationBarcodePrefix
        nillableDictionary["lpnPrefix"] = self.lpnPrefix
        nillableDictionary["timeZone"] = self.timeZone
        nillableDictionary["packStationAllowPackingBeforePickWorkIsComplete"] = self.packStationAllowPackingBeforePickWorkIsComplete
        nillableDictionary["packStationSkipCartonLPN"] = self.packStationSkipCartonLPN
        nillableDictionary["packStationRequireConfirmOnError"] = self.packStationRequireConfirmOnError
        nillableDictionary["packStationAllowScanningSKUToIdentifyOrders"] = self.packStationAllowScanningSKUToIdentifyOrders
        nillableDictionary["shipStationWeightCheckPackedOrders"] = self.shipStationWeightCheckPackedOrders
        nillableDictionary["shipStationShowUserWeightCheckExceptions"] = self.shipStationShowUserWeightCheckExceptions
        nillableDictionary["shipStationAutoPrintPreGeneratedLabels"] = self.shipStationAutoPrintPreGeneratedLabels
        nillableDictionary["shipStationAllowScanningSKUToIdentifyOrders"] = self.shipStationAllowScanningSKUToIdentifyOrders
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}