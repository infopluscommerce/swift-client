//
// LocationFootprintAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LocationFootprintAPI: APIBase {
    /**
     Create a locationFootprint
     
     - parameter body: (body) LocationFootprint to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationFootprint(body body: LocationFootprint, completion: ((data: LocationFootprint?, error: ErrorType?) -> Void)) {
        addLocationFootprintWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a locationFootprint
     - POST /beta/locationFootprint
     - Inserts a new locationFootprint using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 6,
  "depth" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "width" : 1,
  "id" : 0,
  "height" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) LocationFootprint to be inserted. 

     - returns: RequestBuilder<LocationFootprint> 
     */
    public class func addLocationFootprintWithRequestBuilder(body body: LocationFootprint) -> RequestBuilder<LocationFootprint> {
        let path = "/beta/locationFootprint"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LocationFootprint>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a locationFootprint
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to add an audit to 
     - parameter locationFootprintAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationFootprintAudit(locationFootprintId locationFootprintId: Int32, locationFootprintAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationFootprintAuditWithRequestBuilder(locationFootprintId: locationFootprintId, locationFootprintAudit: locationFootprintAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a locationFootprint
     - PUT /beta/locationFootprint/{locationFootprintId}/audit/{locationFootprintAudit}
     - Adds an audit to an existing locationFootprint.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to add an audit to 
     - parameter locationFootprintAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationFootprintAuditWithRequestBuilder(locationFootprintId locationFootprintId: Int32, locationFootprintAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/audit/{locationFootprintAudit}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintAudit}", withString: "\(locationFootprintAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a locationFootprint
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationFootprintFile(locationFootprintId locationFootprintId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationFootprintFileWithRequestBuilder(locationFootprintId: locationFootprintId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a locationFootprint
     - POST /beta/locationFootprint/{locationFootprintId}/file/{fileName}
     - Adds a file to an existing locationFootprint.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationFootprintFileWithRequestBuilder(locationFootprintId locationFootprintId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a locationFootprint by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter locationFootprintId: (path) Id of the locationFootprint to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationFootprintFileByURL(body body: RecordFile, locationFootprintId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addLocationFootprintFileByURLWithRequestBuilder(body: body, locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a locationFootprint by URL.
     - POST /beta/locationFootprint/{locationFootprintId}/file
     - Adds a file to an existing locationFootprint by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter locationFootprintId: (path) Id of the locationFootprint to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationFootprintFileByURLWithRequestBuilder(body body: RecordFile, locationFootprintId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/file"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a locationFootprint.
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to add a tag to 
     - parameter locationFootprintTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationFootprintTag(locationFootprintId locationFootprintId: Int32, locationFootprintTag: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationFootprintTagWithRequestBuilder(locationFootprintId: locationFootprintId, locationFootprintTag: locationFootprintTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a locationFootprint.
     - PUT /beta/locationFootprint/{locationFootprintId}/tag/{locationFootprintTag}
     - Adds a tag to an existing locationFootprint.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to add a tag to 
     - parameter locationFootprintTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationFootprintTagWithRequestBuilder(locationFootprintId locationFootprintId: Int32, locationFootprintTag: String) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/tag/{locationFootprintTag}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintTag}", withString: "\(locationFootprintTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a locationFootprint
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationFootprint(locationFootprintId locationFootprintId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationFootprintWithRequestBuilder(locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a locationFootprint
     - DELETE /beta/locationFootprint/{locationFootprintId}
     - Deletes the locationFootprint identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationFootprintWithRequestBuilder(locationFootprintId locationFootprintId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a locationFootprint.
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationFootprintFile(locationFootprintId locationFootprintId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationFootprintFileWithRequestBuilder(locationFootprintId: locationFootprintId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a locationFootprint.
     - DELETE /beta/locationFootprint/{locationFootprintId}/file/{fileId}
     - Deletes an existing locationFootprint file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationFootprintFileWithRequestBuilder(locationFootprintId locationFootprintId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a locationFootprint.
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to remove tag from 
     - parameter locationFootprintTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationFootprintTag(locationFootprintId locationFootprintId: Int32, locationFootprintTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationFootprintTagWithRequestBuilder(locationFootprintId: locationFootprintId, locationFootprintTag: locationFootprintTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a locationFootprint.
     - DELETE /beta/locationFootprint/{locationFootprintId}/tag/{locationFootprintTag}
     - Deletes an existing locationFootprint tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to remove tag from 
     - parameter locationFootprintTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationFootprintTagWithRequestBuilder(locationFootprintId locationFootprintId: Int32, locationFootprintTag: String) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/tag/{locationFootprintTag}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintTag}", withString: "\(locationFootprintTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a locationFootprint by id
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLocationFootprintById(locationFootprintId locationFootprintId: Int32, completion: ((data: LocationFootprint?, error: ErrorType?) -> Void)) {
        getDuplicateLocationFootprintByIdWithRequestBuilder(locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a locationFootprint by id
     - GET /beta/locationFootprint/duplicate/{locationFootprintId}
     - Returns a duplicated locationFootprint identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 6,
  "depth" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "width" : 1,
  "id" : 0,
  "height" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be duplicated. 

     - returns: RequestBuilder<LocationFootprint> 
     */
    public class func getDuplicateLocationFootprintByIdWithRequestBuilder(locationFootprintId locationFootprintId: Int32) -> RequestBuilder<LocationFootprint> {
        var path = "/beta/locationFootprint/duplicate/{locationFootprintId}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LocationFootprint>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search locationFootprints by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationFootprintByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [LocationFootprint]?, error: ErrorType?) -> Void)) {
        getLocationFootprintByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search locationFootprints by filter
     - GET /beta/locationFootprint/search
     - Returns the list of locationFootprints that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "clientId" : 6,
  "depth" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "width" : 1,
  "id" : 0,
  "height" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "clientId" : 6,
  "depth" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "width" : 1,
  "id" : 0,
  "height" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[LocationFootprint]> 
     */
    public class func getLocationFootprintByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[LocationFootprint]> {
        let path = "/beta/locationFootprint/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[LocationFootprint]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a locationFootprint by id
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationFootprintById(locationFootprintId locationFootprintId: Int32, completion: ((data: LocationFootprint?, error: ErrorType?) -> Void)) {
        getLocationFootprintByIdWithRequestBuilder(locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a locationFootprint by id
     - GET /beta/locationFootprint/{locationFootprintId}
     - Returns the locationFootprint identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 6,
  "depth" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "width" : 1,
  "id" : 0,
  "height" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be returned. 

     - returns: RequestBuilder<LocationFootprint> 
     */
    public class func getLocationFootprintByIdWithRequestBuilder(locationFootprintId locationFootprintId: Int32) -> RequestBuilder<LocationFootprint> {
        var path = "/beta/locationFootprint/{locationFootprintId}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LocationFootprint>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a locationFootprint.
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationFootprintFiles(locationFootprintId locationFootprintId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLocationFootprintFilesWithRequestBuilder(locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a locationFootprint.
     - GET /beta/locationFootprint/{locationFootprintId}/file
     - Get all existing locationFootprint files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLocationFootprintFilesWithRequestBuilder(locationFootprintId locationFootprintId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/file"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a locationFootprint.
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationFootprintTags(locationFootprintId locationFootprintId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLocationFootprintTagsWithRequestBuilder(locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a locationFootprint.
     - GET /beta/locationFootprint/{locationFootprintId}/tag
     - Get all existing locationFootprint tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLocationFootprintTagsWithRequestBuilder(locationFootprintId locationFootprintId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationFootprint/{locationFootprintId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a locationFootprint
     
     - parameter body: (body) LocationFootprint to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationFootprint(body body: LocationFootprint, completion: ((error: ErrorType?) -> Void)) {
        updateLocationFootprintWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a locationFootprint
     - PUT /beta/locationFootprint
     - Updates an existing locationFootprint using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LocationFootprint to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationFootprintWithRequestBuilder(body body: LocationFootprint) -> RequestBuilder<Void> {
        let path = "/beta/locationFootprint"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a locationFootprint custom fields
     
     - parameter body: (body) LocationFootprint to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationFootprintCustomFields(body body: LocationFootprint, completion: ((error: ErrorType?) -> Void)) {
        updateLocationFootprintCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a locationFootprint custom fields
     - PUT /beta/locationFootprint/customFields
     - Updates an existing locationFootprint custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LocationFootprint to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationFootprintCustomFieldsWithRequestBuilder(body body: LocationFootprint) -> RequestBuilder<Void> {
        let path = "/beta/locationFootprint/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
