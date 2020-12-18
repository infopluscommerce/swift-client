//
// CustomFieldAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CustomFieldAPI: APIBase {
    /**
     Create a customField
     
     - parameter body: (body) CustomField to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomField(body body: CustomField, completion: ((data: CustomField?, error: ErrorType?) -> Void)) {
        addCustomFieldWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a customField
     - POST /beta/customField
     - Inserts a new customField using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "tabLabel" : "tabLabel",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "tooltip" : "tooltip",
  "id" : 0,
  "label" : "label",
  "fieldType" : "fieldType",
  "enabled" : false,
  "searchable" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) CustomField to be inserted. 

     - returns: RequestBuilder<CustomField> 
     */
    public class func addCustomFieldWithRequestBuilder(body body: CustomField) -> RequestBuilder<CustomField> {
        let path = "/beta/customField"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CustomField>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a customField
     
     - parameter customFieldId: (path) Id of the customField to add an audit to 
     - parameter customFieldAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomFieldAudit(customFieldId customFieldId: Int32, customFieldAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addCustomFieldAuditWithRequestBuilder(customFieldId: customFieldId, customFieldAudit: customFieldAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a customField
     - PUT /beta/customField/{customFieldId}/audit/{customFieldAudit}
     - Adds an audit to an existing customField.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customFieldId: (path) Id of the customField to add an audit to 
     - parameter customFieldAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomFieldAuditWithRequestBuilder(customFieldId customFieldId: Int32, customFieldAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/audit/{customFieldAudit}"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{customFieldAudit}", withString: "\(customFieldAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a customField
     
     - parameter customFieldId: (path) Id of the customField to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomFieldFile(customFieldId customFieldId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addCustomFieldFileWithRequestBuilder(customFieldId: customFieldId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a customField
     - POST /beta/customField/{customFieldId}/file/{fileName}
     - Adds a file to an existing customField.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customFieldId: (path) Id of the customField to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomFieldFileWithRequestBuilder(customFieldId customFieldId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a customField by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter customFieldId: (path) Id of the customField to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomFieldFileByURL(body body: RecordFile, customFieldId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addCustomFieldFileByURLWithRequestBuilder(body: body, customFieldId: customFieldId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a customField by URL.
     - POST /beta/customField/{customFieldId}/file
     - Adds a file to an existing customField by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter customFieldId: (path) Id of the customField to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomFieldFileByURLWithRequestBuilder(body body: RecordFile, customFieldId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/file"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a customField.
     
     - parameter customFieldId: (path) Id of the customField to add a tag to 
     - parameter customFieldTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomFieldTag(customFieldId customFieldId: Int32, customFieldTag: String, completion: ((error: ErrorType?) -> Void)) {
        addCustomFieldTagWithRequestBuilder(customFieldId: customFieldId, customFieldTag: customFieldTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a customField.
     - PUT /beta/customField/{customFieldId}/tag/{customFieldTag}
     - Adds a tag to an existing customField.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customFieldId: (path) Id of the customField to add a tag to 
     - parameter customFieldTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomFieldTagWithRequestBuilder(customFieldId customFieldId: Int32, customFieldTag: String) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/tag/{customFieldTag}"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{customFieldTag}", withString: "\(customFieldTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a customField.
     
     - parameter customFieldId: (path) Id of the customField to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCustomFieldFile(customFieldId customFieldId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCustomFieldFileWithRequestBuilder(customFieldId: customFieldId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a customField.
     - DELETE /beta/customField/{customFieldId}/file/{fileId}
     - Deletes an existing customField file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customFieldId: (path) Id of the customField to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCustomFieldFileWithRequestBuilder(customFieldId customFieldId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a customField.
     
     - parameter customFieldId: (path) Id of the customField to remove tag from 
     - parameter customFieldTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCustomFieldTag(customFieldId customFieldId: Int32, customFieldTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCustomFieldTagWithRequestBuilder(customFieldId: customFieldId, customFieldTag: customFieldTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a customField.
     - DELETE /beta/customField/{customFieldId}/tag/{customFieldTag}
     - Deletes an existing customField tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customFieldId: (path) Id of the customField to remove tag from 
     - parameter customFieldTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCustomFieldTagWithRequestBuilder(customFieldId customFieldId: Int32, customFieldTag: String) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/tag/{customFieldTag}"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{customFieldTag}", withString: "\(customFieldTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search customFields by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomFieldByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [CustomField]?, error: ErrorType?) -> Void)) {
        getCustomFieldByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search customFields by filter
     - GET /beta/customField/search
     - Returns the list of customFields that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "tabLabel" : "tabLabel",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "tooltip" : "tooltip",
  "id" : 0,
  "label" : "label",
  "fieldType" : "fieldType",
  "enabled" : false,
  "searchable" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "tabLabel" : "tabLabel",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "tooltip" : "tooltip",
  "id" : 0,
  "label" : "label",
  "fieldType" : "fieldType",
  "enabled" : false,
  "searchable" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[CustomField]> 
     */
    public class func getCustomFieldByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[CustomField]> {
        let path = "/beta/customField/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CustomField]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a customField by id
     
     - parameter customFieldId: (path) Id of the customField to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomFieldById(customFieldId customFieldId: Int32, completion: ((data: CustomField?, error: ErrorType?) -> Void)) {
        getCustomFieldByIdWithRequestBuilder(customFieldId: customFieldId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a customField by id
     - GET /beta/customField/{customFieldId}
     - Returns the customField identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "tabLabel" : "tabLabel",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "tooltip" : "tooltip",
  "id" : 0,
  "label" : "label",
  "fieldType" : "fieldType",
  "enabled" : false,
  "searchable" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter customFieldId: (path) Id of the customField to be returned. 

     - returns: RequestBuilder<CustomField> 
     */
    public class func getCustomFieldByIdWithRequestBuilder(customFieldId customFieldId: Int32) -> RequestBuilder<CustomField> {
        var path = "/beta/customField/{customFieldId}"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CustomField>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a customField.
     
     - parameter customFieldId: (path) Id of the customField to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomFieldFiles(customFieldId customFieldId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCustomFieldFilesWithRequestBuilder(customFieldId: customFieldId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a customField.
     - GET /beta/customField/{customFieldId}/file
     - Get all existing customField files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customFieldId: (path) Id of the customField to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCustomFieldFilesWithRequestBuilder(customFieldId customFieldId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/file"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a customField.
     
     - parameter customFieldId: (path) Id of the customField to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomFieldTags(customFieldId customFieldId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCustomFieldTagsWithRequestBuilder(customFieldId: customFieldId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a customField.
     - GET /beta/customField/{customFieldId}/tag
     - Get all existing customField tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customFieldId: (path) Id of the customField to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCustomFieldTagsWithRequestBuilder(customFieldId customFieldId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customField/{customFieldId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a customField by id
     
     - parameter customFieldId: (path) Id of the customField to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateCustomFieldById(customFieldId customFieldId: Int32, completion: ((data: CustomField?, error: ErrorType?) -> Void)) {
        getDuplicateCustomFieldByIdWithRequestBuilder(customFieldId: customFieldId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a customField by id
     - GET /beta/customField/duplicate/{customFieldId}
     - Returns a duplicated customField identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "tabLabel" : "tabLabel",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "tooltip" : "tooltip",
  "id" : 0,
  "label" : "label",
  "fieldType" : "fieldType",
  "enabled" : false,
  "searchable" : false,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter customFieldId: (path) Id of the customField to be duplicated. 

     - returns: RequestBuilder<CustomField> 
     */
    public class func getDuplicateCustomFieldByIdWithRequestBuilder(customFieldId customFieldId: Int32) -> RequestBuilder<CustomField> {
        var path = "/beta/customField/duplicate/{customFieldId}"
        path = path.stringByReplacingOccurrencesOfString("{customFieldId}", withString: "\(customFieldId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CustomField>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a customField
     
     - parameter body: (body) CustomField to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCustomField(body body: CustomField, completion: ((error: ErrorType?) -> Void)) {
        updateCustomFieldWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a customField
     - PUT /beta/customField
     - Updates an existing customField using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) CustomField to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCustomFieldWithRequestBuilder(body body: CustomField) -> RequestBuilder<Void> {
        let path = "/beta/customField"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
