//
// LocationAddressSchemeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LocationAddressSchemeAPI: APIBase {
    /**
     Create a locationAddressScheme
     
     - parameter body: (body) LocationAddressScheme to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationAddressScheme(body body: LocationAddressScheme, completion: ((data: LocationAddressScheme?, error: ErrorType?) -> Void)) {
        addLocationAddressSchemeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a locationAddressScheme
     - POST /beta/locationAddressScheme
     - Inserts a new locationAddressScheme using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "formatString" : "formatString",
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationNamingScheme" : "locationNamingScheme",
  "bayNumberZeroPadded" : false,
  "customFields" : {
    "key" : "{}"
  },
  "aisleNumberZeroPadded" : false,
  "locationNumberZeroPadded" : false,
  "levelNumberZeroPadded" : false,
  "levelNumberMinimumNumberOfDigits" : 5,
  "bayNumberMinimumNumberOfDigits" : 2,
  "name" : "name",
  "levelNamingScheme" : "levelNamingScheme",
  "bayNamingScheme" : "bayNamingScheme",
  "id" : 0,
  "aisleNamingScheme" : "aisleNamingScheme",
  "locationNumberMinimumNumberOfDigits" : 1,
  "aisleNumberMinimumNumberOfDigits" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) LocationAddressScheme to be inserted. 

     - returns: RequestBuilder<LocationAddressScheme> 
     */
    public class func addLocationAddressSchemeWithRequestBuilder(body body: LocationAddressScheme) -> RequestBuilder<LocationAddressScheme> {
        let path = "/beta/locationAddressScheme"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LocationAddressScheme>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a locationAddressScheme
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add an audit to 
     - parameter locationAddressSchemeAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationAddressSchemeAudit(locationAddressSchemeId locationAddressSchemeId: Int32, locationAddressSchemeAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationAddressSchemeAuditWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId, locationAddressSchemeAudit: locationAddressSchemeAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a locationAddressScheme
     - PUT /beta/locationAddressScheme/{locationAddressSchemeId}/audit/{locationAddressSchemeAudit}
     - Adds an audit to an existing locationAddressScheme.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add an audit to 
     - parameter locationAddressSchemeAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationAddressSchemeAuditWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32, locationAddressSchemeAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/audit/{locationAddressSchemeAudit}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeAudit}", withString: "\(locationAddressSchemeAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a locationAddressScheme
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationAddressSchemeFile(locationAddressSchemeId locationAddressSchemeId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationAddressSchemeFileWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a locationAddressScheme
     - POST /beta/locationAddressScheme/{locationAddressSchemeId}/file/{fileName}
     - Adds a file to an existing locationAddressScheme.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationAddressSchemeFileWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a locationAddressScheme by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationAddressSchemeFileByURL(body body: RecordFile, locationAddressSchemeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addLocationAddressSchemeFileByURLWithRequestBuilder(body: body, locationAddressSchemeId: locationAddressSchemeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a locationAddressScheme by URL.
     - POST /beta/locationAddressScheme/{locationAddressSchemeId}/file
     - Adds a file to an existing locationAddressScheme by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationAddressSchemeFileByURLWithRequestBuilder(body body: RecordFile, locationAddressSchemeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/file"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a locationAddressScheme.
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add a tag to 
     - parameter locationAddressSchemeTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationAddressSchemeTag(locationAddressSchemeId locationAddressSchemeId: Int32, locationAddressSchemeTag: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationAddressSchemeTagWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId, locationAddressSchemeTag: locationAddressSchemeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a locationAddressScheme.
     - PUT /beta/locationAddressScheme/{locationAddressSchemeId}/tag/{locationAddressSchemeTag}
     - Adds a tag to an existing locationAddressScheme.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to add a tag to 
     - parameter locationAddressSchemeTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationAddressSchemeTagWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32, locationAddressSchemeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/tag/{locationAddressSchemeTag}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeTag}", withString: "\(locationAddressSchemeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a locationAddressScheme
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationAddressScheme(locationAddressSchemeId locationAddressSchemeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationAddressSchemeWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a locationAddressScheme
     - DELETE /beta/locationAddressScheme/{locationAddressSchemeId}
     - Deletes the locationAddressScheme identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationAddressSchemeWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a locationAddressScheme.
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationAddressSchemeFile(locationAddressSchemeId locationAddressSchemeId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationAddressSchemeFileWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a locationAddressScheme.
     - DELETE /beta/locationAddressScheme/{locationAddressSchemeId}/file/{fileId}
     - Deletes an existing locationAddressScheme file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationAddressSchemeFileWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a locationAddressScheme.
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to remove tag from 
     - parameter locationAddressSchemeTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationAddressSchemeTag(locationAddressSchemeId locationAddressSchemeId: Int32, locationAddressSchemeTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationAddressSchemeTagWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId, locationAddressSchemeTag: locationAddressSchemeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a locationAddressScheme.
     - DELETE /beta/locationAddressScheme/{locationAddressSchemeId}/tag/{locationAddressSchemeTag}
     - Deletes an existing locationAddressScheme tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to remove tag from 
     - parameter locationAddressSchemeTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationAddressSchemeTagWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32, locationAddressSchemeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/tag/{locationAddressSchemeTag}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeTag}", withString: "\(locationAddressSchemeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a locationAddressScheme by id
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLocationAddressSchemeById(locationAddressSchemeId locationAddressSchemeId: Int32, completion: ((data: LocationAddressScheme?, error: ErrorType?) -> Void)) {
        getDuplicateLocationAddressSchemeByIdWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a locationAddressScheme by id
     - GET /beta/locationAddressScheme/duplicate/{locationAddressSchemeId}
     - Returns a duplicated locationAddressScheme identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "formatString" : "formatString",
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationNamingScheme" : "locationNamingScheme",
  "bayNumberZeroPadded" : false,
  "customFields" : {
    "key" : "{}"
  },
  "aisleNumberZeroPadded" : false,
  "locationNumberZeroPadded" : false,
  "levelNumberZeroPadded" : false,
  "levelNumberMinimumNumberOfDigits" : 5,
  "bayNumberMinimumNumberOfDigits" : 2,
  "name" : "name",
  "levelNamingScheme" : "levelNamingScheme",
  "bayNamingScheme" : "bayNamingScheme",
  "id" : 0,
  "aisleNamingScheme" : "aisleNamingScheme",
  "locationNumberMinimumNumberOfDigits" : 1,
  "aisleNumberMinimumNumberOfDigits" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to be duplicated. 

     - returns: RequestBuilder<LocationAddressScheme> 
     */
    public class func getDuplicateLocationAddressSchemeByIdWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32) -> RequestBuilder<LocationAddressScheme> {
        var path = "/beta/locationAddressScheme/duplicate/{locationAddressSchemeId}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LocationAddressScheme>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search locationAddressSchemes by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationAddressSchemeByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [LocationAddressScheme]?, error: ErrorType?) -> Void)) {
        getLocationAddressSchemeByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search locationAddressSchemes by filter
     - GET /beta/locationAddressScheme/search
     - Returns the list of locationAddressSchemes that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "formatString" : "formatString",
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationNamingScheme" : "locationNamingScheme",
  "bayNumberZeroPadded" : false,
  "customFields" : {
    "key" : "{}"
  },
  "aisleNumberZeroPadded" : false,
  "locationNumberZeroPadded" : false,
  "levelNumberZeroPadded" : false,
  "levelNumberMinimumNumberOfDigits" : 5,
  "bayNumberMinimumNumberOfDigits" : 2,
  "name" : "name",
  "levelNamingScheme" : "levelNamingScheme",
  "bayNamingScheme" : "bayNamingScheme",
  "id" : 0,
  "aisleNamingScheme" : "aisleNamingScheme",
  "locationNumberMinimumNumberOfDigits" : 1,
  "aisleNumberMinimumNumberOfDigits" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "formatString" : "formatString",
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationNamingScheme" : "locationNamingScheme",
  "bayNumberZeroPadded" : false,
  "customFields" : {
    "key" : "{}"
  },
  "aisleNumberZeroPadded" : false,
  "locationNumberZeroPadded" : false,
  "levelNumberZeroPadded" : false,
  "levelNumberMinimumNumberOfDigits" : 5,
  "bayNumberMinimumNumberOfDigits" : 2,
  "name" : "name",
  "levelNamingScheme" : "levelNamingScheme",
  "bayNamingScheme" : "bayNamingScheme",
  "id" : 0,
  "aisleNamingScheme" : "aisleNamingScheme",
  "locationNumberMinimumNumberOfDigits" : 1,
  "aisleNumberMinimumNumberOfDigits" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[LocationAddressScheme]> 
     */
    public class func getLocationAddressSchemeByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[LocationAddressScheme]> {
        let path = "/beta/locationAddressScheme/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[LocationAddressScheme]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a locationAddressScheme by id
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationAddressSchemeById(locationAddressSchemeId locationAddressSchemeId: Int32, completion: ((data: LocationAddressScheme?, error: ErrorType?) -> Void)) {
        getLocationAddressSchemeByIdWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a locationAddressScheme by id
     - GET /beta/locationAddressScheme/{locationAddressSchemeId}
     - Returns the locationAddressScheme identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "formatString" : "formatString",
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationNamingScheme" : "locationNamingScheme",
  "bayNumberZeroPadded" : false,
  "customFields" : {
    "key" : "{}"
  },
  "aisleNumberZeroPadded" : false,
  "locationNumberZeroPadded" : false,
  "levelNumberZeroPadded" : false,
  "levelNumberMinimumNumberOfDigits" : 5,
  "bayNumberMinimumNumberOfDigits" : 2,
  "name" : "name",
  "levelNamingScheme" : "levelNamingScheme",
  "bayNamingScheme" : "bayNamingScheme",
  "id" : 0,
  "aisleNamingScheme" : "aisleNamingScheme",
  "locationNumberMinimumNumberOfDigits" : 1,
  "aisleNumberMinimumNumberOfDigits" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to be returned. 

     - returns: RequestBuilder<LocationAddressScheme> 
     */
    public class func getLocationAddressSchemeByIdWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32) -> RequestBuilder<LocationAddressScheme> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LocationAddressScheme>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a locationAddressScheme.
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationAddressSchemeFiles(locationAddressSchemeId locationAddressSchemeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLocationAddressSchemeFilesWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a locationAddressScheme.
     - GET /beta/locationAddressScheme/{locationAddressSchemeId}/file
     - Get all existing locationAddressScheme files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLocationAddressSchemeFilesWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/file"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a locationAddressScheme.
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationAddressSchemeTags(locationAddressSchemeId locationAddressSchemeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLocationAddressSchemeTagsWithRequestBuilder(locationAddressSchemeId: locationAddressSchemeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a locationAddressScheme.
     - GET /beta/locationAddressScheme/{locationAddressSchemeId}/tag
     - Get all existing locationAddressScheme tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationAddressSchemeId: (path) Id of the locationAddressScheme to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLocationAddressSchemeTagsWithRequestBuilder(locationAddressSchemeId locationAddressSchemeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/locationAddressScheme/{locationAddressSchemeId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{locationAddressSchemeId}", withString: "\(locationAddressSchemeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a locationAddressScheme
     
     - parameter body: (body) LocationAddressScheme to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationAddressScheme(body body: LocationAddressScheme, completion: ((error: ErrorType?) -> Void)) {
        updateLocationAddressSchemeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a locationAddressScheme
     - PUT /beta/locationAddressScheme
     - Updates an existing locationAddressScheme using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LocationAddressScheme to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationAddressSchemeWithRequestBuilder(body body: LocationAddressScheme) -> RequestBuilder<Void> {
        let path = "/beta/locationAddressScheme"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a locationAddressScheme custom fields
     
     - parameter body: (body) LocationAddressScheme to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationAddressSchemeCustomFields(body body: LocationAddressScheme, completion: ((error: ErrorType?) -> Void)) {
        updateLocationAddressSchemeCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a locationAddressScheme custom fields
     - PUT /beta/locationAddressScheme/customFields
     - Updates an existing locationAddressScheme custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LocationAddressScheme to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationAddressSchemeCustomFieldsWithRequestBuilder(body body: LocationAddressScheme) -> RequestBuilder<Void> {
        let path = "/beta/locationAddressScheme/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}