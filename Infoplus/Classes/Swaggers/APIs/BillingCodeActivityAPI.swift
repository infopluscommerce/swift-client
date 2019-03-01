//
// BillingCodeActivityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class BillingCodeActivityAPI: APIBase {
    /**
     Create a billingCodeActivity
     
     - parameter body: (body) BillingCodeActivity to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBillingCodeActivity(body body: BillingCodeActivity, completion: ((data: BillingCodeActivity?, error: ErrorType?) -> Void)) {
        addBillingCodeActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a billingCodeActivity
     - POST /beta/billingCodeActivity
     - Inserts a new billingCodeActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billingCodeTypeName" : "billingCodeTypeName",
  "billingCodeTypeId" : 2,
  "importedId" : 6,
  "userId" : 5,
  "recordId" : "recordId",
  "recordTypeId" : 7,
  "id" : 0,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "recordTypeName" : "recordTypeName"
}}]
     
     - parameter body: (body) BillingCodeActivity to be inserted. 

     - returns: RequestBuilder<BillingCodeActivity> 
     */
    public class func addBillingCodeActivityWithRequestBuilder(body body: BillingCodeActivity) -> RequestBuilder<BillingCodeActivity> {
        let path = "/beta/billingCodeActivity"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BillingCodeActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a billingCodeActivity
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to add an audit to 
     - parameter billingCodeActivityAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBillingCodeActivityAudit(billingCodeActivityId billingCodeActivityId: Int32, billingCodeActivityAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addBillingCodeActivityAuditWithRequestBuilder(billingCodeActivityId: billingCodeActivityId, billingCodeActivityAudit: billingCodeActivityAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a billingCodeActivity
     - PUT /beta/billingCodeActivity/{billingCodeActivityId}/audit/{billingCodeActivityAudit}
     - Adds an audit to an existing billingCodeActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to add an audit to 
     - parameter billingCodeActivityAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addBillingCodeActivityAuditWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32, billingCodeActivityAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/billingCodeActivity/{billingCodeActivityId}/audit/{billingCodeActivityAudit}"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityAudit}", withString: "\(billingCodeActivityAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a billingCodeActivity
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBillingCodeActivityFile(billingCodeActivityId billingCodeActivityId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addBillingCodeActivityFileWithRequestBuilder(billingCodeActivityId: billingCodeActivityId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a billingCodeActivity
     - POST /beta/billingCodeActivity/{billingCodeActivityId}/file/{fileName}
     - Adds a file to an existing billingCodeActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addBillingCodeActivityFileWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/billingCodeActivity/{billingCodeActivityId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a billingCodeActivity.
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to add a tag to 
     - parameter billingCodeActivityTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBillingCodeActivityTag(billingCodeActivityId billingCodeActivityId: Int32, billingCodeActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        addBillingCodeActivityTagWithRequestBuilder(billingCodeActivityId: billingCodeActivityId, billingCodeActivityTag: billingCodeActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a billingCodeActivity.
     - PUT /beta/billingCodeActivity/{billingCodeActivityId}/tag/{billingCodeActivityTag}
     - Adds a tag to an existing billingCodeActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to add a tag to 
     - parameter billingCodeActivityTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addBillingCodeActivityTagWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32, billingCodeActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/billingCodeActivity/{billingCodeActivityId}/tag/{billingCodeActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityTag}", withString: "\(billingCodeActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a billingCodeActivity
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteBillingCodeActivity(billingCodeActivityId billingCodeActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteBillingCodeActivityWithRequestBuilder(billingCodeActivityId: billingCodeActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a billingCodeActivity
     - DELETE /beta/billingCodeActivity/{billingCodeActivityId}
     - Deletes the billingCodeActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteBillingCodeActivityWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/billingCodeActivity/{billingCodeActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a billingCodeActivity.
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to remove tag from 
     - parameter billingCodeActivityTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteBillingCodeActivityTag(billingCodeActivityId billingCodeActivityId: Int32, billingCodeActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteBillingCodeActivityTagWithRequestBuilder(billingCodeActivityId: billingCodeActivityId, billingCodeActivityTag: billingCodeActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a billingCodeActivity.
     - DELETE /beta/billingCodeActivity/{billingCodeActivityId}/tag/{billingCodeActivityTag}
     - Deletes an existing billingCodeActivity tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to remove tag from 
     - parameter billingCodeActivityTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteBillingCodeActivityTagWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32, billingCodeActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/billingCodeActivity/{billingCodeActivityId}/tag/{billingCodeActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityTag}", withString: "\(billingCodeActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search billingCodeActivitys by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBillingCodeActivityByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [BillingCodeActivity]?, error: ErrorType?) -> Void)) {
        getBillingCodeActivityByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search billingCodeActivitys by filter
     - GET /beta/billingCodeActivity/search
     - Returns the list of billingCodeActivitys that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billingCodeTypeName" : "billingCodeTypeName",
  "billingCodeTypeId" : 2,
  "importedId" : 6,
  "userId" : 5,
  "recordId" : "recordId",
  "recordTypeId" : 7,
  "id" : 0,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "recordTypeName" : "recordTypeName"
}, {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billingCodeTypeName" : "billingCodeTypeName",
  "billingCodeTypeId" : 2,
  "importedId" : 6,
  "userId" : 5,
  "recordId" : "recordId",
  "recordTypeId" : 7,
  "id" : 0,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "recordTypeName" : "recordTypeName"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[BillingCodeActivity]> 
     */
    public class func getBillingCodeActivityByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[BillingCodeActivity]> {
        let path = "/beta/billingCodeActivity/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[BillingCodeActivity]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a billingCodeActivity by id
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBillingCodeActivityById(billingCodeActivityId billingCodeActivityId: Int32, completion: ((data: BillingCodeActivity?, error: ErrorType?) -> Void)) {
        getBillingCodeActivityByIdWithRequestBuilder(billingCodeActivityId: billingCodeActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a billingCodeActivity by id
     - GET /beta/billingCodeActivity/{billingCodeActivityId}
     - Returns the billingCodeActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billingCodeTypeName" : "billingCodeTypeName",
  "billingCodeTypeId" : 2,
  "importedId" : 6,
  "userId" : 5,
  "recordId" : "recordId",
  "recordTypeId" : 7,
  "id" : 0,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "recordTypeName" : "recordTypeName"
}}]
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to be returned. 

     - returns: RequestBuilder<BillingCodeActivity> 
     */
    public class func getBillingCodeActivityByIdWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32) -> RequestBuilder<BillingCodeActivity> {
        var path = "/beta/billingCodeActivity/{billingCodeActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BillingCodeActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a billingCodeActivity.
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBillingCodeActivityTags(billingCodeActivityId billingCodeActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getBillingCodeActivityTagsWithRequestBuilder(billingCodeActivityId: billingCodeActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a billingCodeActivity.
     - GET /beta/billingCodeActivity/{billingCodeActivityId}/tag
     - Get all existing billingCodeActivity tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getBillingCodeActivityTagsWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/billingCodeActivity/{billingCodeActivityId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a billingCodeActivity by id
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateBillingCodeActivityById(billingCodeActivityId billingCodeActivityId: Int32, completion: ((data: BillingCodeActivity?, error: ErrorType?) -> Void)) {
        getDuplicateBillingCodeActivityByIdWithRequestBuilder(billingCodeActivityId: billingCodeActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a billingCodeActivity by id
     - GET /beta/billingCodeActivity/duplicate/{billingCodeActivityId}
     - Returns a duplicated billingCodeActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billingCodeTypeName" : "billingCodeTypeName",
  "billingCodeTypeId" : 2,
  "importedId" : 6,
  "userId" : 5,
  "recordId" : "recordId",
  "recordTypeId" : 7,
  "id" : 0,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "recordTypeName" : "recordTypeName"
}}]
     
     - parameter billingCodeActivityId: (path) Id of the billingCodeActivity to be duplicated. 

     - returns: RequestBuilder<BillingCodeActivity> 
     */
    public class func getDuplicateBillingCodeActivityByIdWithRequestBuilder(billingCodeActivityId billingCodeActivityId: Int32) -> RequestBuilder<BillingCodeActivity> {
        var path = "/beta/billingCodeActivity/duplicate/{billingCodeActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{billingCodeActivityId}", withString: "\(billingCodeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BillingCodeActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a billingCodeActivity
     
     - parameter body: (body) BillingCodeActivity to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateBillingCodeActivity(body body: BillingCodeActivity, completion: ((error: ErrorType?) -> Void)) {
        updateBillingCodeActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a billingCodeActivity
     - PUT /beta/billingCodeActivity
     - Updates an existing billingCodeActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) BillingCodeActivity to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateBillingCodeActivityWithRequestBuilder(body body: BillingCodeActivity) -> RequestBuilder<Void> {
        let path = "/beta/billingCodeActivity"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}