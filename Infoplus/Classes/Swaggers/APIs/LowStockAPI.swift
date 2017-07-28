//
// LowStockAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LowStockAPI: APIBase {
    /**
     
     Add new audit for a lowStock
     
     - parameter lowStockId: (path) Id of the lowStock to add an audit to 
     - parameter lowStockAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLowStockAudit(lowStockId lowStockId: Int, lowStockAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addLowStockAuditWithRequestBuilder(lowStockId: lowStockId, lowStockAudit: lowStockAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a lowStock
     
     - PUT /beta/lowStock/{lowStockId}/audit/{lowStockAudit}
     - Adds an audit to an existing lowStock.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lowStockId: (path) Id of the lowStock to add an audit to 
     - parameter lowStockAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLowStockAuditWithRequestBuilder(lowStockId lowStockId: Int, lowStockAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/lowStock/{lowStockId}/audit/{lowStockAudit}"
        path = path.stringByReplacingOccurrencesOfString("{lowStockId}", withString: "\(lowStockId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{lowStockAudit}", withString: "\(lowStockAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a lowStock.
     
     - parameter lowStockId: (path) Id of the lowStock to add a tag to 
     - parameter lowStockTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLowStockTag(lowStockId lowStockId: Int, lowStockTag: String, completion: ((error: ErrorType?) -> Void)) {
        addLowStockTagWithRequestBuilder(lowStockId: lowStockId, lowStockTag: lowStockTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a lowStock.
     
     - PUT /beta/lowStock/{lowStockId}/tag/{lowStockTag}
     - Adds a tag to an existing lowStock.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lowStockId: (path) Id of the lowStock to add a tag to 
     - parameter lowStockTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLowStockTagWithRequestBuilder(lowStockId lowStockId: Int, lowStockTag: String) -> RequestBuilder<Void> {
        var path = "/beta/lowStock/{lowStockId}/tag/{lowStockTag}"
        path = path.stringByReplacingOccurrencesOfString("{lowStockId}", withString: "\(lowStockId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{lowStockTag}", withString: "\(lowStockTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a lowStock.
     
     - parameter lowStockId: (path) Id of the lowStock to remove tag from 
     - parameter lowStockTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLowStockTag(lowStockId lowStockId: Int, lowStockTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteLowStockTagWithRequestBuilder(lowStockId: lowStockId, lowStockTag: lowStockTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a lowStock.
     
     - DELETE /beta/lowStock/{lowStockId}/tag/{lowStockTag}
     - Deletes an existing lowStock tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lowStockId: (path) Id of the lowStock to remove tag from 
     - parameter lowStockTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLowStockTagWithRequestBuilder(lowStockId lowStockId: Int, lowStockTag: String) -> RequestBuilder<Void> {
        var path = "/beta/lowStock/{lowStockId}/tag/{lowStockTag}"
        path = path.stringByReplacingOccurrencesOfString("{lowStockId}", withString: "\(lowStockId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{lowStockTag}", withString: "\(lowStockTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a lowStock by id
     
     - parameter lowStockId: (path) Id of the lowStock to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLowStockById(lowStockId lowStockId: Int, completion: ((data: LowStock?, error: ErrorType?) -> Void)) {
        getDuplicateLowStockByIdWithRequestBuilder(lowStockId: lowStockId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a lowStock by id
     
     - GET /beta/lowStock/duplicate/{lowStockId}
     - Returns a duplicated lowStock identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "isDelayed" : true,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "printFlag" : "aeiou",
  "lowStockMessage" : "aeiou",
  "id" : 123,
  "sku" : "aeiou",
  "lowLevelDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter lowStockId: (path) Id of the lowStock to be duplicated. 

     - returns: RequestBuilder<LowStock> 
     */
    public class func getDuplicateLowStockByIdWithRequestBuilder(lowStockId lowStockId: Int) -> RequestBuilder<LowStock> {
        var path = "/beta/lowStock/duplicate/{lowStockId}"
        path = path.stringByReplacingOccurrencesOfString("{lowStockId}", withString: "\(lowStockId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LowStock>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search lowStocks by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLowStockByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [LowStock]?, error: ErrorType?) -> Void)) {
        getLowStockByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search lowStocks by filter
     
     - GET /beta/lowStock/search
     - Returns the list of lowStocks that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "isDelayed" : true,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "printFlag" : "aeiou",
  "lowStockMessage" : "aeiou",
  "id" : 123,
  "sku" : "aeiou",
  "lowLevelDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[LowStock]> 
     */
    public class func getLowStockByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[LowStock]> {
        let path = "/beta/lowStock/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[LowStock]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a lowStock by id
     
     - parameter lowStockId: (path) Id of the lowStock to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLowStockById(lowStockId lowStockId: Int, completion: ((data: LowStock?, error: ErrorType?) -> Void)) {
        getLowStockByIdWithRequestBuilder(lowStockId: lowStockId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a lowStock by id
     
     - GET /beta/lowStock/{lowStockId}
     - Returns the lowStock identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "isDelayed" : true,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "printFlag" : "aeiou",
  "lowStockMessage" : "aeiou",
  "id" : 123,
  "sku" : "aeiou",
  "lowLevelDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter lowStockId: (path) Id of the lowStock to be returned. 

     - returns: RequestBuilder<LowStock> 
     */
    public class func getLowStockByIdWithRequestBuilder(lowStockId lowStockId: Int) -> RequestBuilder<LowStock> {
        var path = "/beta/lowStock/{lowStockId}"
        path = path.stringByReplacingOccurrencesOfString("{lowStockId}", withString: "\(lowStockId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LowStock>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a lowStock.
     
     - parameter lowStockId: (path) Id of the lowStock to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLowStockTags(lowStockId lowStockId: Int, completion: ((error: ErrorType?) -> Void)) {
        getLowStockTagsWithRequestBuilder(lowStockId: lowStockId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a lowStock.
     
     - GET /beta/lowStock/{lowStockId}/tag
     - Get all existing lowStock tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lowStockId: (path) Id of the lowStock to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLowStockTagsWithRequestBuilder(lowStockId lowStockId: Int) -> RequestBuilder<Void> {
        var path = "/beta/lowStock/{lowStockId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{lowStockId}", withString: "\(lowStockId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
