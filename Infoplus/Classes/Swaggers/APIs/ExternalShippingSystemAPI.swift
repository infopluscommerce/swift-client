//
// ExternalShippingSystemAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ExternalShippingSystemAPI: APIBase {
    /**
     Create an externalShippingSystem
     
     - parameter body: (body) ExternalShippingSystem to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShippingSystem(body body: ExternalShippingSystem, completion: ((data: ExternalShippingSystem?, error: ErrorType?) -> Void)) {
        addExternalShippingSystemWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an externalShippingSystem
     - POST /beta/externalShippingSystem
     - Inserts a new externalShippingSystem using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "scriptId" : 6,
  "apiKey" : "apiKey",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "systemType" : "systemType",
  "apiSecret" : "apiSecret",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) ExternalShippingSystem to be inserted. 

     - returns: RequestBuilder<ExternalShippingSystem> 
     */
    public class func addExternalShippingSystemWithRequestBuilder(body body: ExternalShippingSystem) -> RequestBuilder<ExternalShippingSystem> {
        let path = "/beta/externalShippingSystem"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ExternalShippingSystem>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an externalShippingSystem
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to add an audit to 
     - parameter externalShippingSystemAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShippingSystemAudit(externalShippingSystemId externalShippingSystemId: Int32, externalShippingSystemAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addExternalShippingSystemAuditWithRequestBuilder(externalShippingSystemId: externalShippingSystemId, externalShippingSystemAudit: externalShippingSystemAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an externalShippingSystem
     - PUT /beta/externalShippingSystem/{externalShippingSystemId}/audit/{externalShippingSystemAudit}
     - Adds an audit to an existing externalShippingSystem.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to add an audit to 
     - parameter externalShippingSystemAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addExternalShippingSystemAuditWithRequestBuilder(externalShippingSystemId externalShippingSystemId: Int32, externalShippingSystemAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/externalShippingSystem/{externalShippingSystemId}/audit/{externalShippingSystemAudit}"
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemId}", withString: "\(externalShippingSystemId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemAudit}", withString: "\(externalShippingSystemAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an externalShippingSystem.
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to add a tag to 
     - parameter externalShippingSystemTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShippingSystemTag(externalShippingSystemId externalShippingSystemId: Int32, externalShippingSystemTag: String, completion: ((error: ErrorType?) -> Void)) {
        addExternalShippingSystemTagWithRequestBuilder(externalShippingSystemId: externalShippingSystemId, externalShippingSystemTag: externalShippingSystemTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an externalShippingSystem.
     - PUT /beta/externalShippingSystem/{externalShippingSystemId}/tag/{externalShippingSystemTag}
     - Adds a tag to an existing externalShippingSystem.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to add a tag to 
     - parameter externalShippingSystemTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addExternalShippingSystemTagWithRequestBuilder(externalShippingSystemId externalShippingSystemId: Int32, externalShippingSystemTag: String) -> RequestBuilder<Void> {
        var path = "/beta/externalShippingSystem/{externalShippingSystemId}/tag/{externalShippingSystemTag}"
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemId}", withString: "\(externalShippingSystemId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemTag}", withString: "\(externalShippingSystemTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an externalShippingSystem
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteExternalShippingSystem(externalShippingSystemId externalShippingSystemId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteExternalShippingSystemWithRequestBuilder(externalShippingSystemId: externalShippingSystemId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an externalShippingSystem
     - DELETE /beta/externalShippingSystem/{externalShippingSystemId}
     - Deletes the externalShippingSystem identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteExternalShippingSystemWithRequestBuilder(externalShippingSystemId externalShippingSystemId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/externalShippingSystem/{externalShippingSystemId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemId}", withString: "\(externalShippingSystemId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an externalShippingSystem.
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to remove tag from 
     - parameter externalShippingSystemTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteExternalShippingSystemTag(externalShippingSystemId externalShippingSystemId: Int32, externalShippingSystemTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteExternalShippingSystemTagWithRequestBuilder(externalShippingSystemId: externalShippingSystemId, externalShippingSystemTag: externalShippingSystemTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an externalShippingSystem.
     - DELETE /beta/externalShippingSystem/{externalShippingSystemId}/tag/{externalShippingSystemTag}
     - Deletes an existing externalShippingSystem tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to remove tag from 
     - parameter externalShippingSystemTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteExternalShippingSystemTagWithRequestBuilder(externalShippingSystemId externalShippingSystemId: Int32, externalShippingSystemTag: String) -> RequestBuilder<Void> {
        var path = "/beta/externalShippingSystem/{externalShippingSystemId}/tag/{externalShippingSystemTag}"
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemId}", withString: "\(externalShippingSystemId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemTag}", withString: "\(externalShippingSystemTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an externalShippingSystem by id
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateExternalShippingSystemById(externalShippingSystemId externalShippingSystemId: Int32, completion: ((data: ExternalShippingSystem?, error: ErrorType?) -> Void)) {
        getDuplicateExternalShippingSystemByIdWithRequestBuilder(externalShippingSystemId: externalShippingSystemId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an externalShippingSystem by id
     - GET /beta/externalShippingSystem/duplicate/{externalShippingSystemId}
     - Returns a duplicated externalShippingSystem identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "scriptId" : 6,
  "apiKey" : "apiKey",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "systemType" : "systemType",
  "apiSecret" : "apiSecret",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to be duplicated. 

     - returns: RequestBuilder<ExternalShippingSystem> 
     */
    public class func getDuplicateExternalShippingSystemByIdWithRequestBuilder(externalShippingSystemId externalShippingSystemId: Int32) -> RequestBuilder<ExternalShippingSystem> {
        var path = "/beta/externalShippingSystem/duplicate/{externalShippingSystemId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemId}", withString: "\(externalShippingSystemId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ExternalShippingSystem>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search externalShippingSystems by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShippingSystemByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ExternalShippingSystem]?, error: ErrorType?) -> Void)) {
        getExternalShippingSystemByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search externalShippingSystems by filter
     - GET /beta/externalShippingSystem/search
     - Returns the list of externalShippingSystems that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "scriptId" : 6,
  "apiKey" : "apiKey",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "systemType" : "systemType",
  "apiSecret" : "apiSecret",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "scriptId" : 6,
  "apiKey" : "apiKey",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "systemType" : "systemType",
  "apiSecret" : "apiSecret",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ExternalShippingSystem]> 
     */
    public class func getExternalShippingSystemByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ExternalShippingSystem]> {
        let path = "/beta/externalShippingSystem/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ExternalShippingSystem]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an externalShippingSystem by id
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShippingSystemById(externalShippingSystemId externalShippingSystemId: Int32, completion: ((data: ExternalShippingSystem?, error: ErrorType?) -> Void)) {
        getExternalShippingSystemByIdWithRequestBuilder(externalShippingSystemId: externalShippingSystemId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an externalShippingSystem by id
     - GET /beta/externalShippingSystem/{externalShippingSystemId}
     - Returns the externalShippingSystem identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "scriptId" : 6,
  "apiKey" : "apiKey",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "systemType" : "systemType",
  "apiSecret" : "apiSecret",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to be returned. 

     - returns: RequestBuilder<ExternalShippingSystem> 
     */
    public class func getExternalShippingSystemByIdWithRequestBuilder(externalShippingSystemId externalShippingSystemId: Int32) -> RequestBuilder<ExternalShippingSystem> {
        var path = "/beta/externalShippingSystem/{externalShippingSystemId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemId}", withString: "\(externalShippingSystemId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ExternalShippingSystem>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an externalShippingSystem.
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShippingSystemTags(externalShippingSystemId externalShippingSystemId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getExternalShippingSystemTagsWithRequestBuilder(externalShippingSystemId: externalShippingSystemId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an externalShippingSystem.
     - GET /beta/externalShippingSystem/{externalShippingSystemId}/tag
     - Get all existing externalShippingSystem tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShippingSystemId: (path) Id of the externalShippingSystem to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getExternalShippingSystemTagsWithRequestBuilder(externalShippingSystemId externalShippingSystemId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/externalShippingSystem/{externalShippingSystemId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{externalShippingSystemId}", withString: "\(externalShippingSystemId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an externalShippingSystem
     
     - parameter body: (body) ExternalShippingSystem to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateExternalShippingSystem(body body: ExternalShippingSystem, completion: ((error: ErrorType?) -> Void)) {
        updateExternalShippingSystemWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an externalShippingSystem
     - PUT /beta/externalShippingSystem
     - Updates an existing externalShippingSystem using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ExternalShippingSystem to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateExternalShippingSystemWithRequestBuilder(body body: ExternalShippingSystem) -> RequestBuilder<Void> {
        let path = "/beta/externalShippingSystem"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an externalShippingSystem custom fields
     
     - parameter body: (body) ExternalShippingSystem to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateExternalShippingSystemCustomFields(body body: ExternalShippingSystem, completion: ((error: ErrorType?) -> Void)) {
        updateExternalShippingSystemCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an externalShippingSystem custom fields
     - PUT /beta/externalShippingSystem/customFields
     - Updates an existing externalShippingSystem custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ExternalShippingSystem to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateExternalShippingSystemCustomFieldsWithRequestBuilder(body body: ExternalShippingSystem) -> RequestBuilder<Void> {
        let path = "/beta/externalShippingSystem/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
