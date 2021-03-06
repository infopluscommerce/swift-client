//
// BillOfLadingCarrierInfoLine.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BillOfLadingCarrierInfoLine: JSONEncodable {
    public var seqNo: Int32?
    public var huQuantity: Int32?
    public var huType: String?
    public var packageQuantity: Int32?
    public var packageType: String?
    public var weight: Int32?
    public var isHazardousMaterial: Bool?
    public var commodityDescription: String?
    public var nfmcNo: String?
    public var carrierClass: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["seqNo"] = self.seqNo?.encodeToJSON()
        nillableDictionary["huQuantity"] = self.huQuantity?.encodeToJSON()
        nillableDictionary["huType"] = self.huType
        nillableDictionary["packageQuantity"] = self.packageQuantity?.encodeToJSON()
        nillableDictionary["packageType"] = self.packageType
        nillableDictionary["weight"] = self.weight?.encodeToJSON()
        nillableDictionary["isHazardousMaterial"] = self.isHazardousMaterial
        nillableDictionary["commodityDescription"] = self.commodityDescription
        nillableDictionary["nfmcNo"] = self.nfmcNo
        nillableDictionary["carrierClass"] = self.carrierClass
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
