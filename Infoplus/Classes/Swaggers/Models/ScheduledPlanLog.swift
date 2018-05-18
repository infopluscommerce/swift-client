//
// ScheduledPlanLog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ScheduledPlanLog: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var scheduledPlanId: Int32?
    public var startTime: NSDate?
    public var endTime: NSDate?
    public var status: String?
    public var message: String?
    public var linkURL: String?
    public var linkText: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["scheduledPlanId"] = self.scheduledPlanId?.encodeToJSON()
        nillableDictionary["startTime"] = self.startTime?.encodeToJSON()
        nillableDictionary["endTime"] = self.endTime?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["message"] = self.message
        nillableDictionary["linkURL"] = self.linkURL
        nillableDictionary["linkText"] = self.linkText
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}