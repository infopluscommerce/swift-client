//
// ItemProductCodeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemProductCodeAPI: APIBase {
    /**
     Create an itemProductCode
     
     - parameter body: (body) ItemProductCode to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemProductCode(body body: ItemProductCode, completion: ((data: ItemProductCode?, error: ErrorType?) -> Void)) {
        addItemProductCodeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an itemProductCode
     - POST /beta/itemProductCode
     - Inserts a new itemProductCode using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "internalId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : "id",
  "lobId" : 0
}}]
     
     - parameter body: (body) ItemProductCode to be inserted. 

     - returns: RequestBuilder<ItemProductCode> 
     */
    public class func addItemProductCodeWithRequestBuilder(body body: ItemProductCode) -> RequestBuilder<ItemProductCode> {
        let path = "/beta/itemProductCode"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemProductCode>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an itemProductCode
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to add an audit to 
     - parameter itemProductCodeAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemProductCodeAudit(itemProductCodeId itemProductCodeId: Int32, itemProductCodeAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addItemProductCodeAuditWithRequestBuilder(itemProductCodeId: itemProductCodeId, itemProductCodeAudit: itemProductCodeAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an itemProductCode
     - PUT /beta/itemProductCode/{itemProductCodeId}/audit/{itemProductCodeAudit}
     - Adds an audit to an existing itemProductCode.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to add an audit to 
     - parameter itemProductCodeAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemProductCodeAuditWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32, itemProductCodeAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/itemProductCode/{itemProductCodeId}/audit/{itemProductCodeAudit}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeAudit}", withString: "\(itemProductCodeAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an itemProductCode
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemProductCodeFile(itemProductCodeId itemProductCodeId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addItemProductCodeFileWithRequestBuilder(itemProductCodeId: itemProductCodeId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an itemProductCode
     - POST /beta/itemProductCode/{itemProductCodeId}/file/{fileName}
     - Adds a file to an existing itemProductCode.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemProductCodeFileWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/itemProductCode/{itemProductCodeId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an itemProductCode.
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to add a tag to 
     - parameter itemProductCodeTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemProductCodeTag(itemProductCodeId itemProductCodeId: Int32, itemProductCodeTag: String, completion: ((error: ErrorType?) -> Void)) {
        addItemProductCodeTagWithRequestBuilder(itemProductCodeId: itemProductCodeId, itemProductCodeTag: itemProductCodeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an itemProductCode.
     - PUT /beta/itemProductCode/{itemProductCodeId}/tag/{itemProductCodeTag}
     - Adds a tag to an existing itemProductCode.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to add a tag to 
     - parameter itemProductCodeTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemProductCodeTagWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32, itemProductCodeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemProductCode/{itemProductCodeId}/tag/{itemProductCodeTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeTag}", withString: "\(itemProductCodeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an itemProductCode
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemProductCode(itemProductCodeId itemProductCodeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteItemProductCodeWithRequestBuilder(itemProductCodeId: itemProductCodeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an itemProductCode
     - DELETE /beta/itemProductCode/{itemProductCodeId}
     - Deletes the itemProductCode identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemProductCodeWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemProductCode/{itemProductCodeId}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an itemProductCode.
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to remove tag from 
     - parameter itemProductCodeTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemProductCodeTag(itemProductCodeId itemProductCodeId: Int32, itemProductCodeTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteItemProductCodeTagWithRequestBuilder(itemProductCodeId: itemProductCodeId, itemProductCodeTag: itemProductCodeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an itemProductCode.
     - DELETE /beta/itemProductCode/{itemProductCodeId}/tag/{itemProductCodeTag}
     - Deletes an existing itemProductCode tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to remove tag from 
     - parameter itemProductCodeTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemProductCodeTagWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32, itemProductCodeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemProductCode/{itemProductCodeId}/tag/{itemProductCodeTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeTag}", withString: "\(itemProductCodeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an itemProductCode by id
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateItemProductCodeById(itemProductCodeId itemProductCodeId: Int32, completion: ((data: ItemProductCode?, error: ErrorType?) -> Void)) {
        getDuplicateItemProductCodeByIdWithRequestBuilder(itemProductCodeId: itemProductCodeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an itemProductCode by id
     - GET /beta/itemProductCode/duplicate/{itemProductCodeId}
     - Returns a duplicated itemProductCode identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "internalId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : "id",
  "lobId" : 0
}}]
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to be duplicated. 

     - returns: RequestBuilder<ItemProductCode> 
     */
    public class func getDuplicateItemProductCodeByIdWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32) -> RequestBuilder<ItemProductCode> {
        var path = "/beta/itemProductCode/duplicate/{itemProductCodeId}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemProductCode>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search itemProductCodes by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemProductCodeByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ItemProductCode]?, error: ErrorType?) -> Void)) {
        getItemProductCodeByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search itemProductCodes by filter
     - GET /beta/itemProductCode/search
     - Returns the list of itemProductCodes that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "internalId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : "id",
  "lobId" : 0
}, {
  "internalId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : "id",
  "lobId" : 0
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ItemProductCode]> 
     */
    public class func getItemProductCodeByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ItemProductCode]> {
        let path = "/beta/itemProductCode/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ItemProductCode]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an itemProductCode by id
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemProductCodeById(itemProductCodeId itemProductCodeId: Int32, completion: ((data: ItemProductCode?, error: ErrorType?) -> Void)) {
        getItemProductCodeByIdWithRequestBuilder(itemProductCodeId: itemProductCodeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an itemProductCode by id
     - GET /beta/itemProductCode/{itemProductCodeId}
     - Returns the itemProductCode identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "internalId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : "id",
  "lobId" : 0
}}]
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to be returned. 

     - returns: RequestBuilder<ItemProductCode> 
     */
    public class func getItemProductCodeByIdWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32) -> RequestBuilder<ItemProductCode> {
        var path = "/beta/itemProductCode/{itemProductCodeId}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemProductCode>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an itemProductCode.
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemProductCodeTags(itemProductCodeId itemProductCodeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getItemProductCodeTagsWithRequestBuilder(itemProductCodeId: itemProductCodeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an itemProductCode.
     - GET /beta/itemProductCode/{itemProductCodeId}/tag
     - Get all existing itemProductCode tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemProductCodeId: (path) Id of the itemProductCode to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getItemProductCodeTagsWithRequestBuilder(itemProductCodeId itemProductCodeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemProductCode/{itemProductCodeId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an itemProductCode
     
     - parameter body: (body) ItemProductCode to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateItemProductCode(body body: ItemProductCode, completion: ((error: ErrorType?) -> Void)) {
        updateItemProductCodeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an itemProductCode
     - PUT /beta/itemProductCode
     - Updates an existing itemProductCode using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ItemProductCode to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateItemProductCodeWithRequestBuilder(body body: ItemProductCode) -> RequestBuilder<Void> {
        let path = "/beta/itemProductCode"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
