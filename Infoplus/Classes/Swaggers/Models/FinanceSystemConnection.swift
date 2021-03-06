//
// FinanceSystemConnection.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FinanceSystemConnection: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var name: String?
    public var active: Bool?
    public var financeSystemConnectionType: String?
    public var environment: String?
    public var lobId: Int32?
    public var warehouseId: Int32?
    public var clientId: Int32?
    public var orderSourceId: Int32?
    public var integrationPartnerId: Int32?
    public var infoplusSKUFieldToMap: String?
    public var financeSystemSKUFieldToMap: String?
    public var scriptId: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["active"] = self.active
        nillableDictionary["financeSystemConnectionType"] = self.financeSystemConnectionType
        nillableDictionary["environment"] = self.environment
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["clientId"] = self.clientId?.encodeToJSON()
        nillableDictionary["orderSourceId"] = self.orderSourceId?.encodeToJSON()
        nillableDictionary["integrationPartnerId"] = self.integrationPartnerId?.encodeToJSON()
        nillableDictionary["infoplusSKUFieldToMap"] = self.infoplusSKUFieldToMap
        nillableDictionary["financeSystemSKUFieldToMap"] = self.financeSystemSKUFieldToMap
        nillableDictionary["scriptId"] = self.scriptId?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
