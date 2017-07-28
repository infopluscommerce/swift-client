//
// ItemBuyerAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemBuyerAPI: APIBase {
    /**
     
     Create an itemBuyer
     
     - parameter body: (body) ItemBuyer to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemBuyer(body body: ItemBuyer, completion: ((data: ItemBuyer?, error: ErrorType?) -> Void)) {
        addItemBuyerWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an itemBuyer
     
     - POST /beta/itemBuyer
     - Inserts a new itemBuyer using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "internalId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "id" : "aeiou",
  "lobId" : 123
}}]
     
     - parameter body: (body) ItemBuyer to be inserted. 

     - returns: RequestBuilder<ItemBuyer> 
     */
    public class func addItemBuyerWithRequestBuilder(body body: ItemBuyer) -> RequestBuilder<ItemBuyer> {
        let path = "/beta/itemBuyer"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<ItemBuyer>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for an itemBuyer
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to add an audit to 
     - parameter itemBuyerAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemBuyerAudit(itemBuyerId itemBuyerId: Int, itemBuyerAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addItemBuyerAuditWithRequestBuilder(itemBuyerId: itemBuyerId, itemBuyerAudit: itemBuyerAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for an itemBuyer
     
     - PUT /beta/itemBuyer/{itemBuyerId}/audit/{itemBuyerAudit}
     - Adds an audit to an existing itemBuyer.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to add an audit to 
     - parameter itemBuyerAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemBuyerAuditWithRequestBuilder(itemBuyerId itemBuyerId: Int, itemBuyerAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/itemBuyer/{itemBuyerId}/audit/{itemBuyerAudit}"
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerId}", withString: "\(itemBuyerId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerAudit}", withString: "\(itemBuyerAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for an itemBuyer.
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to add a tag to 
     - parameter itemBuyerTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemBuyerTag(itemBuyerId itemBuyerId: Int, itemBuyerTag: String, completion: ((error: ErrorType?) -> Void)) {
        addItemBuyerTagWithRequestBuilder(itemBuyerId: itemBuyerId, itemBuyerTag: itemBuyerTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for an itemBuyer.
     
     - PUT /beta/itemBuyer/{itemBuyerId}/tag/{itemBuyerTag}
     - Adds a tag to an existing itemBuyer.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to add a tag to 
     - parameter itemBuyerTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemBuyerTagWithRequestBuilder(itemBuyerId itemBuyerId: Int, itemBuyerTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemBuyer/{itemBuyerId}/tag/{itemBuyerTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerId}", withString: "\(itemBuyerId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerTag}", withString: "\(itemBuyerTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an itemBuyer
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemBuyer(itemBuyerId itemBuyerId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteItemBuyerWithRequestBuilder(itemBuyerId: itemBuyerId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an itemBuyer
     
     - DELETE /beta/itemBuyer/{itemBuyerId}
     - Deletes the itemBuyer identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemBuyerWithRequestBuilder(itemBuyerId itemBuyerId: Int) -> RequestBuilder<Void> {
        var path = "/beta/itemBuyer/{itemBuyerId}"
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerId}", withString: "\(itemBuyerId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for an itemBuyer.
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to remove tag from 
     - parameter itemBuyerTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemBuyerTag(itemBuyerId itemBuyerId: Int, itemBuyerTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteItemBuyerTagWithRequestBuilder(itemBuyerId: itemBuyerId, itemBuyerTag: itemBuyerTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for an itemBuyer.
     
     - DELETE /beta/itemBuyer/{itemBuyerId}/tag/{itemBuyerTag}
     - Deletes an existing itemBuyer tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to remove tag from 
     - parameter itemBuyerTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemBuyerTagWithRequestBuilder(itemBuyerId itemBuyerId: Int, itemBuyerTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemBuyer/{itemBuyerId}/tag/{itemBuyerTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerId}", withString: "\(itemBuyerId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerTag}", withString: "\(itemBuyerTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated an itemBuyer by id
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateItemBuyerById(itemBuyerId itemBuyerId: Int, completion: ((data: ItemBuyer?, error: ErrorType?) -> Void)) {
        getDuplicateItemBuyerByIdWithRequestBuilder(itemBuyerId: itemBuyerId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated an itemBuyer by id
     
     - GET /beta/itemBuyer/duplicate/{itemBuyerId}
     - Returns a duplicated itemBuyer identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "internalId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "id" : "aeiou",
  "lobId" : 123
}}]
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to be duplicated. 

     - returns: RequestBuilder<ItemBuyer> 
     */
    public class func getDuplicateItemBuyerByIdWithRequestBuilder(itemBuyerId itemBuyerId: Int) -> RequestBuilder<ItemBuyer> {
        var path = "/beta/itemBuyer/duplicate/{itemBuyerId}"
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerId}", withString: "\(itemBuyerId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ItemBuyer>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search itemBuyers by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemBuyerByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [ItemBuyer]?, error: ErrorType?) -> Void)) {
        getItemBuyerByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search itemBuyers by filter
     
     - GET /beta/itemBuyer/search
     - Returns the list of itemBuyers that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "internalId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "id" : "aeiou",
  "lobId" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ItemBuyer]> 
     */
    public class func getItemBuyerByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[ItemBuyer]> {
        let path = "/beta/itemBuyer/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ItemBuyer]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an itemBuyer by id
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemBuyerById(itemBuyerId itemBuyerId: Int, completion: ((data: ItemBuyer?, error: ErrorType?) -> Void)) {
        getItemBuyerByIdWithRequestBuilder(itemBuyerId: itemBuyerId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an itemBuyer by id
     
     - GET /beta/itemBuyer/{itemBuyerId}
     - Returns the itemBuyer identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "internalId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "id" : "aeiou",
  "lobId" : 123
}}]
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to be returned. 

     - returns: RequestBuilder<ItemBuyer> 
     */
    public class func getItemBuyerByIdWithRequestBuilder(itemBuyerId itemBuyerId: Int) -> RequestBuilder<ItemBuyer> {
        var path = "/beta/itemBuyer/{itemBuyerId}"
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerId}", withString: "\(itemBuyerId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ItemBuyer>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for an itemBuyer.
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemBuyerTags(itemBuyerId itemBuyerId: Int, completion: ((error: ErrorType?) -> Void)) {
        getItemBuyerTagsWithRequestBuilder(itemBuyerId: itemBuyerId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for an itemBuyer.
     
     - GET /beta/itemBuyer/{itemBuyerId}/tag
     - Get all existing itemBuyer tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemBuyerId: (path) Id of the itemBuyer to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getItemBuyerTagsWithRequestBuilder(itemBuyerId itemBuyerId: Int) -> RequestBuilder<Void> {
        var path = "/beta/itemBuyer/{itemBuyerId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{itemBuyerId}", withString: "\(itemBuyerId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an itemBuyer
     
     - parameter body: (body) ItemBuyer to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateItemBuyer(body body: ItemBuyer, completion: ((error: ErrorType?) -> Void)) {
        updateItemBuyerWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an itemBuyer
     
     - PUT /beta/itemBuyer
     - Updates an existing itemBuyer using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ItemBuyer to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateItemBuyerWithRequestBuilder(body body: ItemBuyer) -> RequestBuilder<Void> {
        let path = "/beta/itemBuyer"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
