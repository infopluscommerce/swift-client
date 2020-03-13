//
// InvoiceWorksheetLineDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InvoiceWorksheetLineDetail: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var lobId: Int32?
    public var quantity: Double?
    public var chargeRate: Double?
    public var extendedCharge: Double?
    public var invoiceWorksheetId: Int32?
    public var invoiceWorksheetLineId: Int32?
    public var activityType: String?
    public var activityRecordID: String?
    public var reference1: String?
    public var reference2: String?
    public var reference3: String?
    public var reference4: String?
    public var reference5: String?
    public var activityRecord: [String:AnyObject]?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["quantity"] = self.quantity
        nillableDictionary["chargeRate"] = self.chargeRate
        nillableDictionary["extendedCharge"] = self.extendedCharge
        nillableDictionary["invoiceWorksheetId"] = self.invoiceWorksheetId?.encodeToJSON()
        nillableDictionary["invoiceWorksheetLineId"] = self.invoiceWorksheetLineId?.encodeToJSON()
        nillableDictionary["activityType"] = self.activityType
        nillableDictionary["activityRecordID"] = self.activityRecordID
        nillableDictionary["reference1"] = self.reference1
        nillableDictionary["reference2"] = self.reference2
        nillableDictionary["reference3"] = self.reference3
        nillableDictionary["reference4"] = self.reference4
        nillableDictionary["reference5"] = self.reference5
        nillableDictionary["activityRecord"] = self.activityRecord?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}