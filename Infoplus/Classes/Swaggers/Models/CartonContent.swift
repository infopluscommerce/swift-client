//
// CartonContent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CartonContent: JSONEncodable {
    public var id: Int32?
    public var groupOrderId: Double?
    public var orderNo: Double?
    public var cartonNo: Int32?
    public var cartonId: Int32?
    public var lineItemId: Int32?
    public var location: String?
    public var quantity: Int32?
    public var quantityScanned: Int32?
    public var completed: NSDate?
    public var toteId: String?
    public var pickerId: String?
    public var status: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["groupOrderId"] = self.groupOrderId
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["cartonNo"] = self.cartonNo?.encodeToJSON()
        nillableDictionary["cartonId"] = self.cartonId?.encodeToJSON()
        nillableDictionary["lineItemId"] = self.lineItemId?.encodeToJSON()
        nillableDictionary["location"] = self.location
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["quantityScanned"] = self.quantityScanned?.encodeToJSON()
        nillableDictionary["completed"] = self.completed?.encodeToJSON()
        nillableDictionary["toteId"] = self.toteId
        nillableDictionary["pickerId"] = self.pickerId
        nillableDictionary["status"] = self.status
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
