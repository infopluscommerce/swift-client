//
// FinanceSystemConnectionLog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FinanceSystemConnectionLog: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var financeSystemConnectionId: Int32?
    public var type: String?
    public var notes: String?
    public var orderNo: Double?
    public var financeSystemOrderNo: String?
    public var financeSystemOrderId: String?
    public var asnId: Int32?
    public var financeSystemPONo: String?
    public var financeSystemPOId: String?
    public var itemReceiptIdId: Int32?
    public var adjustmentIdId: Int32?
    public var jobIdId: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["financeSystemConnectionId"] = self.financeSystemConnectionId?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["notes"] = self.notes
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["financeSystemOrderNo"] = self.financeSystemOrderNo
        nillableDictionary["financeSystemOrderId"] = self.financeSystemOrderId
        nillableDictionary["asnId"] = self.asnId?.encodeToJSON()
        nillableDictionary["financeSystemPONo"] = self.financeSystemPONo
        nillableDictionary["financeSystemPOId"] = self.financeSystemPOId
        nillableDictionary["itemReceiptIdId"] = self.itemReceiptIdId?.encodeToJSON()
        nillableDictionary["adjustmentIdId"] = self.adjustmentIdId?.encodeToJSON()
        nillableDictionary["jobIdId"] = self.jobIdId?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}