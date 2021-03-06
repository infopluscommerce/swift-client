//
// ItemActivityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemActivityAPI: APIBase {
    /**
     Add new audit for an itemActivity
     
     - parameter itemActivityId: (path) Id of the itemActivity to add an audit to 
     - parameter itemActivityAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemActivityAudit(itemActivityId itemActivityId: Int32, itemActivityAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addItemActivityAuditWithRequestBuilder(itemActivityId: itemActivityId, itemActivityAudit: itemActivityAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an itemActivity
     - PUT /beta/itemActivity/{itemActivityId}/audit/{itemActivityAudit}
     - Adds an audit to an existing itemActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemActivityId: (path) Id of the itemActivity to add an audit to 
     - parameter itemActivityAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemActivityAuditWithRequestBuilder(itemActivityId itemActivityId: Int32, itemActivityAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/audit/{itemActivityAudit}"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemActivityAudit}", withString: "\(itemActivityAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an itemActivity
     
     - parameter itemActivityId: (path) Id of the itemActivity to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemActivityFile(itemActivityId itemActivityId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addItemActivityFileWithRequestBuilder(itemActivityId: itemActivityId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an itemActivity
     - POST /beta/itemActivity/{itemActivityId}/file/{fileName}
     - Adds a file to an existing itemActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemActivityId: (path) Id of the itemActivity to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemActivityFileWithRequestBuilder(itemActivityId itemActivityId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an itemActivity by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter itemActivityId: (path) Id of the itemActivity to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemActivityFileByURL(body body: RecordFile, itemActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addItemActivityFileByURLWithRequestBuilder(body: body, itemActivityId: itemActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an itemActivity by URL.
     - POST /beta/itemActivity/{itemActivityId}/file
     - Adds a file to an existing itemActivity by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter itemActivityId: (path) Id of the itemActivity to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemActivityFileByURLWithRequestBuilder(body body: RecordFile, itemActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/file"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an itemActivity.
     
     - parameter itemActivityId: (path) Id of the itemActivity to add a tag to 
     - parameter itemActivityTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemActivityTag(itemActivityId itemActivityId: Int32, itemActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        addItemActivityTagWithRequestBuilder(itemActivityId: itemActivityId, itemActivityTag: itemActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an itemActivity.
     - PUT /beta/itemActivity/{itemActivityId}/tag/{itemActivityTag}
     - Adds a tag to an existing itemActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemActivityId: (path) Id of the itemActivity to add a tag to 
     - parameter itemActivityTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemActivityTagWithRequestBuilder(itemActivityId itemActivityId: Int32, itemActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/tag/{itemActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemActivityTag}", withString: "\(itemActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for an itemActivity.
     
     - parameter itemActivityId: (path) Id of the itemActivity to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemActivityFile(itemActivityId itemActivityId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteItemActivityFileWithRequestBuilder(itemActivityId: itemActivityId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for an itemActivity.
     - DELETE /beta/itemActivity/{itemActivityId}/file/{fileId}
     - Deletes an existing itemActivity file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemActivityId: (path) Id of the itemActivity to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemActivityFileWithRequestBuilder(itemActivityId itemActivityId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an itemActivity.
     
     - parameter itemActivityId: (path) Id of the itemActivity to remove tag from 
     - parameter itemActivityTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemActivityTag(itemActivityId itemActivityId: Int32, itemActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteItemActivityTagWithRequestBuilder(itemActivityId: itemActivityId, itemActivityTag: itemActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an itemActivity.
     - DELETE /beta/itemActivity/{itemActivityId}/tag/{itemActivityTag}
     - Deletes an existing itemActivity tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemActivityId: (path) Id of the itemActivity to remove tag from 
     - parameter itemActivityTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemActivityTagWithRequestBuilder(itemActivityId itemActivityId: Int32, itemActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/tag/{itemActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemActivityTag}", withString: "\(itemActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an itemActivity by id
     
     - parameter itemActivityId: (path) Id of the itemActivity to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateItemActivityById(itemActivityId itemActivityId: Int32, completion: ((data: ItemActivity?, error: ErrorType?) -> Void)) {
        getDuplicateItemActivityByIdWithRequestBuilder(itemActivityId: itemActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an itemActivity by id
     - GET /beta/itemActivity/duplicate/{itemActivityId}
     - Returns a duplicated itemActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "activityType" : "activityType",
  "sku" : "sku",
  "inventoryChange" : 1,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter itemActivityId: (path) Id of the itemActivity to be duplicated. 

     - returns: RequestBuilder<ItemActivity> 
     */
    public class func getDuplicateItemActivityByIdWithRequestBuilder(itemActivityId itemActivityId: Int32) -> RequestBuilder<ItemActivity> {
        var path = "/beta/itemActivity/duplicate/{itemActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search itemActivitys by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemActivityByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ItemActivity]?, error: ErrorType?) -> Void)) {
        getItemActivityByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search itemActivitys by filter
     - GET /beta/itemActivity/search
     - Returns the list of itemActivitys that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "activityType" : "activityType",
  "sku" : "sku",
  "inventoryChange" : 1,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "activityType" : "activityType",
  "sku" : "sku",
  "inventoryChange" : 1,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ItemActivity]> 
     */
    public class func getItemActivityByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ItemActivity]> {
        let path = "/beta/itemActivity/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ItemActivity]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an itemActivity by id
     
     - parameter itemActivityId: (path) Id of the itemActivity to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemActivityById(itemActivityId itemActivityId: Int32, completion: ((data: ItemActivity?, error: ErrorType?) -> Void)) {
        getItemActivityByIdWithRequestBuilder(itemActivityId: itemActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an itemActivity by id
     - GET /beta/itemActivity/{itemActivityId}
     - Returns the itemActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "activityType" : "activityType",
  "sku" : "sku",
  "inventoryChange" : 1,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter itemActivityId: (path) Id of the itemActivity to be returned. 

     - returns: RequestBuilder<ItemActivity> 
     */
    public class func getItemActivityByIdWithRequestBuilder(itemActivityId itemActivityId: Int32) -> RequestBuilder<ItemActivity> {
        var path = "/beta/itemActivity/{itemActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for an itemActivity.
     
     - parameter itemActivityId: (path) Id of the itemActivity to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemActivityFiles(itemActivityId itemActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getItemActivityFilesWithRequestBuilder(itemActivityId: itemActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for an itemActivity.
     - GET /beta/itemActivity/{itemActivityId}/file
     - Get all existing itemActivity files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemActivityId: (path) Id of the itemActivity to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getItemActivityFilesWithRequestBuilder(itemActivityId itemActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/file"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an itemActivity.
     
     - parameter itemActivityId: (path) Id of the itemActivity to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemActivityTags(itemActivityId itemActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getItemActivityTagsWithRequestBuilder(itemActivityId: itemActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an itemActivity.
     - GET /beta/itemActivity/{itemActivityId}/tag
     - Get all existing itemActivity tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemActivityId: (path) Id of the itemActivity to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getItemActivityTagsWithRequestBuilder(itemActivityId itemActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemActivity/{itemActivityId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{itemActivityId}", withString: "\(itemActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
