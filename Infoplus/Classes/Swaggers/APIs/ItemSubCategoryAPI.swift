//
// ItemSubCategoryAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemSubCategoryAPI: APIBase {
    /**
     Create an itemSubCategory
     
     - parameter body: (body) ItemSubCategory to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemSubCategory(body body: ItemSubCategory, completion: ((data: ItemSubCategory?, error: ErrorType?) -> Void)) {
        addItemSubCategoryWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an itemSubCategory
     - POST /beta/itemSubCategory
     - Inserts a new itemSubCategory using the specified data.
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
     
     - parameter body: (body) ItemSubCategory to be inserted. 

     - returns: RequestBuilder<ItemSubCategory> 
     */
    public class func addItemSubCategoryWithRequestBuilder(body body: ItemSubCategory) -> RequestBuilder<ItemSubCategory> {
        let path = "/beta/itemSubCategory"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemSubCategory>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an itemSubCategory
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add an audit to 
     - parameter itemSubCategoryAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemSubCategoryAudit(itemSubCategoryId itemSubCategoryId: Int32, itemSubCategoryAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addItemSubCategoryAuditWithRequestBuilder(itemSubCategoryId: itemSubCategoryId, itemSubCategoryAudit: itemSubCategoryAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an itemSubCategory
     - PUT /beta/itemSubCategory/{itemSubCategoryId}/audit/{itemSubCategoryAudit}
     - Adds an audit to an existing itemSubCategory.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add an audit to 
     - parameter itemSubCategoryAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemSubCategoryAuditWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32, itemSubCategoryAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/audit/{itemSubCategoryAudit}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryAudit}", withString: "\(itemSubCategoryAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an itemSubCategory
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemSubCategoryFile(itemSubCategoryId itemSubCategoryId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addItemSubCategoryFileWithRequestBuilder(itemSubCategoryId: itemSubCategoryId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an itemSubCategory
     - POST /beta/itemSubCategory/{itemSubCategoryId}/file/{fileName}
     - Adds a file to an existing itemSubCategory.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemSubCategoryFileWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an itemSubCategory by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemSubCategoryFileByURL(body body: RecordFile, itemSubCategoryId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addItemSubCategoryFileByURLWithRequestBuilder(body: body, itemSubCategoryId: itemSubCategoryId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an itemSubCategory by URL.
     - POST /beta/itemSubCategory/{itemSubCategoryId}/file
     - Adds a file to an existing itemSubCategory by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemSubCategoryFileByURLWithRequestBuilder(body body: RecordFile, itemSubCategoryId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/file"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an itemSubCategory.
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add a tag to 
     - parameter itemSubCategoryTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemSubCategoryTag(itemSubCategoryId itemSubCategoryId: Int32, itemSubCategoryTag: String, completion: ((error: ErrorType?) -> Void)) {
        addItemSubCategoryTagWithRequestBuilder(itemSubCategoryId: itemSubCategoryId, itemSubCategoryTag: itemSubCategoryTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an itemSubCategory.
     - PUT /beta/itemSubCategory/{itemSubCategoryId}/tag/{itemSubCategoryTag}
     - Adds a tag to an existing itemSubCategory.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to add a tag to 
     - parameter itemSubCategoryTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemSubCategoryTagWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32, itemSubCategoryTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/tag/{itemSubCategoryTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryTag}", withString: "\(itemSubCategoryTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an itemSubCategory
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemSubCategory(itemSubCategoryId itemSubCategoryId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteItemSubCategoryWithRequestBuilder(itemSubCategoryId: itemSubCategoryId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an itemSubCategory
     - DELETE /beta/itemSubCategory/{itemSubCategoryId}
     - Deletes the itemSubCategory identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemSubCategoryWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for an itemSubCategory.
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemSubCategoryFile(itemSubCategoryId itemSubCategoryId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteItemSubCategoryFileWithRequestBuilder(itemSubCategoryId: itemSubCategoryId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for an itemSubCategory.
     - DELETE /beta/itemSubCategory/{itemSubCategoryId}/file/{fileId}
     - Deletes an existing itemSubCategory file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemSubCategoryFileWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an itemSubCategory.
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to remove tag from 
     - parameter itemSubCategoryTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemSubCategoryTag(itemSubCategoryId itemSubCategoryId: Int32, itemSubCategoryTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteItemSubCategoryTagWithRequestBuilder(itemSubCategoryId: itemSubCategoryId, itemSubCategoryTag: itemSubCategoryTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an itemSubCategory.
     - DELETE /beta/itemSubCategory/{itemSubCategoryId}/tag/{itemSubCategoryTag}
     - Deletes an existing itemSubCategory tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to remove tag from 
     - parameter itemSubCategoryTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemSubCategoryTagWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32, itemSubCategoryTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/tag/{itemSubCategoryTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryTag}", withString: "\(itemSubCategoryTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an itemSubCategory by id
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateItemSubCategoryById(itemSubCategoryId itemSubCategoryId: Int32, completion: ((data: ItemSubCategory?, error: ErrorType?) -> Void)) {
        getDuplicateItemSubCategoryByIdWithRequestBuilder(itemSubCategoryId: itemSubCategoryId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an itemSubCategory by id
     - GET /beta/itemSubCategory/duplicate/{itemSubCategoryId}
     - Returns a duplicated itemSubCategory identified by the specified id.
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
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to be duplicated. 

     - returns: RequestBuilder<ItemSubCategory> 
     */
    public class func getDuplicateItemSubCategoryByIdWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32) -> RequestBuilder<ItemSubCategory> {
        var path = "/beta/itemSubCategory/duplicate/{itemSubCategoryId}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemSubCategory>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search itemSubCategorys by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemSubCategoryByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ItemSubCategory]?, error: ErrorType?) -> Void)) {
        getItemSubCategoryByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search itemSubCategorys by filter
     - GET /beta/itemSubCategory/search
     - Returns the list of itemSubCategorys that match the given filter.
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

     - returns: RequestBuilder<[ItemSubCategory]> 
     */
    public class func getItemSubCategoryByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ItemSubCategory]> {
        let path = "/beta/itemSubCategory/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ItemSubCategory]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an itemSubCategory by id
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemSubCategoryById(itemSubCategoryId itemSubCategoryId: Int32, completion: ((data: ItemSubCategory?, error: ErrorType?) -> Void)) {
        getItemSubCategoryByIdWithRequestBuilder(itemSubCategoryId: itemSubCategoryId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an itemSubCategory by id
     - GET /beta/itemSubCategory/{itemSubCategoryId}
     - Returns the itemSubCategory identified by the specified id.
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
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to be returned. 

     - returns: RequestBuilder<ItemSubCategory> 
     */
    public class func getItemSubCategoryByIdWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32) -> RequestBuilder<ItemSubCategory> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemSubCategory>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for an itemSubCategory.
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemSubCategoryFiles(itemSubCategoryId itemSubCategoryId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getItemSubCategoryFilesWithRequestBuilder(itemSubCategoryId: itemSubCategoryId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for an itemSubCategory.
     - GET /beta/itemSubCategory/{itemSubCategoryId}/file
     - Get all existing itemSubCategory files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getItemSubCategoryFilesWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/file"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an itemSubCategory.
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemSubCategoryTags(itemSubCategoryId itemSubCategoryId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getItemSubCategoryTagsWithRequestBuilder(itemSubCategoryId: itemSubCategoryId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an itemSubCategory.
     - GET /beta/itemSubCategory/{itemSubCategoryId}/tag
     - Get all existing itemSubCategory tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemSubCategoryId: (path) Id of the itemSubCategory to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getItemSubCategoryTagsWithRequestBuilder(itemSubCategoryId itemSubCategoryId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemSubCategory/{itemSubCategoryId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{itemSubCategoryId}", withString: "\(itemSubCategoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an itemSubCategory
     
     - parameter body: (body) ItemSubCategory to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateItemSubCategory(body body: ItemSubCategory, completion: ((error: ErrorType?) -> Void)) {
        updateItemSubCategoryWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an itemSubCategory
     - PUT /beta/itemSubCategory
     - Updates an existing itemSubCategory using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ItemSubCategory to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateItemSubCategoryWithRequestBuilder(body body: ItemSubCategory) -> RequestBuilder<Void> {
        let path = "/beta/itemSubCategory"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
