//
// OrderLineItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderLineItem: JSONEncodable {
    public var quantity: Int32?
    public var price: Double?
    public var discount: Double?
    public var subTotal: Double?
    public var originalPrice: Double?
    public var id: Int32?
    public var sku: String?
    public var description: String?
    public var majorGroup: String?
    public var subGroup: String?
    public var available: Int32?
    public var onHand: Int32?
    public var onOrder: Int32?
    public var discountType: String?
    public var discountPercent: Double?
    public var customPrice: Double?
    public var discountedPrice: Double?
    public var alternateSKU: String?
    public var isGiftCard: Bool?
    public var giftCardAmount: Double?
    public var giftCardTo: String?
    public var giftCardEmail: String?
    public var giftCardMessage: String?
    public var account: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["price"] = self.price
        nillableDictionary["discount"] = self.discount
        nillableDictionary["subTotal"] = self.subTotal
        nillableDictionary["originalPrice"] = self.originalPrice
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["description"] = self.description
        nillableDictionary["majorGroup"] = self.majorGroup
        nillableDictionary["subGroup"] = self.subGroup
        nillableDictionary["available"] = self.available?.encodeToJSON()
        nillableDictionary["onHand"] = self.onHand?.encodeToJSON()
        nillableDictionary["onOrder"] = self.onOrder?.encodeToJSON()
        nillableDictionary["discountType"] = self.discountType
        nillableDictionary["discountPercent"] = self.discountPercent
        nillableDictionary["customPrice"] = self.customPrice
        nillableDictionary["discountedPrice"] = self.discountedPrice
        nillableDictionary["alternateSKU"] = self.alternateSKU
        nillableDictionary["isGiftCard"] = self.isGiftCard
        nillableDictionary["giftCardAmount"] = self.giftCardAmount
        nillableDictionary["giftCardTo"] = self.giftCardTo
        nillableDictionary["giftCardEmail"] = self.giftCardEmail
        nillableDictionary["giftCardMessage"] = self.giftCardMessage
        nillableDictionary["account"] = self.account
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
