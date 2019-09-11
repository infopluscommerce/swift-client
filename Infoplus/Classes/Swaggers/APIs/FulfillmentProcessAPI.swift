//
// FulfillmentProcessAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FulfillmentProcessAPI: APIBase {
    /**
     Add new audit for a fulfillmentProcess
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to add an audit to 
     - parameter fulfillmentProcessAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFulfillmentProcessAudit(fulfillmentProcessId fulfillmentProcessId: Int32, fulfillmentProcessAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addFulfillmentProcessAuditWithRequestBuilder(fulfillmentProcessId: fulfillmentProcessId, fulfillmentProcessAudit: fulfillmentProcessAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a fulfillmentProcess
     - PUT /beta/fulfillmentProcess/{fulfillmentProcessId}/audit/{fulfillmentProcessAudit}
     - Adds an audit to an existing fulfillmentProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to add an audit to 
     - parameter fulfillmentProcessAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addFulfillmentProcessAuditWithRequestBuilder(fulfillmentProcessId fulfillmentProcessId: Int32, fulfillmentProcessAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentProcess/{fulfillmentProcessId}/audit/{fulfillmentProcessAudit}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessId}", withString: "\(fulfillmentProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessAudit}", withString: "\(fulfillmentProcessAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a fulfillmentProcess
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFulfillmentProcessFile(fulfillmentProcessId fulfillmentProcessId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addFulfillmentProcessFileWithRequestBuilder(fulfillmentProcessId: fulfillmentProcessId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a fulfillmentProcess
     - POST /beta/fulfillmentProcess/{fulfillmentProcessId}/file/{fileName}
     - Adds a file to an existing fulfillmentProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addFulfillmentProcessFileWithRequestBuilder(fulfillmentProcessId fulfillmentProcessId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentProcess/{fulfillmentProcessId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessId}", withString: "\(fulfillmentProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a fulfillmentProcess.
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to add a tag to 
     - parameter fulfillmentProcessTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFulfillmentProcessTag(fulfillmentProcessId fulfillmentProcessId: Int32, fulfillmentProcessTag: String, completion: ((error: ErrorType?) -> Void)) {
        addFulfillmentProcessTagWithRequestBuilder(fulfillmentProcessId: fulfillmentProcessId, fulfillmentProcessTag: fulfillmentProcessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a fulfillmentProcess.
     - PUT /beta/fulfillmentProcess/{fulfillmentProcessId}/tag/{fulfillmentProcessTag}
     - Adds a tag to an existing fulfillmentProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to add a tag to 
     - parameter fulfillmentProcessTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addFulfillmentProcessTagWithRequestBuilder(fulfillmentProcessId fulfillmentProcessId: Int32, fulfillmentProcessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentProcess/{fulfillmentProcessId}/tag/{fulfillmentProcessTag}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessId}", withString: "\(fulfillmentProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessTag}", withString: "\(fulfillmentProcessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a fulfillmentProcess.
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to remove tag from 
     - parameter fulfillmentProcessTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteFulfillmentProcessTag(fulfillmentProcessId fulfillmentProcessId: Int32, fulfillmentProcessTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteFulfillmentProcessTagWithRequestBuilder(fulfillmentProcessId: fulfillmentProcessId, fulfillmentProcessTag: fulfillmentProcessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a fulfillmentProcess.
     - DELETE /beta/fulfillmentProcess/{fulfillmentProcessId}/tag/{fulfillmentProcessTag}
     - Deletes an existing fulfillmentProcess tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to remove tag from 
     - parameter fulfillmentProcessTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteFulfillmentProcessTagWithRequestBuilder(fulfillmentProcessId fulfillmentProcessId: Int32, fulfillmentProcessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentProcess/{fulfillmentProcessId}/tag/{fulfillmentProcessTag}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessId}", withString: "\(fulfillmentProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessTag}", withString: "\(fulfillmentProcessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a fulfillmentProcess by id
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateFulfillmentProcessById(fulfillmentProcessId fulfillmentProcessId: Int32, completion: ((data: FulfillmentProcess?, error: ErrorType?) -> Void)) {
        getDuplicateFulfillmentProcessByIdWithRequestBuilder(fulfillmentProcessId: fulfillmentProcessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a fulfillmentProcess by id
     - GET /beta/fulfillmentProcess/duplicate/{fulfillmentProcessId}
     - Returns a duplicated fulfillmentProcess identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "batchMaxSize" : 2,
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "pickListSort" : "pickListSort",
  "locationSmartFilterId" : 9,
  "totalPicks" : 5,
  "workBatchId" : 1,
  "pickSortRule" : "pickSortRule",
  "totalOrdersToShip" : 8,
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickScanSchemeId" : 2,
  "pickListGroup" : "pickListGroup",
  "externalShippingSystemId" : 6,
  "shippedCasebreaks" : 9,
  "createPickList" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "version" : "version",
  "processNo" : 6,
  "pickSummarySort" : "pickSummarySort",
  "warehouseId" : 5,
  "maxSKUs" : 7,
  "completedPicks" : 4,
  "status" : "status",
  "pickListLayout" : "pickListLayout",
  "customFields" : {
    "key" : "{}"
  },
  "createPickSummary" : false,
  "pickListLocationSort" : "pickListLocationSort",
  "sendToExternalShippingSystem" : false,
  "numberOfOrders" : 6,
  "maxOrders" : 3,
  "fulfillmentPlanId" : 5,
  "firstPickPosition" : 3,
  "fulfillmentProcessGroup" : 1,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizationScriptId" : 6,
  "maxCartons" : 1,
  "numberOfSKUs" : 1,
  "cartonizeOrders" : false,
  "batchMinSize" : 4,
  "isMassDistribution" : false,
  "autoShipOrders" : false,
  "totalToDo" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "numberOfLines" : 7,
  "createPackingSlip" : "createPackingSlip",
  "shippedOrders" : 6,
  "completedToDo" : 9,
  "overrideOrderInvoiceTemplateId" : 2,
  "preGenerateParcelLabels" : false,
  "labelSort" : "labelSort",
  "locationSort" : "locationSort",
  "totalCasebreaksToShip" : 9,
  "overridePackingSlipTemplateId" : 1,
  "priorityCode" : 1,
  "autoShipCasebreakCartons" : false,
  "orderSmartFilterId" : 7
}}]
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to be duplicated. 

     - returns: RequestBuilder<FulfillmentProcess> 
     */
    public class func getDuplicateFulfillmentProcessByIdWithRequestBuilder(fulfillmentProcessId fulfillmentProcessId: Int32) -> RequestBuilder<FulfillmentProcess> {
        var path = "/beta/fulfillmentProcess/duplicate/{fulfillmentProcessId}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessId}", withString: "\(fulfillmentProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentProcess>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search fulfillmentProcesses by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentProcessByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [FulfillmentProcess]?, error: ErrorType?) -> Void)) {
        getFulfillmentProcessByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search fulfillmentProcesses by filter
     - GET /beta/fulfillmentProcess/search
     - Returns the list of fulfillmentProcesses that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "batchMaxSize" : 2,
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "pickListSort" : "pickListSort",
  "locationSmartFilterId" : 9,
  "totalPicks" : 5,
  "workBatchId" : 1,
  "pickSortRule" : "pickSortRule",
  "totalOrdersToShip" : 8,
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickScanSchemeId" : 2,
  "pickListGroup" : "pickListGroup",
  "externalShippingSystemId" : 6,
  "shippedCasebreaks" : 9,
  "createPickList" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "version" : "version",
  "processNo" : 6,
  "pickSummarySort" : "pickSummarySort",
  "warehouseId" : 5,
  "maxSKUs" : 7,
  "completedPicks" : 4,
  "status" : "status",
  "pickListLayout" : "pickListLayout",
  "customFields" : {
    "key" : "{}"
  },
  "createPickSummary" : false,
  "pickListLocationSort" : "pickListLocationSort",
  "sendToExternalShippingSystem" : false,
  "numberOfOrders" : 6,
  "maxOrders" : 3,
  "fulfillmentPlanId" : 5,
  "firstPickPosition" : 3,
  "fulfillmentProcessGroup" : 1,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizationScriptId" : 6,
  "maxCartons" : 1,
  "numberOfSKUs" : 1,
  "cartonizeOrders" : false,
  "batchMinSize" : 4,
  "isMassDistribution" : false,
  "autoShipOrders" : false,
  "totalToDo" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "numberOfLines" : 7,
  "createPackingSlip" : "createPackingSlip",
  "shippedOrders" : 6,
  "completedToDo" : 9,
  "overrideOrderInvoiceTemplateId" : 2,
  "preGenerateParcelLabels" : false,
  "labelSort" : "labelSort",
  "locationSort" : "locationSort",
  "totalCasebreaksToShip" : 9,
  "overridePackingSlipTemplateId" : 1,
  "priorityCode" : 1,
  "autoShipCasebreakCartons" : false,
  "orderSmartFilterId" : 7
}, {
  "batchMaxSize" : 2,
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "pickListSort" : "pickListSort",
  "locationSmartFilterId" : 9,
  "totalPicks" : 5,
  "workBatchId" : 1,
  "pickSortRule" : "pickSortRule",
  "totalOrdersToShip" : 8,
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickScanSchemeId" : 2,
  "pickListGroup" : "pickListGroup",
  "externalShippingSystemId" : 6,
  "shippedCasebreaks" : 9,
  "createPickList" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "version" : "version",
  "processNo" : 6,
  "pickSummarySort" : "pickSummarySort",
  "warehouseId" : 5,
  "maxSKUs" : 7,
  "completedPicks" : 4,
  "status" : "status",
  "pickListLayout" : "pickListLayout",
  "customFields" : {
    "key" : "{}"
  },
  "createPickSummary" : false,
  "pickListLocationSort" : "pickListLocationSort",
  "sendToExternalShippingSystem" : false,
  "numberOfOrders" : 6,
  "maxOrders" : 3,
  "fulfillmentPlanId" : 5,
  "firstPickPosition" : 3,
  "fulfillmentProcessGroup" : 1,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizationScriptId" : 6,
  "maxCartons" : 1,
  "numberOfSKUs" : 1,
  "cartonizeOrders" : false,
  "batchMinSize" : 4,
  "isMassDistribution" : false,
  "autoShipOrders" : false,
  "totalToDo" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "numberOfLines" : 7,
  "createPackingSlip" : "createPackingSlip",
  "shippedOrders" : 6,
  "completedToDo" : 9,
  "overrideOrderInvoiceTemplateId" : 2,
  "preGenerateParcelLabels" : false,
  "labelSort" : "labelSort",
  "locationSort" : "locationSort",
  "totalCasebreaksToShip" : 9,
  "overridePackingSlipTemplateId" : 1,
  "priorityCode" : 1,
  "autoShipCasebreakCartons" : false,
  "orderSmartFilterId" : 7
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[FulfillmentProcess]> 
     */
    public class func getFulfillmentProcessByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[FulfillmentProcess]> {
        let path = "/beta/fulfillmentProcess/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[FulfillmentProcess]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a fulfillmentProcess by id
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentProcessById(fulfillmentProcessId fulfillmentProcessId: Int32, completion: ((data: FulfillmentProcess?, error: ErrorType?) -> Void)) {
        getFulfillmentProcessByIdWithRequestBuilder(fulfillmentProcessId: fulfillmentProcessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a fulfillmentProcess by id
     - GET /beta/fulfillmentProcess/{fulfillmentProcessId}
     - Returns the fulfillmentProcess identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "batchMaxSize" : 2,
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "pickListSort" : "pickListSort",
  "locationSmartFilterId" : 9,
  "totalPicks" : 5,
  "workBatchId" : 1,
  "pickSortRule" : "pickSortRule",
  "totalOrdersToShip" : 8,
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickScanSchemeId" : 2,
  "pickListGroup" : "pickListGroup",
  "externalShippingSystemId" : 6,
  "shippedCasebreaks" : 9,
  "createPickList" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "version" : "version",
  "processNo" : 6,
  "pickSummarySort" : "pickSummarySort",
  "warehouseId" : 5,
  "maxSKUs" : 7,
  "completedPicks" : 4,
  "status" : "status",
  "pickListLayout" : "pickListLayout",
  "customFields" : {
    "key" : "{}"
  },
  "createPickSummary" : false,
  "pickListLocationSort" : "pickListLocationSort",
  "sendToExternalShippingSystem" : false,
  "numberOfOrders" : 6,
  "maxOrders" : 3,
  "fulfillmentPlanId" : 5,
  "firstPickPosition" : 3,
  "fulfillmentProcessGroup" : 1,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizationScriptId" : 6,
  "maxCartons" : 1,
  "numberOfSKUs" : 1,
  "cartonizeOrders" : false,
  "batchMinSize" : 4,
  "isMassDistribution" : false,
  "autoShipOrders" : false,
  "totalToDo" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "numberOfLines" : 7,
  "createPackingSlip" : "createPackingSlip",
  "shippedOrders" : 6,
  "completedToDo" : 9,
  "overrideOrderInvoiceTemplateId" : 2,
  "preGenerateParcelLabels" : false,
  "labelSort" : "labelSort",
  "locationSort" : "locationSort",
  "totalCasebreaksToShip" : 9,
  "overridePackingSlipTemplateId" : 1,
  "priorityCode" : 1,
  "autoShipCasebreakCartons" : false,
  "orderSmartFilterId" : 7
}}]
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to be returned. 

     - returns: RequestBuilder<FulfillmentProcess> 
     */
    public class func getFulfillmentProcessByIdWithRequestBuilder(fulfillmentProcessId fulfillmentProcessId: Int32) -> RequestBuilder<FulfillmentProcess> {
        var path = "/beta/fulfillmentProcess/{fulfillmentProcessId}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessId}", withString: "\(fulfillmentProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentProcess>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a fulfillmentProcess.
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentProcessTags(fulfillmentProcessId fulfillmentProcessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getFulfillmentProcessTagsWithRequestBuilder(fulfillmentProcessId: fulfillmentProcessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a fulfillmentProcess.
     - GET /beta/fulfillmentProcess/{fulfillmentProcessId}/tag
     - Get all existing fulfillmentProcess tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentProcessId: (path) Id of the fulfillmentProcess to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getFulfillmentProcessTagsWithRequestBuilder(fulfillmentProcessId fulfillmentProcessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentProcess/{fulfillmentProcessId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessId}", withString: "\(fulfillmentProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a fulfillmentProcess custom fields
     
     - parameter body: (body) FulfillmentProcess to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateFulfillmentProcessCustomFields(body body: FulfillmentProcess, completion: ((error: ErrorType?) -> Void)) {
        updateFulfillmentProcessCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a fulfillmentProcess custom fields
     - PUT /beta/fulfillmentProcess/customFields
     - Updates an existing fulfillmentProcess custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) FulfillmentProcess to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateFulfillmentProcessCustomFieldsWithRequestBuilder(body body: FulfillmentProcess) -> RequestBuilder<Void> {
        let path = "/beta/fulfillmentProcess/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
