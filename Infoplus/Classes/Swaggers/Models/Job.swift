//
// Job.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Job: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var sourceJobRecipeId: Int32?
    public var assemblyQuantity: Int32?
    public var warehouseId: Int32?
    public var lobId: Int32?
    public var status: String?
    public var orderNoId: Double?
    public var poNoId: Int32?
    public var workBatchId: Int32?
    public var layout: String?
    public var trackAssemblies: Bool?
    public var trackSteps: Bool?
    public var jobNo: String?
    public var assemblyInstructions: String?
    public var inputs: [JobInput]?
    public var outputs: [JobOutput]?
    public var steps: [JobStep]?
    public var fulfillmentPlanId: Int32?
    public var totalPicksPutbacks: Int32?
    public var completedPicksPutbacks: Int32?
    public var totalAssemblies: Int32?
    public var completedAssemblies: Int32?
    public var totalSteps: Int32?
    public var completedSteps: Int32?
    public var totalReceipts: Int32?
    public var completedReceipts: Int32?
    public var totalToDo: Int32?
    public var completedToDo: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["sourceJobRecipeId"] = self.sourceJobRecipeId?.encodeToJSON()
        nillableDictionary["assemblyQuantity"] = self.assemblyQuantity?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["orderNoId"] = self.orderNoId
        nillableDictionary["poNoId"] = self.poNoId?.encodeToJSON()
        nillableDictionary["workBatchId"] = self.workBatchId?.encodeToJSON()
        nillableDictionary["layout"] = self.layout
        nillableDictionary["trackAssemblies"] = self.trackAssemblies
        nillableDictionary["trackSteps"] = self.trackSteps
        nillableDictionary["jobNo"] = self.jobNo
        nillableDictionary["assemblyInstructions"] = self.assemblyInstructions
        nillableDictionary["inputs"] = self.inputs?.encodeToJSON()
        nillableDictionary["outputs"] = self.outputs?.encodeToJSON()
        nillableDictionary["steps"] = self.steps?.encodeToJSON()
        nillableDictionary["fulfillmentPlanId"] = self.fulfillmentPlanId?.encodeToJSON()
        nillableDictionary["totalPicksPutbacks"] = self.totalPicksPutbacks?.encodeToJSON()
        nillableDictionary["completedPicksPutbacks"] = self.completedPicksPutbacks?.encodeToJSON()
        nillableDictionary["totalAssemblies"] = self.totalAssemblies?.encodeToJSON()
        nillableDictionary["completedAssemblies"] = self.completedAssemblies?.encodeToJSON()
        nillableDictionary["totalSteps"] = self.totalSteps?.encodeToJSON()
        nillableDictionary["completedSteps"] = self.completedSteps?.encodeToJSON()
        nillableDictionary["totalReceipts"] = self.totalReceipts?.encodeToJSON()
        nillableDictionary["completedReceipts"] = self.completedReceipts?.encodeToJSON()
        nillableDictionary["totalToDo"] = self.totalToDo?.encodeToJSON()
        nillableDictionary["completedToDo"] = self.completedToDo?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
