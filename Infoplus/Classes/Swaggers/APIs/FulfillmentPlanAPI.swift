//
// FulfillmentPlanAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FulfillmentPlanAPI: APIBase {
    /**
     Create a fulfillmentPlan
     
     - parameter body: (body) FulfillmentPlan to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFulfillmentPlan(body body: FulfillmentPlan, completion: ((data: FulfillmentPlan?, error: ErrorType?) -> Void)) {
        addFulfillmentPlanWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a fulfillmentPlan
     - POST /beta/fulfillmentPlan
     - Inserts a new fulfillmentPlan using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "pickListLayout" : "pickListLayout",
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "customFields" : {
    "key" : "{}"
  },
  "pickListSort" : "pickListSort",
  "description" : "description",
  "createPickSummary" : false,
  "sendToExternalShippingSystem" : false,
  "maxOrders" : 5,
  "locationSmartFilterId" : 5,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizeOrders" : false,
  "pickSortRule" : "pickSortRule",
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickListGroup" : "pickListGroup",
  "pickScanSchemeId" : 7,
  "externalShippingSystemId" : 2,
  "createPickList" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "createPackingSlip" : "createPackingSlip",
  "version" : "version",
  "overrideOrderInvoiceTemplateId" : 3,
  "pickSummarySort" : "pickSummarySort",
  "lastRunTime" : "2000-01-23T04:56:07.000+00:00",
  "preGenerateParcelLabels" : false,
  "warehouseId" : 6,
  "name" : "name",
  "overridePackingSlipTemplateId" : 9,
  "autoShipCasebreakCartons" : false,
  "batchSize" : 2,
  "orderSmartFilterId" : 1
}}]
     
     - parameter body: (body) FulfillmentPlan to be inserted. 

     - returns: RequestBuilder<FulfillmentPlan> 
     */
    public class func addFulfillmentPlanWithRequestBuilder(body body: FulfillmentPlan) -> RequestBuilder<FulfillmentPlan> {
        let path = "/beta/fulfillmentPlan"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a fulfillmentPlan
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to add an audit to 
     - parameter fulfillmentPlanAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFulfillmentPlanAudit(fulfillmentPlanId fulfillmentPlanId: Int32, fulfillmentPlanAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addFulfillmentPlanAuditWithRequestBuilder(fulfillmentPlanId: fulfillmentPlanId, fulfillmentPlanAudit: fulfillmentPlanAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a fulfillmentPlan
     - PUT /beta/fulfillmentPlan/{fulfillmentPlanId}/audit/{fulfillmentPlanAudit}
     - Adds an audit to an existing fulfillmentPlan.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to add an audit to 
     - parameter fulfillmentPlanAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addFulfillmentPlanAuditWithRequestBuilder(fulfillmentPlanId fulfillmentPlanId: Int32, fulfillmentPlanAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentPlan/{fulfillmentPlanId}/audit/{fulfillmentPlanAudit}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanId}", withString: "\(fulfillmentPlanId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanAudit}", withString: "\(fulfillmentPlanAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a fulfillmentPlan.
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to add a tag to 
     - parameter fulfillmentPlanTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFulfillmentPlanTag(fulfillmentPlanId fulfillmentPlanId: Int32, fulfillmentPlanTag: String, completion: ((error: ErrorType?) -> Void)) {
        addFulfillmentPlanTagWithRequestBuilder(fulfillmentPlanId: fulfillmentPlanId, fulfillmentPlanTag: fulfillmentPlanTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a fulfillmentPlan.
     - PUT /beta/fulfillmentPlan/{fulfillmentPlanId}/tag/{fulfillmentPlanTag}
     - Adds a tag to an existing fulfillmentPlan.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to add a tag to 
     - parameter fulfillmentPlanTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addFulfillmentPlanTagWithRequestBuilder(fulfillmentPlanId fulfillmentPlanId: Int32, fulfillmentPlanTag: String) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentPlan/{fulfillmentPlanId}/tag/{fulfillmentPlanTag}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanId}", withString: "\(fulfillmentPlanId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanTag}", withString: "\(fulfillmentPlanTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a fulfillmentPlan
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteFulfillmentPlan(fulfillmentPlanId fulfillmentPlanId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteFulfillmentPlanWithRequestBuilder(fulfillmentPlanId: fulfillmentPlanId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a fulfillmentPlan
     - DELETE /beta/fulfillmentPlan/{fulfillmentPlanId}
     - Deletes the fulfillmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteFulfillmentPlanWithRequestBuilder(fulfillmentPlanId fulfillmentPlanId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentPlan/{fulfillmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanId}", withString: "\(fulfillmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a fulfillmentPlan.
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to remove tag from 
     - parameter fulfillmentPlanTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteFulfillmentPlanTag(fulfillmentPlanId fulfillmentPlanId: Int32, fulfillmentPlanTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteFulfillmentPlanTagWithRequestBuilder(fulfillmentPlanId: fulfillmentPlanId, fulfillmentPlanTag: fulfillmentPlanTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a fulfillmentPlan.
     - DELETE /beta/fulfillmentPlan/{fulfillmentPlanId}/tag/{fulfillmentPlanTag}
     - Deletes an existing fulfillmentPlan tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to remove tag from 
     - parameter fulfillmentPlanTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteFulfillmentPlanTagWithRequestBuilder(fulfillmentPlanId fulfillmentPlanId: Int32, fulfillmentPlanTag: String) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentPlan/{fulfillmentPlanId}/tag/{fulfillmentPlanTag}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanId}", withString: "\(fulfillmentPlanId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanTag}", withString: "\(fulfillmentPlanTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a fulfillmentPlan by id
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateFulfillmentPlanById(fulfillmentPlanId fulfillmentPlanId: Int32, completion: ((data: FulfillmentPlan?, error: ErrorType?) -> Void)) {
        getDuplicateFulfillmentPlanByIdWithRequestBuilder(fulfillmentPlanId: fulfillmentPlanId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a fulfillmentPlan by id
     - GET /beta/fulfillmentPlan/duplicate/{fulfillmentPlanId}
     - Returns a duplicated fulfillmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "pickListLayout" : "pickListLayout",
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "customFields" : {
    "key" : "{}"
  },
  "pickListSort" : "pickListSort",
  "description" : "description",
  "createPickSummary" : false,
  "sendToExternalShippingSystem" : false,
  "maxOrders" : 5,
  "locationSmartFilterId" : 5,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizeOrders" : false,
  "pickSortRule" : "pickSortRule",
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickListGroup" : "pickListGroup",
  "pickScanSchemeId" : 7,
  "externalShippingSystemId" : 2,
  "createPickList" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "createPackingSlip" : "createPackingSlip",
  "version" : "version",
  "overrideOrderInvoiceTemplateId" : 3,
  "pickSummarySort" : "pickSummarySort",
  "lastRunTime" : "2000-01-23T04:56:07.000+00:00",
  "preGenerateParcelLabels" : false,
  "warehouseId" : 6,
  "name" : "name",
  "overridePackingSlipTemplateId" : 9,
  "autoShipCasebreakCartons" : false,
  "batchSize" : 2,
  "orderSmartFilterId" : 1
}}]
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to be duplicated. 

     - returns: RequestBuilder<FulfillmentPlan> 
     */
    public class func getDuplicateFulfillmentPlanByIdWithRequestBuilder(fulfillmentPlanId fulfillmentPlanId: Int32) -> RequestBuilder<FulfillmentPlan> {
        var path = "/beta/fulfillmentPlan/duplicate/{fulfillmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanId}", withString: "\(fulfillmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search fulfillmentPlans by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentPlanByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [FulfillmentPlan]?, error: ErrorType?) -> Void)) {
        getFulfillmentPlanByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search fulfillmentPlans by filter
     - GET /beta/fulfillmentPlan/search
     - Returns the list of fulfillmentPlans that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "pickListLayout" : "pickListLayout",
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "customFields" : {
    "key" : "{}"
  },
  "pickListSort" : "pickListSort",
  "description" : "description",
  "createPickSummary" : false,
  "sendToExternalShippingSystem" : false,
  "maxOrders" : 5,
  "locationSmartFilterId" : 5,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizeOrders" : false,
  "pickSortRule" : "pickSortRule",
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickListGroup" : "pickListGroup",
  "pickScanSchemeId" : 7,
  "externalShippingSystemId" : 2,
  "createPickList" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "createPackingSlip" : "createPackingSlip",
  "version" : "version",
  "overrideOrderInvoiceTemplateId" : 3,
  "pickSummarySort" : "pickSummarySort",
  "lastRunTime" : "2000-01-23T04:56:07.000+00:00",
  "preGenerateParcelLabels" : false,
  "warehouseId" : 6,
  "name" : "name",
  "overridePackingSlipTemplateId" : 9,
  "autoShipCasebreakCartons" : false,
  "batchSize" : 2,
  "orderSmartFilterId" : 1
}, {
  "pickListLayout" : "pickListLayout",
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "customFields" : {
    "key" : "{}"
  },
  "pickListSort" : "pickListSort",
  "description" : "description",
  "createPickSummary" : false,
  "sendToExternalShippingSystem" : false,
  "maxOrders" : 5,
  "locationSmartFilterId" : 5,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizeOrders" : false,
  "pickSortRule" : "pickSortRule",
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickListGroup" : "pickListGroup",
  "pickScanSchemeId" : 7,
  "externalShippingSystemId" : 2,
  "createPickList" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "createPackingSlip" : "createPackingSlip",
  "version" : "version",
  "overrideOrderInvoiceTemplateId" : 3,
  "pickSummarySort" : "pickSummarySort",
  "lastRunTime" : "2000-01-23T04:56:07.000+00:00",
  "preGenerateParcelLabels" : false,
  "warehouseId" : 6,
  "name" : "name",
  "overridePackingSlipTemplateId" : 9,
  "autoShipCasebreakCartons" : false,
  "batchSize" : 2,
  "orderSmartFilterId" : 1
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[FulfillmentPlan]> 
     */
    public class func getFulfillmentPlanByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[FulfillmentPlan]> {
        let path = "/beta/fulfillmentPlan/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[FulfillmentPlan]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a fulfillmentPlan by id
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentPlanById(fulfillmentPlanId fulfillmentPlanId: Int32, completion: ((data: FulfillmentPlan?, error: ErrorType?) -> Void)) {
        getFulfillmentPlanByIdWithRequestBuilder(fulfillmentPlanId: fulfillmentPlanId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a fulfillmentPlan by id
     - GET /beta/fulfillmentPlan/{fulfillmentPlanId}
     - Returns the fulfillmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "pickListLayout" : "pickListLayout",
  "createPickWork" : false,
  "pickingRule" : "pickingRule",
  "createOrderInvoice" : "createOrderInvoice",
  "pickSummaryLayout" : "pickSummaryLayout",
  "customFields" : {
    "key" : "{}"
  },
  "pickListSort" : "pickListSort",
  "description" : "description",
  "createPickSummary" : false,
  "sendToExternalShippingSystem" : false,
  "maxOrders" : 5,
  "locationSmartFilterId" : 5,
  "pickSummaryFormat" : "pickSummaryFormat",
  "cartonizeOrders" : false,
  "pickSortRule" : "pickSortRule",
  "layoutRule" : "layoutRule",
  "id" : 0,
  "pickListFormat" : "pickListFormat",
  "pickListGroup" : "pickListGroup",
  "pickScanSchemeId" : 7,
  "externalShippingSystemId" : 2,
  "createPickList" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "createOrderAssemblyGuide" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "createPackingSlip" : "createPackingSlip",
  "version" : "version",
  "overrideOrderInvoiceTemplateId" : 3,
  "pickSummarySort" : "pickSummarySort",
  "lastRunTime" : "2000-01-23T04:56:07.000+00:00",
  "preGenerateParcelLabels" : false,
  "warehouseId" : 6,
  "name" : "name",
  "overridePackingSlipTemplateId" : 9,
  "autoShipCasebreakCartons" : false,
  "batchSize" : 2,
  "orderSmartFilterId" : 1
}}]
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to be returned. 

     - returns: RequestBuilder<FulfillmentPlan> 
     */
    public class func getFulfillmentPlanByIdWithRequestBuilder(fulfillmentPlanId fulfillmentPlanId: Int32) -> RequestBuilder<FulfillmentPlan> {
        var path = "/beta/fulfillmentPlan/{fulfillmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanId}", withString: "\(fulfillmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a fulfillmentPlan.
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentPlanTags(fulfillmentPlanId fulfillmentPlanId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getFulfillmentPlanTagsWithRequestBuilder(fulfillmentPlanId: fulfillmentPlanId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a fulfillmentPlan.
     - GET /beta/fulfillmentPlan/{fulfillmentPlanId}/tag
     - Get all existing fulfillmentPlan tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter fulfillmentPlanId: (path) Id of the fulfillmentPlan to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getFulfillmentPlanTagsWithRequestBuilder(fulfillmentPlanId fulfillmentPlanId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/fulfillmentPlan/{fulfillmentPlanId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentPlanId}", withString: "\(fulfillmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a fulfillmentPlan
     
     - parameter body: (body) FulfillmentPlan to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateFulfillmentPlan(body body: FulfillmentPlan, completion: ((error: ErrorType?) -> Void)) {
        updateFulfillmentPlanWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a fulfillmentPlan
     - PUT /beta/fulfillmentPlan
     - Updates an existing fulfillmentPlan using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) FulfillmentPlan to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateFulfillmentPlanWithRequestBuilder(body body: FulfillmentPlan) -> RequestBuilder<Void> {
        let path = "/beta/fulfillmentPlan"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a fulfillmentPlan custom fields
     
     - parameter body: (body) FulfillmentPlan to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateFulfillmentPlanCustomFields(body body: FulfillmentPlan, completion: ((error: ErrorType?) -> Void)) {
        updateFulfillmentPlanCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a fulfillmentPlan custom fields
     - PUT /beta/fulfillmentPlan/customFields
     - Updates an existing fulfillmentPlan custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) FulfillmentPlan to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateFulfillmentPlanCustomFieldsWithRequestBuilder(body body: FulfillmentPlan) -> RequestBuilder<Void> {
        let path = "/beta/fulfillmentPlan/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
