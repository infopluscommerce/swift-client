//
// OrderSource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderSource: JSONEncodable {
    public var id: Int32?
    public var lobId: Int32?
    public var name: String?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var packingNotes: String?
    public var requireCartonizedASN: Bool?
    public var usesReservations: Bool?
    public var requireGS1128Label: Bool?
    public var shippingNotes: String?
    public var packingSlipId: Int32?
    public var orderInvoiceId: Int32?
    public var orderConfirmationEmailId: Int32?
    public var shipmentConfirmationEmailId: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["packingNotes"] = self.packingNotes
        nillableDictionary["requireCartonizedASN"] = self.requireCartonizedASN
        nillableDictionary["usesReservations"] = self.usesReservations
        nillableDictionary["requireGS1128Label"] = self.requireGS1128Label
        nillableDictionary["shippingNotes"] = self.shippingNotes
        nillableDictionary["packingSlipId"] = self.packingSlipId?.encodeToJSON()
        nillableDictionary["orderInvoiceId"] = self.orderInvoiceId?.encodeToJSON()
        nillableDictionary["orderConfirmationEmailId"] = self.orderConfirmationEmailId?.encodeToJSON()
        nillableDictionary["shipmentConfirmationEmailId"] = self.shipmentConfirmationEmailId?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
