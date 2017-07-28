//
// BusinessTransactionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class BusinessTransactionAPI: APIBase {
    /**
     
     Add new audit for a businessTransaction
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to add an audit to 
     - parameter businessTransactionAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBusinessTransactionAudit(businessTransactionId businessTransactionId: Int, businessTransactionAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addBusinessTransactionAuditWithRequestBuilder(businessTransactionId: businessTransactionId, businessTransactionAudit: businessTransactionAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a businessTransaction
     
     - PUT /beta/businessTransaction/{businessTransactionId}/audit/{businessTransactionAudit}
     - Adds an audit to an existing businessTransaction.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to add an audit to 
     - parameter businessTransactionAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addBusinessTransactionAuditWithRequestBuilder(businessTransactionId businessTransactionId: Int, businessTransactionAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/businessTransaction/{businessTransactionId}/audit/{businessTransactionAudit}"
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionId}", withString: "\(businessTransactionId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionAudit}", withString: "\(businessTransactionAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a businessTransaction.
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to add a tag to 
     - parameter businessTransactionTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBusinessTransactionTag(businessTransactionId businessTransactionId: Int, businessTransactionTag: String, completion: ((error: ErrorType?) -> Void)) {
        addBusinessTransactionTagWithRequestBuilder(businessTransactionId: businessTransactionId, businessTransactionTag: businessTransactionTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a businessTransaction.
     
     - PUT /beta/businessTransaction/{businessTransactionId}/tag/{businessTransactionTag}
     - Adds a tag to an existing businessTransaction.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to add a tag to 
     - parameter businessTransactionTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addBusinessTransactionTagWithRequestBuilder(businessTransactionId businessTransactionId: Int, businessTransactionTag: String) -> RequestBuilder<Void> {
        var path = "/beta/businessTransaction/{businessTransactionId}/tag/{businessTransactionTag}"
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionId}", withString: "\(businessTransactionId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionTag}", withString: "\(businessTransactionTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a businessTransaction.
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to remove tag from 
     - parameter businessTransactionTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteBusinessTransactionTag(businessTransactionId businessTransactionId: Int, businessTransactionTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteBusinessTransactionTagWithRequestBuilder(businessTransactionId: businessTransactionId, businessTransactionTag: businessTransactionTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a businessTransaction.
     
     - DELETE /beta/businessTransaction/{businessTransactionId}/tag/{businessTransactionTag}
     - Deletes an existing businessTransaction tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to remove tag from 
     - parameter businessTransactionTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteBusinessTransactionTagWithRequestBuilder(businessTransactionId businessTransactionId: Int, businessTransactionTag: String) -> RequestBuilder<Void> {
        var path = "/beta/businessTransaction/{businessTransactionId}/tag/{businessTransactionTag}"
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionId}", withString: "\(businessTransactionId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionTag}", withString: "\(businessTransactionTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search businessTransactions by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBusinessTransactionByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [BusinessTransaction]?, error: ErrorType?) -> Void)) {
        getBusinessTransactionByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search businessTransactions by filter
     
     - GET /beta/businessTransaction/search
     - Returns the list of businessTransactions that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "queueName" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "messageBody" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "serverName" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "status" : "aeiou"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[BusinessTransaction]> 
     */
    public class func getBusinessTransactionByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[BusinessTransaction]> {
        let path = "/beta/businessTransaction/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[BusinessTransaction]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a businessTransaction by id
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBusinessTransactionById(businessTransactionId businessTransactionId: Int, completion: ((data: BusinessTransaction?, error: ErrorType?) -> Void)) {
        getBusinessTransactionByIdWithRequestBuilder(businessTransactionId: businessTransactionId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a businessTransaction by id
     
     - GET /beta/businessTransaction/{businessTransactionId}
     - Returns the businessTransaction identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "queueName" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "messageBody" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "serverName" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "status" : "aeiou"
}}]
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to be returned. 

     - returns: RequestBuilder<BusinessTransaction> 
     */
    public class func getBusinessTransactionByIdWithRequestBuilder(businessTransactionId businessTransactionId: Int) -> RequestBuilder<BusinessTransaction> {
        var path = "/beta/businessTransaction/{businessTransactionId}"
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionId}", withString: "\(businessTransactionId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<BusinessTransaction>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a businessTransaction.
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBusinessTransactionTags(businessTransactionId businessTransactionId: Int, completion: ((error: ErrorType?) -> Void)) {
        getBusinessTransactionTagsWithRequestBuilder(businessTransactionId: businessTransactionId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a businessTransaction.
     
     - GET /beta/businessTransaction/{businessTransactionId}/tag
     - Get all existing businessTransaction tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getBusinessTransactionTagsWithRequestBuilder(businessTransactionId businessTransactionId: Int) -> RequestBuilder<Void> {
        var path = "/beta/businessTransaction/{businessTransactionId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionId}", withString: "\(businessTransactionId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a businessTransaction by id
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateBusinessTransactionById(businessTransactionId businessTransactionId: Int, completion: ((data: BusinessTransaction?, error: ErrorType?) -> Void)) {
        getDuplicateBusinessTransactionByIdWithRequestBuilder(businessTransactionId: businessTransactionId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a businessTransaction by id
     
     - GET /beta/businessTransaction/duplicate/{businessTransactionId}
     - Returns a duplicated businessTransaction identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "queueName" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "messageBody" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "serverName" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "status" : "aeiou"
}}]
     
     - parameter businessTransactionId: (path) Id of the businessTransaction to be duplicated. 

     - returns: RequestBuilder<BusinessTransaction> 
     */
    public class func getDuplicateBusinessTransactionByIdWithRequestBuilder(businessTransactionId businessTransactionId: Int) -> RequestBuilder<BusinessTransaction> {
        var path = "/beta/businessTransaction/duplicate/{businessTransactionId}"
        path = path.stringByReplacingOccurrencesOfString("{businessTransactionId}", withString: "\(businessTransactionId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<BusinessTransaction>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a businessTransaction custom fields
     
     - parameter body: (body) BusinessTransaction to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateBusinessTransactionCustomFields(body body: BusinessTransaction, completion: ((error: ErrorType?) -> Void)) {
        updateBusinessTransactionCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a businessTransaction custom fields
     
     - PUT /beta/businessTransaction/customFields
     - Updates an existing businessTransaction custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) BusinessTransaction to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateBusinessTransactionCustomFieldsWithRequestBuilder(body body: BusinessTransaction) -> RequestBuilder<Void> {
        let path = "/beta/businessTransaction/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
