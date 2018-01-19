//
// ReplenishmentPlanAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ReplenishmentPlanAPI: APIBase {
    /**
     Create a replenishmentPlan
     
     - parameter body: (body) ReplenishmentPlan to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentPlan(body body: ReplenishmentPlan, completion: ((data: ReplenishmentPlan?, error: ErrorType?) -> Void)) {
        addReplenishmentPlanWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a replenishmentPlan
     - POST /beta/replenishmentPlan
     - Inserts a new replenishmentPlan using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "pickFaceAssignmentSmartFilterId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) ReplenishmentPlan to be inserted. 

     - returns: RequestBuilder<ReplenishmentPlan> 
     */
    public class func addReplenishmentPlanWithRequestBuilder(body body: ReplenishmentPlan) -> RequestBuilder<ReplenishmentPlan> {
        let path = "/beta/replenishmentPlan"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReplenishmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a replenishmentPlan
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to add an audit to 
     - parameter replenishmentPlanAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentPlanAudit(replenishmentPlanId replenishmentPlanId: Int32, replenishmentPlanAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentPlanAuditWithRequestBuilder(replenishmentPlanId: replenishmentPlanId, replenishmentPlanAudit: replenishmentPlanAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a replenishmentPlan
     - PUT /beta/replenishmentPlan/{replenishmentPlanId}/audit/{replenishmentPlanAudit}
     - Adds an audit to an existing replenishmentPlan.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to add an audit to 
     - parameter replenishmentPlanAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentPlanAuditWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int32, replenishmentPlanAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentPlan/{replenishmentPlanId}/audit/{replenishmentPlanAudit}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanAudit}", withString: "\(replenishmentPlanAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a replenishmentPlan.
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to add a tag to 
     - parameter replenishmentPlanTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentPlanTag(replenishmentPlanId replenishmentPlanId: Int32, replenishmentPlanTag: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentPlanTagWithRequestBuilder(replenishmentPlanId: replenishmentPlanId, replenishmentPlanTag: replenishmentPlanTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a replenishmentPlan.
     - PUT /beta/replenishmentPlan/{replenishmentPlanId}/tag/{replenishmentPlanTag}
     - Adds a tag to an existing replenishmentPlan.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to add a tag to 
     - parameter replenishmentPlanTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentPlanTagWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int32, replenishmentPlanTag: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentPlan/{replenishmentPlanId}/tag/{replenishmentPlanTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanTag}", withString: "\(replenishmentPlanTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a replenishmentPlan
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReplenishmentPlan(replenishmentPlanId replenishmentPlanId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteReplenishmentPlanWithRequestBuilder(replenishmentPlanId: replenishmentPlanId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a replenishmentPlan
     - DELETE /beta/replenishmentPlan/{replenishmentPlanId}
     - Deletes the replenishmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReplenishmentPlanWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentPlan/{replenishmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a replenishmentPlan.
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to remove tag from 
     - parameter replenishmentPlanTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReplenishmentPlanTag(replenishmentPlanId replenishmentPlanId: Int32, replenishmentPlanTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteReplenishmentPlanTagWithRequestBuilder(replenishmentPlanId: replenishmentPlanId, replenishmentPlanTag: replenishmentPlanTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a replenishmentPlan.
     - DELETE /beta/replenishmentPlan/{replenishmentPlanId}/tag/{replenishmentPlanTag}
     - Deletes an existing replenishmentPlan tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to remove tag from 
     - parameter replenishmentPlanTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReplenishmentPlanTagWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int32, replenishmentPlanTag: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentPlan/{replenishmentPlanId}/tag/{replenishmentPlanTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanTag}", withString: "\(replenishmentPlanTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a replenishmentPlan by id
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateReplenishmentPlanById(replenishmentPlanId replenishmentPlanId: Int32, completion: ((data: ReplenishmentPlan?, error: ErrorType?) -> Void)) {
        getDuplicateReplenishmentPlanByIdWithRequestBuilder(replenishmentPlanId: replenishmentPlanId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a replenishmentPlan by id
     - GET /beta/replenishmentPlan/duplicate/{replenishmentPlanId}
     - Returns a duplicated replenishmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "pickFaceAssignmentSmartFilterId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be duplicated. 

     - returns: RequestBuilder<ReplenishmentPlan> 
     */
    public class func getDuplicateReplenishmentPlanByIdWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int32) -> RequestBuilder<ReplenishmentPlan> {
        var path = "/beta/replenishmentPlan/duplicate/{replenishmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReplenishmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search replenishmentPlans by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentPlanByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ReplenishmentPlan]?, error: ErrorType?) -> Void)) {
        getReplenishmentPlanByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search replenishmentPlans by filter
     - GET /beta/replenishmentPlan/search
     - Returns the list of replenishmentPlans that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "pickFaceAssignmentSmartFilterId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "pickFaceAssignmentSmartFilterId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ReplenishmentPlan]> 
     */
    public class func getReplenishmentPlanByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ReplenishmentPlan]> {
        let path = "/beta/replenishmentPlan/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ReplenishmentPlan]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a replenishmentPlan by id
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentPlanById(replenishmentPlanId replenishmentPlanId: Int32, completion: ((data: ReplenishmentPlan?, error: ErrorType?) -> Void)) {
        getReplenishmentPlanByIdWithRequestBuilder(replenishmentPlanId: replenishmentPlanId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a replenishmentPlan by id
     - GET /beta/replenishmentPlan/{replenishmentPlanId}
     - Returns the replenishmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "pickFaceAssignmentSmartFilterId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be returned. 

     - returns: RequestBuilder<ReplenishmentPlan> 
     */
    public class func getReplenishmentPlanByIdWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int32) -> RequestBuilder<ReplenishmentPlan> {
        var path = "/beta/replenishmentPlan/{replenishmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReplenishmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a replenishmentPlan.
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentPlanTags(replenishmentPlanId replenishmentPlanId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getReplenishmentPlanTagsWithRequestBuilder(replenishmentPlanId: replenishmentPlanId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a replenishmentPlan.
     - GET /beta/replenishmentPlan/{replenishmentPlanId}/tag
     - Get all existing replenishmentPlan tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReplenishmentPlanTagsWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/replenishmentPlan/{replenishmentPlanId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a replenishmentPlan
     
     - parameter body: (body) ReplenishmentPlan to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReplenishmentPlan(body body: ReplenishmentPlan, completion: ((error: ErrorType?) -> Void)) {
        updateReplenishmentPlanWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a replenishmentPlan
     - PUT /beta/replenishmentPlan
     - Updates an existing replenishmentPlan using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ReplenishmentPlan to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReplenishmentPlanWithRequestBuilder(body body: ReplenishmentPlan) -> RequestBuilder<Void> {
        let path = "/beta/replenishmentPlan"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a replenishmentPlan custom fields
     
     - parameter body: (body) ReplenishmentPlan to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReplenishmentPlanCustomFields(body body: ReplenishmentPlan, completion: ((error: ErrorType?) -> Void)) {
        updateReplenishmentPlanCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a replenishmentPlan custom fields
     - PUT /beta/replenishmentPlan/customFields
     - Updates an existing replenishmentPlan custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ReplenishmentPlan to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReplenishmentPlanCustomFieldsWithRequestBuilder(body body: ReplenishmentPlan) -> RequestBuilder<Void> {
        let path = "/beta/replenishmentPlan/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
