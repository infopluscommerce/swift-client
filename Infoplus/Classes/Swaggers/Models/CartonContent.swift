//
// CartonContent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CartonContent: JSONEncodable {

    public var id: Int?
    public var groupOrderId: Double?
    public var orderNo: Double?
    public var cartonId: Int?
    public var lineItemId: Int?
    public var location: String?
    public var quantity: Int?
    public var quantityScanned: Int?
    public var completed: NSDate?
    public var toteId: String?
    public var pickerId: String?
    public var status: String?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["groupOrderId"] = self.groupOrderId
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["cartonId"] = self.cartonId
        nillableDictionary["lineItemId"] = self.lineItemId
        nillableDictionary["location"] = self.location
        nillableDictionary["quantity"] = self.quantity
        nillableDictionary["quantityScanned"] = self.quantityScanned
        nillableDictionary["completed"] = self.completed?.encodeToJSON()
        nillableDictionary["toteId"] = self.toteId
        nillableDictionary["pickerId"] = self.pickerId
        nillableDictionary["status"] = self.status
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
