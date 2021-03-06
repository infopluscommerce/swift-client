//
// Substitution.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Substitution: JSONEncodable {
    public var lobId: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var id: Int32?
    public var orderSKU: String?
    public var substituteSKU: String?
    public var period: String?
    public var type: String?
    public var substitutionQuantity: Double?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["orderSKU"] = self.orderSKU
        nillableDictionary["substituteSKU"] = self.substituteSKU
        nillableDictionary["period"] = self.period
        nillableDictionary["type"] = self.type
        nillableDictionary["substitutionQuantity"] = self.substitutionQuantity
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
