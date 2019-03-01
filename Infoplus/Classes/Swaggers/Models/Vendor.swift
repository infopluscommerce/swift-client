//
// Vendor.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Vendor: JSONEncodable {
    public var id: Int32?
    public var vendorNo: Int32?
    public var lobId: Int32?
    public var name: String?
    public var street: String?
    public var street2: String?
    public var city: String?
    public var state: String?
    public var country: String?
    public var zipCode: String?
    public var contact: String?
    public var phone: String?
    public var fax: String?
    public var externalId: String?
    public var terms: String?
    public var fob: String?
    public var shipVia: Int32?
    public var requestDays: Int32?
    public var actualDays: Int32?
    public var salesTaxCode: String?
    public var product1: Int32?
    public var product2: Int32?
    public var product3: Int32?
    public var product4: Int32?
    public var product5: Int32?
    public var product6: Int32?
    public var product7: Int32?
    public var product8: Int32?
    public var product9: Int32?
    public var podDays: Int32?
    public var chargeOut: String?
    public var arEmail: String?
    public var orderEmail: String?
    public var orderAttach: String?
    public var sendQuantityType: String?
    public var minority: String?
    public var sendOutside: String?
    public var podOrderSuffix: Int32?
    public var podEmail: String?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var inactive: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["vendorNo"] = self.vendorNo?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["street"] = self.street
        nillableDictionary["street2"] = self.street2
        nillableDictionary["city"] = self.city
        nillableDictionary["state"] = self.state
        nillableDictionary["country"] = self.country
        nillableDictionary["zipCode"] = self.zipCode
        nillableDictionary["contact"] = self.contact
        nillableDictionary["phone"] = self.phone
        nillableDictionary["fax"] = self.fax
        nillableDictionary["externalId"] = self.externalId
        nillableDictionary["terms"] = self.terms
        nillableDictionary["fob"] = self.fob
        nillableDictionary["shipVia"] = self.shipVia?.encodeToJSON()
        nillableDictionary["requestDays"] = self.requestDays?.encodeToJSON()
        nillableDictionary["actualDays"] = self.actualDays?.encodeToJSON()
        nillableDictionary["salesTaxCode"] = self.salesTaxCode
        nillableDictionary["product1"] = self.product1?.encodeToJSON()
        nillableDictionary["product2"] = self.product2?.encodeToJSON()
        nillableDictionary["product3"] = self.product3?.encodeToJSON()
        nillableDictionary["product4"] = self.product4?.encodeToJSON()
        nillableDictionary["product5"] = self.product5?.encodeToJSON()
        nillableDictionary["product6"] = self.product6?.encodeToJSON()
        nillableDictionary["product7"] = self.product7?.encodeToJSON()
        nillableDictionary["product8"] = self.product8?.encodeToJSON()
        nillableDictionary["product9"] = self.product9?.encodeToJSON()
        nillableDictionary["podDays"] = self.podDays?.encodeToJSON()
        nillableDictionary["chargeOut"] = self.chargeOut
        nillableDictionary["arEmail"] = self.arEmail
        nillableDictionary["orderEmail"] = self.orderEmail
        nillableDictionary["orderAttach"] = self.orderAttach
        nillableDictionary["sendQuantityType"] = self.sendQuantityType
        nillableDictionary["minority"] = self.minority
        nillableDictionary["sendOutside"] = self.sendOutside
        nillableDictionary["podOrderSuffix"] = self.podOrderSuffix?.encodeToJSON()
        nillableDictionary["podEmail"] = self.podEmail
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["inactive"] = self.inactive
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}