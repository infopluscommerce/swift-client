//
// ReceivingProcessAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ReceivingProcessAPI: APIBase {
    /**
     Add new audit for a receivingProcess
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to add an audit to 
     - parameter receivingProcessAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReceivingProcessAudit(receivingProcessId receivingProcessId: Int32, receivingProcessAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addReceivingProcessAuditWithRequestBuilder(receivingProcessId: receivingProcessId, receivingProcessAudit: receivingProcessAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a receivingProcess
     - PUT /beta/receivingProcess/{receivingProcessId}/audit/{receivingProcessAudit}
     - Adds an audit to an existing receivingProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to add an audit to 
     - parameter receivingProcessAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReceivingProcessAuditWithRequestBuilder(receivingProcessId receivingProcessId: Int32, receivingProcessAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/audit/{receivingProcessAudit}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessAudit}", withString: "\(receivingProcessAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a receivingProcess
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReceivingProcessFile(receivingProcessId receivingProcessId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addReceivingProcessFileWithRequestBuilder(receivingProcessId: receivingProcessId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a receivingProcess
     - POST /beta/receivingProcess/{receivingProcessId}/file/{fileName}
     - Adds a file to an existing receivingProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addReceivingProcessFileWithRequestBuilder(receivingProcessId receivingProcessId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a receivingProcess by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter receivingProcessId: (path) Id of the receivingProcess to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReceivingProcessFileByURL(body body: RecordFile, receivingProcessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addReceivingProcessFileByURLWithRequestBuilder(body: body, receivingProcessId: receivingProcessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a receivingProcess by URL.
     - POST /beta/receivingProcess/{receivingProcessId}/file
     - Adds a file to an existing receivingProcess by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter receivingProcessId: (path) Id of the receivingProcess to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addReceivingProcessFileByURLWithRequestBuilder(body body: RecordFile, receivingProcessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/file"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a receivingProcess.
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to add a tag to 
     - parameter receivingProcessTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReceivingProcessTag(receivingProcessId receivingProcessId: Int32, receivingProcessTag: String, completion: ((error: ErrorType?) -> Void)) {
        addReceivingProcessTagWithRequestBuilder(receivingProcessId: receivingProcessId, receivingProcessTag: receivingProcessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a receivingProcess.
     - PUT /beta/receivingProcess/{receivingProcessId}/tag/{receivingProcessTag}
     - Adds a tag to an existing receivingProcess.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to add a tag to 
     - parameter receivingProcessTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReceivingProcessTagWithRequestBuilder(receivingProcessId receivingProcessId: Int32, receivingProcessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/tag/{receivingProcessTag}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessTag}", withString: "\(receivingProcessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a receivingProcess
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReceivingProcess(receivingProcessId receivingProcessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteReceivingProcessWithRequestBuilder(receivingProcessId: receivingProcessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a receivingProcess
     - DELETE /beta/receivingProcess/{receivingProcessId}
     - Deletes the receivingProcess identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReceivingProcessWithRequestBuilder(receivingProcessId receivingProcessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a receivingProcess.
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReceivingProcessFile(receivingProcessId receivingProcessId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteReceivingProcessFileWithRequestBuilder(receivingProcessId: receivingProcessId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a receivingProcess.
     - DELETE /beta/receivingProcess/{receivingProcessId}/file/{fileId}
     - Deletes an existing receivingProcess file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReceivingProcessFileWithRequestBuilder(receivingProcessId receivingProcessId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a receivingProcess.
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to remove tag from 
     - parameter receivingProcessTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReceivingProcessTag(receivingProcessId receivingProcessId: Int32, receivingProcessTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteReceivingProcessTagWithRequestBuilder(receivingProcessId: receivingProcessId, receivingProcessTag: receivingProcessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a receivingProcess.
     - DELETE /beta/receivingProcess/{receivingProcessId}/tag/{receivingProcessTag}
     - Deletes an existing receivingProcess tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to remove tag from 
     - parameter receivingProcessTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReceivingProcessTagWithRequestBuilder(receivingProcessId receivingProcessId: Int32, receivingProcessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/tag/{receivingProcessTag}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessTag}", withString: "\(receivingProcessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a receivingProcess by id
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateReceivingProcessById(receivingProcessId receivingProcessId: Int32, completion: ((data: ReceivingProcess?, error: ErrorType?) -> Void)) {
        getDuplicateReceivingProcessByIdWithRequestBuilder(receivingProcessId: receivingProcessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a receivingProcess by id
     - GET /beta/receivingProcess/duplicate/{receivingProcessId}
     - Returns a duplicated receivingProcess identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "receivingWorksheetId" : 5,
  "workBatchId" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to be duplicated. 

     - returns: RequestBuilder<ReceivingProcess> 
     */
    public class func getDuplicateReceivingProcessByIdWithRequestBuilder(receivingProcessId receivingProcessId: Int32) -> RequestBuilder<ReceivingProcess> {
        var path = "/beta/receivingProcess/duplicate/{receivingProcessId}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReceivingProcess>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search receivingProcesses by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReceivingProcessByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ReceivingProcess]?, error: ErrorType?) -> Void)) {
        getReceivingProcessByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search receivingProcesses by filter
     - GET /beta/receivingProcess/search
     - Returns the list of receivingProcesses that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "receivingWorksheetId" : 5,
  "workBatchId" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "receivingWorksheetId" : 5,
  "workBatchId" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ReceivingProcess]> 
     */
    public class func getReceivingProcessByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ReceivingProcess]> {
        let path = "/beta/receivingProcess/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ReceivingProcess]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a receivingProcess by id
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReceivingProcessById(receivingProcessId receivingProcessId: Int32, completion: ((data: ReceivingProcess?, error: ErrorType?) -> Void)) {
        getReceivingProcessByIdWithRequestBuilder(receivingProcessId: receivingProcessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a receivingProcess by id
     - GET /beta/receivingProcess/{receivingProcessId}
     - Returns the receivingProcess identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "receivingWorksheetId" : 5,
  "workBatchId" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to be returned. 

     - returns: RequestBuilder<ReceivingProcess> 
     */
    public class func getReceivingProcessByIdWithRequestBuilder(receivingProcessId receivingProcessId: Int32) -> RequestBuilder<ReceivingProcess> {
        var path = "/beta/receivingProcess/{receivingProcessId}"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReceivingProcess>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a receivingProcess.
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReceivingProcessFiles(receivingProcessId receivingProcessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getReceivingProcessFilesWithRequestBuilder(receivingProcessId: receivingProcessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a receivingProcess.
     - GET /beta/receivingProcess/{receivingProcessId}/file
     - Get all existing receivingProcess files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReceivingProcessFilesWithRequestBuilder(receivingProcessId receivingProcessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/file"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a receivingProcess.
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReceivingProcessTags(receivingProcessId receivingProcessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getReceivingProcessTagsWithRequestBuilder(receivingProcessId: receivingProcessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a receivingProcess.
     - GET /beta/receivingProcess/{receivingProcessId}/tag
     - Get all existing receivingProcess tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingProcessId: (path) Id of the receivingProcess to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReceivingProcessTagsWithRequestBuilder(receivingProcessId receivingProcessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/receivingProcess/{receivingProcessId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{receivingProcessId}", withString: "\(receivingProcessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a receivingProcess custom fields
     
     - parameter body: (body) ReceivingProcess to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReceivingProcessCustomFields(body body: ReceivingProcess, completion: ((error: ErrorType?) -> Void)) {
        updateReceivingProcessCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a receivingProcess custom fields
     - PUT /beta/receivingProcess/customFields
     - Updates an existing receivingProcess custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ReceivingProcess to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReceivingProcessCustomFieldsWithRequestBuilder(body body: ReceivingProcess) -> RequestBuilder<Void> {
        let path = "/beta/receivingProcess/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}