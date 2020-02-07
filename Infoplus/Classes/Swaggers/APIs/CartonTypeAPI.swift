//
// CartonTypeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CartonTypeAPI: APIBase {
    /**
     Create a cartonType
     
     - parameter body: (body) CartonType to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonType(body body: CartonType, completion: ((data: CartonType?, error: ErrorType?) -> Void)) {
        addCartonTypeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a cartonType
     - POST /beta/cartonType
     - Inserts a new cartonType using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "lengthIn" : 6.02745618307040320615897144307382404804229736328125,
  "widthIn" : 1.46581298050294517310021547018550336360931396484375,
  "weightLbs" : 9.301444243932575517419536481611430644989013671875,
  "customFields" : {
    "key" : "{}"
  },
  "abbreviation" : "abbreviation",
  "isActive" : false,
  "type" : "type",
  "innerWidthIn" : 2.3021358869347654518833223846741020679473876953125,
  "innerLengthIn" : 5.63737665663332876420099637471139430999755859375,
  "heightIn" : 5.962133916683182377482808078639209270477294921875,
  "name" : "name",
  "predefinedPackageTypeId" : 2,
  "id" : 0,
  "innerHeightIn" : 7.061401241503109105224211816675961017608642578125,
  "lobId" : 3
}}]
     
     - parameter body: (body) CartonType to be inserted. 

     - returns: RequestBuilder<CartonType> 
     */
    public class func addCartonTypeWithRequestBuilder(body body: CartonType) -> RequestBuilder<CartonType> {
        let path = "/beta/cartonType"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CartonType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a cartonType
     
     - parameter cartonTypeId: (path) Id of the cartonType to add an audit to 
     - parameter cartonTypeAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonTypeAudit(cartonTypeId cartonTypeId: Int32, cartonTypeAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addCartonTypeAuditWithRequestBuilder(cartonTypeId: cartonTypeId, cartonTypeAudit: cartonTypeAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a cartonType
     - PUT /beta/cartonType/{cartonTypeId}/audit/{cartonTypeAudit}
     - Adds an audit to an existing cartonType.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to add an audit to 
     - parameter cartonTypeAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonTypeAuditWithRequestBuilder(cartonTypeId cartonTypeId: Int32, cartonTypeAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/audit/{cartonTypeAudit}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeAudit}", withString: "\(cartonTypeAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a cartonType
     
     - parameter cartonTypeId: (path) Id of the cartonType to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonTypeFile(cartonTypeId cartonTypeId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addCartonTypeFileWithRequestBuilder(cartonTypeId: cartonTypeId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a cartonType
     - POST /beta/cartonType/{cartonTypeId}/file/{fileName}
     - Adds a file to an existing cartonType.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonTypeFileWithRequestBuilder(cartonTypeId cartonTypeId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a cartonType by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter cartonTypeId: (path) Id of the cartonType to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonTypeFileByURL(body body: RecordFile, cartonTypeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addCartonTypeFileByURLWithRequestBuilder(body: body, cartonTypeId: cartonTypeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a cartonType by URL.
     - POST /beta/cartonType/{cartonTypeId}/file
     - Adds a file to an existing cartonType by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter cartonTypeId: (path) Id of the cartonType to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonTypeFileByURLWithRequestBuilder(body body: RecordFile, cartonTypeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/file"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a cartonType.
     
     - parameter cartonTypeId: (path) Id of the cartonType to add a tag to 
     - parameter cartonTypeTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonTypeTag(cartonTypeId cartonTypeId: Int32, cartonTypeTag: String, completion: ((error: ErrorType?) -> Void)) {
        addCartonTypeTagWithRequestBuilder(cartonTypeId: cartonTypeId, cartonTypeTag: cartonTypeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a cartonType.
     - PUT /beta/cartonType/{cartonTypeId}/tag/{cartonTypeTag}
     - Adds a tag to an existing cartonType.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to add a tag to 
     - parameter cartonTypeTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonTypeTagWithRequestBuilder(cartonTypeId cartonTypeId: Int32, cartonTypeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/tag/{cartonTypeTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeTag}", withString: "\(cartonTypeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a cartonType
     
     - parameter cartonTypeId: (path) Id of the cartonType to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartonType(cartonTypeId cartonTypeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCartonTypeWithRequestBuilder(cartonTypeId: cartonTypeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a cartonType
     - DELETE /beta/cartonType/{cartonTypeId}
     - Deletes the cartonType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartonTypeWithRequestBuilder(cartonTypeId cartonTypeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a cartonType.
     
     - parameter cartonTypeId: (path) Id of the cartonType to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartonTypeFile(cartonTypeId cartonTypeId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCartonTypeFileWithRequestBuilder(cartonTypeId: cartonTypeId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a cartonType.
     - DELETE /beta/cartonType/{cartonTypeId}/file/{fileId}
     - Deletes an existing cartonType file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartonTypeFileWithRequestBuilder(cartonTypeId cartonTypeId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a cartonType.
     
     - parameter cartonTypeId: (path) Id of the cartonType to remove tag from 
     - parameter cartonTypeTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartonTypeTag(cartonTypeId cartonTypeId: Int32, cartonTypeTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCartonTypeTagWithRequestBuilder(cartonTypeId: cartonTypeId, cartonTypeTag: cartonTypeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a cartonType.
     - DELETE /beta/cartonType/{cartonTypeId}/tag/{cartonTypeTag}
     - Deletes an existing cartonType tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to remove tag from 
     - parameter cartonTypeTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartonTypeTagWithRequestBuilder(cartonTypeId cartonTypeId: Int32, cartonTypeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/tag/{cartonTypeTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeTag}", withString: "\(cartonTypeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search cartonTypes by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonTypeByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [CartonType]?, error: ErrorType?) -> Void)) {
        getCartonTypeByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search cartonTypes by filter
     - GET /beta/cartonType/search
     - Returns the list of cartonTypes that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "lengthIn" : 6.02745618307040320615897144307382404804229736328125,
  "widthIn" : 1.46581298050294517310021547018550336360931396484375,
  "weightLbs" : 9.301444243932575517419536481611430644989013671875,
  "customFields" : {
    "key" : "{}"
  },
  "abbreviation" : "abbreviation",
  "isActive" : false,
  "type" : "type",
  "innerWidthIn" : 2.3021358869347654518833223846741020679473876953125,
  "innerLengthIn" : 5.63737665663332876420099637471139430999755859375,
  "heightIn" : 5.962133916683182377482808078639209270477294921875,
  "name" : "name",
  "predefinedPackageTypeId" : 2,
  "id" : 0,
  "innerHeightIn" : 7.061401241503109105224211816675961017608642578125,
  "lobId" : 3
}, {
  "lengthIn" : 6.02745618307040320615897144307382404804229736328125,
  "widthIn" : 1.46581298050294517310021547018550336360931396484375,
  "weightLbs" : 9.301444243932575517419536481611430644989013671875,
  "customFields" : {
    "key" : "{}"
  },
  "abbreviation" : "abbreviation",
  "isActive" : false,
  "type" : "type",
  "innerWidthIn" : 2.3021358869347654518833223846741020679473876953125,
  "innerLengthIn" : 5.63737665663332876420099637471139430999755859375,
  "heightIn" : 5.962133916683182377482808078639209270477294921875,
  "name" : "name",
  "predefinedPackageTypeId" : 2,
  "id" : 0,
  "innerHeightIn" : 7.061401241503109105224211816675961017608642578125,
  "lobId" : 3
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[CartonType]> 
     */
    public class func getCartonTypeByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[CartonType]> {
        let path = "/beta/cartonType/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CartonType]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a cartonType by id
     
     - parameter cartonTypeId: (path) Id of the cartonType to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonTypeById(cartonTypeId cartonTypeId: Int32, completion: ((data: CartonType?, error: ErrorType?) -> Void)) {
        getCartonTypeByIdWithRequestBuilder(cartonTypeId: cartonTypeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a cartonType by id
     - GET /beta/cartonType/{cartonTypeId}
     - Returns the cartonType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "lengthIn" : 6.02745618307040320615897144307382404804229736328125,
  "widthIn" : 1.46581298050294517310021547018550336360931396484375,
  "weightLbs" : 9.301444243932575517419536481611430644989013671875,
  "customFields" : {
    "key" : "{}"
  },
  "abbreviation" : "abbreviation",
  "isActive" : false,
  "type" : "type",
  "innerWidthIn" : 2.3021358869347654518833223846741020679473876953125,
  "innerLengthIn" : 5.63737665663332876420099637471139430999755859375,
  "heightIn" : 5.962133916683182377482808078639209270477294921875,
  "name" : "name",
  "predefinedPackageTypeId" : 2,
  "id" : 0,
  "innerHeightIn" : 7.061401241503109105224211816675961017608642578125,
  "lobId" : 3
}}]
     
     - parameter cartonTypeId: (path) Id of the cartonType to be returned. 

     - returns: RequestBuilder<CartonType> 
     */
    public class func getCartonTypeByIdWithRequestBuilder(cartonTypeId cartonTypeId: Int32) -> RequestBuilder<CartonType> {
        var path = "/beta/cartonType/{cartonTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CartonType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a cartonType.
     
     - parameter cartonTypeId: (path) Id of the cartonType to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonTypeFiles(cartonTypeId cartonTypeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCartonTypeFilesWithRequestBuilder(cartonTypeId: cartonTypeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a cartonType.
     - GET /beta/cartonType/{cartonTypeId}/file
     - Get all existing cartonType files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCartonTypeFilesWithRequestBuilder(cartonTypeId cartonTypeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/file"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a cartonType.
     
     - parameter cartonTypeId: (path) Id of the cartonType to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonTypeTags(cartonTypeId cartonTypeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCartonTypeTagsWithRequestBuilder(cartonTypeId: cartonTypeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a cartonType.
     - GET /beta/cartonType/{cartonTypeId}/tag
     - Get all existing cartonType tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonTypeId: (path) Id of the cartonType to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCartonTypeTagsWithRequestBuilder(cartonTypeId cartonTypeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/cartonType/{cartonTypeId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a cartonType by id
     
     - parameter cartonTypeId: (path) Id of the cartonType to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateCartonTypeById(cartonTypeId cartonTypeId: Int32, completion: ((data: CartonType?, error: ErrorType?) -> Void)) {
        getDuplicateCartonTypeByIdWithRequestBuilder(cartonTypeId: cartonTypeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a cartonType by id
     - GET /beta/cartonType/duplicate/{cartonTypeId}
     - Returns a duplicated cartonType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "lengthIn" : 6.02745618307040320615897144307382404804229736328125,
  "widthIn" : 1.46581298050294517310021547018550336360931396484375,
  "weightLbs" : 9.301444243932575517419536481611430644989013671875,
  "customFields" : {
    "key" : "{}"
  },
  "abbreviation" : "abbreviation",
  "isActive" : false,
  "type" : "type",
  "innerWidthIn" : 2.3021358869347654518833223846741020679473876953125,
  "innerLengthIn" : 5.63737665663332876420099637471139430999755859375,
  "heightIn" : 5.962133916683182377482808078639209270477294921875,
  "name" : "name",
  "predefinedPackageTypeId" : 2,
  "id" : 0,
  "innerHeightIn" : 7.061401241503109105224211816675961017608642578125,
  "lobId" : 3
}}]
     
     - parameter cartonTypeId: (path) Id of the cartonType to be duplicated. 

     - returns: RequestBuilder<CartonType> 
     */
    public class func getDuplicateCartonTypeByIdWithRequestBuilder(cartonTypeId cartonTypeId: Int32) -> RequestBuilder<CartonType> {
        var path = "/beta/cartonType/duplicate/{cartonTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonTypeId}", withString: "\(cartonTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CartonType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a cartonType
     
     - parameter body: (body) CartonType to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCartonType(body body: CartonType, completion: ((error: ErrorType?) -> Void)) {
        updateCartonTypeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a cartonType
     - PUT /beta/cartonType
     - Updates an existing cartonType using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) CartonType to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCartonTypeWithRequestBuilder(body body: CartonType) -> RequestBuilder<Void> {
        let path = "/beta/cartonType"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a cartonType custom fields
     
     - parameter body: (body) CartonType to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCartonTypeCustomFields(body body: CartonType, completion: ((error: ErrorType?) -> Void)) {
        updateCartonTypeCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a cartonType custom fields
     - PUT /beta/cartonType/customFields
     - Updates an existing cartonType custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) CartonType to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCartonTypeCustomFieldsWithRequestBuilder(body body: CartonType) -> RequestBuilder<Void> {
        let path = "/beta/cartonType/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
