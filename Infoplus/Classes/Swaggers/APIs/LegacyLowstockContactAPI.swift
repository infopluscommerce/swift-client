//
// LegacyLowstockContactAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LegacyLowstockContactAPI: APIBase {
    /**
     
     Create a legacyLowstockContact
     
     - parameter body: (body) LegacyLowstockContact to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLegacyLowstockContact(body body: LegacyLowstockContact, completion: ((data: LegacyLowstockContact?, error: ErrorType?) -> Void)) {
        addLegacyLowstockContactWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a legacyLowstockContact
     
     - POST /v2.0/legacyLowstockContact
     - Inserts a new legacyLowstockContact using the specified data.
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
     
     - parameter body: (body) LegacyLowstockContact to be inserted. 

     - returns: RequestBuilder<LegacyLowstockContact> 
     */
    public class func addLegacyLowstockContactWithRequestBuilder(body body: LegacyLowstockContact) -> RequestBuilder<LegacyLowstockContact> {
        let path = "/v2.0/legacyLowstockContact"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<LegacyLowstockContact>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a legacyLowstockContact
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLegacyLowstockContact(legacyLowstockContactId legacyLowstockContactId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteLegacyLowstockContactWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a legacyLowstockContact
     
     - DELETE /v2.0/legacyLowstockContact/{legacyLowstockContactId}
     - Deletes the legacyLowstockContact identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLegacyLowstockContactWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int) -> RequestBuilder<Void> {
        var path = "/v2.0/legacyLowstockContact/{legacyLowstockContactId}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a legacyLowstockContact by id
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLegacyLowstockContactById(legacyLowstockContactId legacyLowstockContactId: Int, completion: ((data: LegacyLowstockContact?, error: ErrorType?) -> Void)) {
        getDuplicateLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a legacyLowstockContact by id
     
     - GET /v2.0/legacyLowstockContact/duplicate/{legacyLowstockContactId}
     - Returns a duplicated legacyLowstockContact identified by the specified id.
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
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be duplicated. 

     - returns: RequestBuilder<LegacyLowstockContact> 
     */
    public class func getDuplicateLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int) -> RequestBuilder<LegacyLowstockContact> {
        var path = "/v2.0/legacyLowstockContact/duplicate/{legacyLowstockContactId}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LegacyLowstockContact>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search legacyLowstockContacts by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLegacyLowstockContactByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [LegacyLowstockContact]?, error: ErrorType?) -> Void)) {
        getLegacyLowstockContactByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search legacyLowstockContacts by filter
     
     - GET /v2.0/legacyLowstockContact/search
     - Returns the list of legacyLowstockContacts that match the given filter.
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

     - returns: RequestBuilder<[LegacyLowstockContact]> 
     */
    public class func getLegacyLowstockContactByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[LegacyLowstockContact]> {
        let path = "/v2.0/legacyLowstockContact/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[LegacyLowstockContact]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a legacyLowstockContact by id
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLegacyLowstockContactById(legacyLowstockContactId legacyLowstockContactId: Int, completion: ((data: LegacyLowstockContact?, error: ErrorType?) -> Void)) {
        getLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a legacyLowstockContact by id
     
     - GET /v2.0/legacyLowstockContact/{legacyLowstockContactId}
     - Returns the legacyLowstockContact identified by the specified id.
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
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be returned. 

     - returns: RequestBuilder<LegacyLowstockContact> 
     */
    public class func getLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int) -> RequestBuilder<LegacyLowstockContact> {
        var path = "/v2.0/legacyLowstockContact/{legacyLowstockContactId}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LegacyLowstockContact>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a legacyLowstockContact
     
     - parameter body: (body) LegacyLowstockContact to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLegacyLowstockContact(body body: LegacyLowstockContact, completion: ((error: ErrorType?) -> Void)) {
        updateLegacyLowstockContactWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a legacyLowstockContact
     
     - PUT /v2.0/legacyLowstockContact
     - Updates an existing legacyLowstockContact using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LegacyLowstockContact to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLegacyLowstockContactWithRequestBuilder(body body: LegacyLowstockContact) -> RequestBuilder<Void> {
        let path = "/v2.0/legacyLowstockContact"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
