//
// OrderExtraLineItemData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderExtraLineItemData: JSONEncodable {

    public var sku: String?
    public var category: String?
    public var code: String?
    public var value: String?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["category"] = self.category
        nillableDictionary["code"] = self.code
        nillableDictionary["value"] = self.value
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
