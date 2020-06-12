//
// LineOfBusinessAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LineOfBusinessAPI: APIBase {
    /**
     Create a lineOfBusiness
     
     - parameter body: (body) LineOfBusiness to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLineOfBusiness(body body: LineOfBusiness, completion: ((data: LineOfBusiness?, error: ErrorType?) -> Void)) {
        addLineOfBusinessWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a lineOfBusiness
     - POST /beta/lineOfBusiness
     - Inserts a new lineOfBusiness using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "defaultSLACutoffTime" : "defaultSLACutoffTime",
  "code" : "code",
  "defaultSLAServiceDays" : 1,
  "onHold" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "defaultWarehouseServiceTypeId" : 6,
  "onHoldReason" : "onHoldReason",
  "id" : 0,
  "label" : "label",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) LineOfBusiness to be inserted. 

     - returns: RequestBuilder<LineOfBusiness> 
     */
    public class func addLineOfBusinessWithRequestBuilder(body body: LineOfBusiness) -> RequestBuilder<LineOfBusiness> {
        let path = "/beta/lineOfBusiness"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LineOfBusiness>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a lineOfBusiness
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add an audit to 
     - parameter lineOfBusinessAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLineOfBusinessAudit(lineOfBusinessId lineOfBusinessId: Int32, lineOfBusinessAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addLineOfBusinessAuditWithRequestBuilder(lineOfBusinessId: lineOfBusinessId, lineOfBusinessAudit: lineOfBusinessAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a lineOfBusiness
     - PUT /beta/lineOfBusiness/{lineOfBusinessId}/audit/{lineOfBusinessAudit}
     - Adds an audit to an existing lineOfBusiness.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add an audit to 
     - parameter lineOfBusinessAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLineOfBusinessAuditWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32, lineOfBusinessAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/audit/{lineOfBusinessAudit}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessAudit}", withString: "\(lineOfBusinessAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a lineOfBusiness
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLineOfBusinessFile(lineOfBusinessId lineOfBusinessId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addLineOfBusinessFileWithRequestBuilder(lineOfBusinessId: lineOfBusinessId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a lineOfBusiness
     - POST /beta/lineOfBusiness/{lineOfBusinessId}/file/{fileName}
     - Adds a file to an existing lineOfBusiness.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addLineOfBusinessFileWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a lineOfBusiness by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLineOfBusinessFileByURL(body body: RecordFile, lineOfBusinessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addLineOfBusinessFileByURLWithRequestBuilder(body: body, lineOfBusinessId: lineOfBusinessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a lineOfBusiness by URL.
     - POST /beta/lineOfBusiness/{lineOfBusinessId}/file
     - Adds a file to an existing lineOfBusiness by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addLineOfBusinessFileByURLWithRequestBuilder(body body: RecordFile, lineOfBusinessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/file"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a lineOfBusiness.
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add a tag to 
     - parameter lineOfBusinessTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLineOfBusinessTag(lineOfBusinessId lineOfBusinessId: Int32, lineOfBusinessTag: String, completion: ((error: ErrorType?) -> Void)) {
        addLineOfBusinessTagWithRequestBuilder(lineOfBusinessId: lineOfBusinessId, lineOfBusinessTag: lineOfBusinessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a lineOfBusiness.
     - PUT /beta/lineOfBusiness/{lineOfBusinessId}/tag/{lineOfBusinessTag}
     - Adds a tag to an existing lineOfBusiness.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to add a tag to 
     - parameter lineOfBusinessTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLineOfBusinessTagWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32, lineOfBusinessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/tag/{lineOfBusinessTag}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessTag}", withString: "\(lineOfBusinessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a lineOfBusiness.
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLineOfBusinessFile(lineOfBusinessId lineOfBusinessId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteLineOfBusinessFileWithRequestBuilder(lineOfBusinessId: lineOfBusinessId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a lineOfBusiness.
     - DELETE /beta/lineOfBusiness/{lineOfBusinessId}/file/{fileId}
     - Deletes an existing lineOfBusiness file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLineOfBusinessFileWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a lineOfBusiness.
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to remove tag from 
     - parameter lineOfBusinessTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLineOfBusinessTag(lineOfBusinessId lineOfBusinessId: Int32, lineOfBusinessTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteLineOfBusinessTagWithRequestBuilder(lineOfBusinessId: lineOfBusinessId, lineOfBusinessTag: lineOfBusinessTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a lineOfBusiness.
     - DELETE /beta/lineOfBusiness/{lineOfBusinessId}/tag/{lineOfBusinessTag}
     - Deletes an existing lineOfBusiness tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to remove tag from 
     - parameter lineOfBusinessTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLineOfBusinessTagWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32, lineOfBusinessTag: String) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/tag/{lineOfBusinessTag}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessTag}", withString: "\(lineOfBusinessTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a lineOfBusiness by id
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLineOfBusinessById(lineOfBusinessId lineOfBusinessId: Int32, completion: ((data: LineOfBusiness?, error: ErrorType?) -> Void)) {
        getDuplicateLineOfBusinessByIdWithRequestBuilder(lineOfBusinessId: lineOfBusinessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a lineOfBusiness by id
     - GET /beta/lineOfBusiness/duplicate/{lineOfBusinessId}
     - Returns a duplicated lineOfBusiness identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "defaultSLACutoffTime" : "defaultSLACutoffTime",
  "code" : "code",
  "defaultSLAServiceDays" : 1,
  "onHold" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "defaultWarehouseServiceTypeId" : 6,
  "onHoldReason" : "onHoldReason",
  "id" : 0,
  "label" : "label",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to be duplicated. 

     - returns: RequestBuilder<LineOfBusiness> 
     */
    public class func getDuplicateLineOfBusinessByIdWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32) -> RequestBuilder<LineOfBusiness> {
        var path = "/beta/lineOfBusiness/duplicate/{lineOfBusinessId}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LineOfBusiness>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search lineOfBusinesses by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLineOfBusinessByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [LineOfBusiness]?, error: ErrorType?) -> Void)) {
        getLineOfBusinessByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search lineOfBusinesses by filter
     - GET /beta/lineOfBusiness/search
     - Returns the list of lineOfBusinesses that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "defaultSLACutoffTime" : "defaultSLACutoffTime",
  "code" : "code",
  "defaultSLAServiceDays" : 1,
  "onHold" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "defaultWarehouseServiceTypeId" : 6,
  "onHoldReason" : "onHoldReason",
  "id" : 0,
  "label" : "label",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "defaultSLACutoffTime" : "defaultSLACutoffTime",
  "code" : "code",
  "defaultSLAServiceDays" : 1,
  "onHold" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "defaultWarehouseServiceTypeId" : 6,
  "onHoldReason" : "onHoldReason",
  "id" : 0,
  "label" : "label",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[LineOfBusiness]> 
     */
    public class func getLineOfBusinessByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[LineOfBusiness]> {
        let path = "/beta/lineOfBusiness/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[LineOfBusiness]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a lineOfBusiness by id
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLineOfBusinessById(lineOfBusinessId lineOfBusinessId: Int32, completion: ((data: LineOfBusiness?, error: ErrorType?) -> Void)) {
        getLineOfBusinessByIdWithRequestBuilder(lineOfBusinessId: lineOfBusinessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a lineOfBusiness by id
     - GET /beta/lineOfBusiness/{lineOfBusinessId}
     - Returns the lineOfBusiness identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "defaultSLACutoffTime" : "defaultSLACutoffTime",
  "code" : "code",
  "defaultSLAServiceDays" : 1,
  "onHold" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "defaultWarehouseServiceTypeId" : 6,
  "onHoldReason" : "onHoldReason",
  "id" : 0,
  "label" : "label",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to be returned. 

     - returns: RequestBuilder<LineOfBusiness> 
     */
    public class func getLineOfBusinessByIdWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32) -> RequestBuilder<LineOfBusiness> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LineOfBusiness>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a lineOfBusiness.
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLineOfBusinessFiles(lineOfBusinessId lineOfBusinessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLineOfBusinessFilesWithRequestBuilder(lineOfBusinessId: lineOfBusinessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a lineOfBusiness.
     - GET /beta/lineOfBusiness/{lineOfBusinessId}/file
     - Get all existing lineOfBusiness files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLineOfBusinessFilesWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/file"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a lineOfBusiness.
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLineOfBusinessTags(lineOfBusinessId lineOfBusinessId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLineOfBusinessTagsWithRequestBuilder(lineOfBusinessId: lineOfBusinessId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a lineOfBusiness.
     - GET /beta/lineOfBusiness/{lineOfBusinessId}/tag
     - Get all existing lineOfBusiness tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter lineOfBusinessId: (path) Id of the lineOfBusiness to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLineOfBusinessTagsWithRequestBuilder(lineOfBusinessId lineOfBusinessId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/lineOfBusiness/{lineOfBusinessId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a lineOfBusiness
     
     - parameter body: (body) LineOfBusiness to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLineOfBusiness(body body: LineOfBusiness, completion: ((error: ErrorType?) -> Void)) {
        updateLineOfBusinessWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a lineOfBusiness
     - PUT /beta/lineOfBusiness
     - Updates an existing lineOfBusiness using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LineOfBusiness to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLineOfBusinessWithRequestBuilder(body body: LineOfBusiness) -> RequestBuilder<Void> {
        let path = "/beta/lineOfBusiness"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a lineOfBusiness custom fields
     
     - parameter body: (body) LineOfBusiness to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLineOfBusinessCustomFields(body body: LineOfBusiness, completion: ((error: ErrorType?) -> Void)) {
        updateLineOfBusinessCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a lineOfBusiness custom fields
     - PUT /beta/lineOfBusiness/customFields
     - Updates an existing lineOfBusiness custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LineOfBusiness to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLineOfBusinessCustomFieldsWithRequestBuilder(body body: LineOfBusiness) -> RequestBuilder<Void> {
        let path = "/beta/lineOfBusiness/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
