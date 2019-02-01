//
// ReplenishmentProcessAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ReplenishmentProcessAPI: APIBase {
    /**
     Add new audit for a replenishmentProcess
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to add an audit to 
     - parameter replenishmentProcessAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentProcessAudit(replenishmentProcessId replenishmentProcessId: Int32, replenishmentProcessAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentProcessAuditWithRequestBuilder(replenishmentProcessId: replenishmentProcessId, replenishmentProcessAudit: replenishmentProcessAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a replenishmentProcess
     - PUT /beta/replenishmentProcess/{replenishmentProcessId}/audit/{replenishmentProcessAudit}
     - Adds an audit to an existing replenishmentProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to add an audit to 
     - parameter replenishmentProcessAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentProcessAuditWithRequestBuilder(replenishmentProcessId replenishmentProcessId: Int32, replenishmentProcessAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentProcess/{replenishmentProcessId}/audit/{replenishmentProcessAudit}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessId}", withString: "\(replenishmentProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessAudit}", withString: "\(replenishmentProcessAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a replenishmentProcess.
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to add a tag to 
     - parameter replenishmentProcessTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentProcessTag(replenishmentProcessId replenishmentProcessId: Int32, replenishmentProcessTag: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentProcessTagWithRequestBuilder(replenishmentProcessId: replenishmentProcessId, replenishmentProcessTag: replenishmentProcessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a replenishmentProcess.
     - PUT /beta/replenishmentProcess/{replenishmentProcessId}/tag/{replenishmentProcessTag}
     - Adds a tag to an existing replenishmentProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to add a tag to 
     - parameter replenishmentProcessTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentProcessTagWithRequestBuilder(replenishmentProcessId replenishmentProcessId: Int32, replenishmentProcessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentProcess/{replenishmentProcessId}/tag/{replenishmentProcessTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessId}", withString: "\(replenishmentProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessTag}", withString: "\(replenishmentProcessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a replenishmentProcess.
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to remove tag from 
     - parameter replenishmentProcessTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReplenishmentProcessTag(replenishmentProcessId replenishmentProcessId: Int32, replenishmentProcessTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteReplenishmentProcessTagWithRequestBuilder(replenishmentProcessId: replenishmentProcessId, replenishmentProcessTag: replenishmentProcessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a replenishmentProcess.
     - DELETE /beta/replenishmentProcess/{replenishmentProcessId}/tag/{replenishmentProcessTag}
     - Deletes an existing replenishmentProcess tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to remove tag from 
     - parameter replenishmentProcessTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReplenishmentProcessTagWithRequestBuilder(replenishmentProcessId replenishmentProcessId: Int32, replenishmentProcessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentProcess/{replenishmentProcessId}/tag/{replenishmentProcessTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessId}", withString: "\(replenishmentProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessTag}", withString: "\(replenishmentProcessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a replenishmentProcess by id
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateReplenishmentProcessById(replenishmentProcessId replenishmentProcessId: Int32, completion: ((data: ReplenishmentProcess?, error: ErrorType?) -> Void)) {
        getDuplicateReplenishmentProcessByIdWithRequestBuilder(replenishmentProcessId: replenishmentProcessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a replenishmentProcess by id
     - GET /beta/replenishmentProcess/duplicate/{replenishmentProcessId}
     - Returns a duplicated replenishmentProcess identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "workBatchId" : 5,
  "warehouseId" : 6,
  "estimatedWork" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "replenishmentPlanId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
}}]
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to be duplicated. 

     - returns: RequestBuilder<ReplenishmentProcess> 
     */
    public class func getDuplicateReplenishmentProcessByIdWithRequestBuilder(replenishmentProcessId replenishmentProcessId: Int32) -> RequestBuilder<ReplenishmentProcess> {
        var path = "/beta/replenishmentProcess/duplicate/{replenishmentProcessId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessId}", withString: "\(replenishmentProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReplenishmentProcess>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search replenishmentProcesses by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentProcessByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ReplenishmentProcess]?, error: ErrorType?) -> Void)) {
        getReplenishmentProcessByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search replenishmentProcesses by filter
     - GET /beta/replenishmentProcess/search
     - Returns the list of replenishmentProcesses that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "workBatchId" : 5,
  "warehouseId" : 6,
  "estimatedWork" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "replenishmentPlanId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
}, {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "workBatchId" : 5,
  "warehouseId" : 6,
  "estimatedWork" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "replenishmentPlanId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ReplenishmentProcess]> 
     */
    public class func getReplenishmentProcessByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ReplenishmentProcess]> {
        let path = "/beta/replenishmentProcess/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ReplenishmentProcess]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a replenishmentProcess by id
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentProcessById(replenishmentProcessId replenishmentProcessId: Int32, completion: ((data: ReplenishmentProcess?, error: ErrorType?) -> Void)) {
        getReplenishmentProcessByIdWithRequestBuilder(replenishmentProcessId: replenishmentProcessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a replenishmentProcess by id
     - GET /beta/replenishmentProcess/{replenishmentProcessId}
     - Returns the replenishmentProcess identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "workBatchId" : 5,
  "warehouseId" : 6,
  "estimatedWork" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "replenishmentPlanId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
}}]
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to be returned. 

     - returns: RequestBuilder<ReplenishmentProcess> 
     */
    public class func getReplenishmentProcessByIdWithRequestBuilder(replenishmentProcessId replenishmentProcessId: Int32) -> RequestBuilder<ReplenishmentProcess> {
        var path = "/beta/replenishmentProcess/{replenishmentProcessId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessId}", withString: "\(replenishmentProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReplenishmentProcess>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a replenishmentProcess.
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentProcessTags(replenishmentProcessId replenishmentProcessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getReplenishmentProcessTagsWithRequestBuilder(replenishmentProcessId: replenishmentProcessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a replenishmentProcess.
     - GET /beta/replenishmentProcess/{replenishmentProcessId}/tag
     - Get all existing replenishmentProcess tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentProcessId: (path) Id of the replenishmentProcess to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReplenishmentProcessTagsWithRequestBuilder(replenishmentProcessId replenishmentProcessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentProcess/{replenishmentProcessId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentProcessId}", withString: "\(replenishmentProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a replenishmentProcess custom fields
     
     - parameter body: (body) ReplenishmentProcess to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReplenishmentProcessCustomFields(body body: ReplenishmentProcess, completion: ((error: ErrorType?) -> Void)) {
        updateReplenishmentProcessCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a replenishmentProcess custom fields
     - PUT /beta/replenishmentProcess/customFields
     - Updates an existing replenishmentProcess custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ReplenishmentProcess to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReplenishmentProcessCustomFieldsWithRequestBuilder(body body: ReplenishmentProcess) -> RequestBuilder<Void> {
        let path = "/beta/replenishmentProcess/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
