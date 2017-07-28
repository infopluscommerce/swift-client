//
// Kit.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Kit: JSONEncodable {

    public var lobId: Int?
    public var id: Int?
    public var kitSKU: String?
    public var packagingType: String?
    public var other: String?
    public var numberOfComponents: Int?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var line1: String?
    public var line2: String?
    public var line3: String?
    public var line4: String?
    public var line5: String?
    public var line6: String?
    public var line7: String?
    public var line8: String?
    public var touches: Int?
    public var minInvQty: Int?
    public var midInvQty: Int?
    public var maxInvQty: Int?
    public var isKOD: String?
    public var kodType: String?
    public var kitComponentList: [KitComponent]?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["lobId"] = self.lobId
        nillableDictionary["id"] = self.id
        nillableDictionary["kitSKU"] = self.kitSKU
        nillableDictionary["packagingType"] = self.packagingType
        nillableDictionary["other"] = self.other
        nillableDictionary["numberOfComponents"] = self.numberOfComponents
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["line1"] = self.line1
        nillableDictionary["line2"] = self.line2
        nillableDictionary["line3"] = self.line3
        nillableDictionary["line4"] = self.line4
        nillableDictionary["line5"] = self.line5
        nillableDictionary["line6"] = self.line6
        nillableDictionary["line7"] = self.line7
        nillableDictionary["line8"] = self.line8
        nillableDictionary["touches"] = self.touches
        nillableDictionary["minInvQty"] = self.minInvQty
        nillableDictionary["midInvQty"] = self.midInvQty
        nillableDictionary["maxInvQty"] = self.maxInvQty
        nillableDictionary["isKOD"] = self.isKOD
        nillableDictionary["kodType"] = self.kodType
        nillableDictionary["kitComponentList"] = self.kitComponentList?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
