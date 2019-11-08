//
// OmsOrder.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OmsOrder: JSONEncodable {
    public var lobId: Int32?
    public var externalId: String?
    public var omsOrderNo: Int32?
    public var total: Double?
    public var orderStatus: String?
    public var orderEntryProgramId: Int32?
    public var legacyUserId: Int32?
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var nextOMSOrderId: Int32?
    public var customerId: Int32?
    public var tax: Double?
    public var shippingHandling: Double?
    public var shOverrideAmount: Double?
    public var integrationPartnerId: Int32?
    public var orderSourceId: Int32?
    public var batchNo: String?
    public var isGift: Bool?
    public var giftMessage: String?
    public var emailRecipient: Bool?
    public var mailRecipient: Bool?
    public var keyCode: String?
    public var keyCodeDescription: String?
    public var deliverOnDate: NSDate?
    public var distCharges: Double?
    public var subTotal: Double?
    public var shipVia: String?
    public var lineItems: [OrderLineItem]?
    public var shipToFirstName: String?
    public var shipToLastName: String?
    public var shipToCompany: String?
    public var shipToStreet1: String?
    public var shipToStreet2: String?
    public var shipToStreet3: String?
    public var shipToCity: String?
    public var shipToState: String?
    public var shipToZip: String?
    public var shipToEmail: String?
    public var shipToPhone: String?
    public var billToFirstName: String?
    public var billToLastName: String?
    public var billToCompany: String?
    public var billToStreet1: String?
    public var billToStreet2: String?
    public var billToStreet3: String?
    public var billToCity: String?
    public var billToState: String?
    public var billToZip: String?
    public var billToEmail: String?
    public var billToPhone: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["externalId"] = self.externalId
        nillableDictionary["omsOrderNo"] = self.omsOrderNo?.encodeToJSON()
        nillableDictionary["total"] = self.total
        nillableDictionary["orderStatus"] = self.orderStatus
        nillableDictionary["orderEntryProgramId"] = self.orderEntryProgramId?.encodeToJSON()
        nillableDictionary["legacyUserId"] = self.legacyUserId?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["nextOMSOrderId"] = self.nextOMSOrderId?.encodeToJSON()
        nillableDictionary["customerId"] = self.customerId?.encodeToJSON()
        nillableDictionary["tax"] = self.tax
        nillableDictionary["shippingHandling"] = self.shippingHandling
        nillableDictionary["shOverrideAmount"] = self.shOverrideAmount
        nillableDictionary["integrationPartnerId"] = self.integrationPartnerId?.encodeToJSON()
        nillableDictionary["orderSourceId"] = self.orderSourceId?.encodeToJSON()
        nillableDictionary["batchNo"] = self.batchNo
        nillableDictionary["isGift"] = self.isGift
        nillableDictionary["giftMessage"] = self.giftMessage
        nillableDictionary["emailRecipient"] = self.emailRecipient
        nillableDictionary["mailRecipient"] = self.mailRecipient
        nillableDictionary["keyCode"] = self.keyCode
        nillableDictionary["keyCodeDescription"] = self.keyCodeDescription
        nillableDictionary["deliverOnDate"] = self.deliverOnDate?.encodeToJSON()
        nillableDictionary["distCharges"] = self.distCharges
        nillableDictionary["subTotal"] = self.subTotal
        nillableDictionary["shipVia"] = self.shipVia
        nillableDictionary["lineItems"] = self.lineItems?.encodeToJSON()
        nillableDictionary["shipToFirstName"] = self.shipToFirstName
        nillableDictionary["shipToLastName"] = self.shipToLastName
        nillableDictionary["shipToCompany"] = self.shipToCompany
        nillableDictionary["shipToStreet1"] = self.shipToStreet1
        nillableDictionary["shipToStreet2"] = self.shipToStreet2
        nillableDictionary["shipToStreet3"] = self.shipToStreet3
        nillableDictionary["shipToCity"] = self.shipToCity
        nillableDictionary["shipToState"] = self.shipToState
        nillableDictionary["shipToZip"] = self.shipToZip
        nillableDictionary["shipToEmail"] = self.shipToEmail
        nillableDictionary["shipToPhone"] = self.shipToPhone
        nillableDictionary["billToFirstName"] = self.billToFirstName
        nillableDictionary["billToLastName"] = self.billToLastName
        nillableDictionary["billToCompany"] = self.billToCompany
        nillableDictionary["billToStreet1"] = self.billToStreet1
        nillableDictionary["billToStreet2"] = self.billToStreet2
        nillableDictionary["billToStreet3"] = self.billToStreet3
        nillableDictionary["billToCity"] = self.billToCity
        nillableDictionary["billToState"] = self.billToState
        nillableDictionary["billToZip"] = self.billToZip
        nillableDictionary["billToEmail"] = self.billToEmail
        nillableDictionary["billToPhone"] = self.billToPhone
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
