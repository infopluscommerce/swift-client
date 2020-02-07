//
// ReplenishmentPlan.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ReplenishmentPlan: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var warehouseId: Int32?
    public var pickFaceAssignmentSmartFilterId: Int32?
    public var name: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["pickFaceAssignmentSmartFilterId"] = self.pickFaceAssignmentSmartFilterId?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
