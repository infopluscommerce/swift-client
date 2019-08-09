//
// LegacyLowstockContactAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LegacyLowstockContactAPI: APIBase {
    /**
     Create a legacyLowstockContact
     
     - parameter body: (body) LegacyLowstockContact to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLegacyLowstockContact(body body: LegacyLowstockContact, completion: ((data: LegacyLowstockContact?, error: ErrorType?) -> Void)) {
        addLegacyLowstockContactWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a legacyLowstockContact
     - POST /beta/legacyLowstockContact
     - Inserts a new legacyLowstockContact using the specified data.
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
     
     - parameter body: (body) LegacyLowstockContact to be inserted. 

     - returns: RequestBuilder<LegacyLowstockContact> 
     */
    public class func addLegacyLowstockContactWithRequestBuilder(body body: LegacyLowstockContact) -> RequestBuilder<LegacyLowstockContact> {
        let path = "/beta/legacyLowstockContact"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LegacyLowstockContact>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a legacyLowstockContact
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to add an audit to 
     - parameter legacyLowstockContactAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLegacyLowstockContactAudit(legacyLowstockContactId legacyLowstockContactId: Int32, legacyLowstockContactAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addLegacyLowstockContactAuditWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId, legacyLowstockContactAudit: legacyLowstockContactAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a legacyLowstockContact
     - PUT /beta/legacyLowstockContact/{legacyLowstockContactId}/audit/{legacyLowstockContactAudit}
     - Adds an audit to an existing legacyLowstockContact.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to add an audit to 
     - parameter legacyLowstockContactAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLegacyLowstockContactAuditWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32, legacyLowstockContactAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/legacyLowstockContact/{legacyLowstockContactId}/audit/{legacyLowstockContactAudit}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactAudit}", withString: "\(legacyLowstockContactAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a legacyLowstockContact
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLegacyLowstockContactFile(legacyLowstockContactId legacyLowstockContactId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addLegacyLowstockContactFileWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a legacyLowstockContact
     - POST /beta/legacyLowstockContact/{legacyLowstockContactId}/file/{fileName}
     - Adds a file to an existing legacyLowstockContact.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addLegacyLowstockContactFileWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/legacyLowstockContact/{legacyLowstockContactId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a legacyLowstockContact.
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to add a tag to 
     - parameter legacyLowstockContactTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLegacyLowstockContactTag(legacyLowstockContactId legacyLowstockContactId: Int32, legacyLowstockContactTag: String, completion: ((error: ErrorType?) -> Void)) {
        addLegacyLowstockContactTagWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId, legacyLowstockContactTag: legacyLowstockContactTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a legacyLowstockContact.
     - PUT /beta/legacyLowstockContact/{legacyLowstockContactId}/tag/{legacyLowstockContactTag}
     - Adds a tag to an existing legacyLowstockContact.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to add a tag to 
     - parameter legacyLowstockContactTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLegacyLowstockContactTagWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32, legacyLowstockContactTag: String) -> RequestBuilder<Void> {
        var path = "/beta/legacyLowstockContact/{legacyLowstockContactId}/tag/{legacyLowstockContactTag}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactTag}", withString: "\(legacyLowstockContactTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a legacyLowstockContact
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLegacyLowstockContact(legacyLowstockContactId legacyLowstockContactId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteLegacyLowstockContactWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a legacyLowstockContact
     - DELETE /beta/legacyLowstockContact/{legacyLowstockContactId}
     - Deletes the legacyLowstockContact identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLegacyLowstockContactWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/legacyLowstockContact/{legacyLowstockContactId}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a legacyLowstockContact.
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to remove tag from 
     - parameter legacyLowstockContactTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLegacyLowstockContactTag(legacyLowstockContactId legacyLowstockContactId: Int32, legacyLowstockContactTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteLegacyLowstockContactTagWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId, legacyLowstockContactTag: legacyLowstockContactTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a legacyLowstockContact.
     - DELETE /beta/legacyLowstockContact/{legacyLowstockContactId}/tag/{legacyLowstockContactTag}
     - Deletes an existing legacyLowstockContact tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to remove tag from 
     - parameter legacyLowstockContactTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLegacyLowstockContactTagWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32, legacyLowstockContactTag: String) -> RequestBuilder<Void> {
        var path = "/beta/legacyLowstockContact/{legacyLowstockContactId}/tag/{legacyLowstockContactTag}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactTag}", withString: "\(legacyLowstockContactTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a legacyLowstockContact by id
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLegacyLowstockContactById(legacyLowstockContactId legacyLowstockContactId: Int32, completion: ((data: LegacyLowstockContact?, error: ErrorType?) -> Void)) {
        getDuplicateLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a legacyLowstockContact by id
     - GET /beta/legacyLowstockContact/duplicate/{legacyLowstockContactId}
     - Returns a duplicated legacyLowstockContact identified by the specified id.
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
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be duplicated. 

     - returns: RequestBuilder<LegacyLowstockContact> 
     */
    public class func getDuplicateLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32) -> RequestBuilder<LegacyLowstockContact> {
        var path = "/beta/legacyLowstockContact/duplicate/{legacyLowstockContactId}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LegacyLowstockContact>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search legacyLowstockContacts by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLegacyLowstockContactByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [LegacyLowstockContact]?, error: ErrorType?) -> Void)) {
        getLegacyLowstockContactByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search legacyLowstockContacts by filter
     - GET /beta/legacyLowstockContact/search
     - Returns the list of legacyLowstockContacts that match the given filter.
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

     - returns: RequestBuilder<[LegacyLowstockContact]> 
     */
    public class func getLegacyLowstockContactByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[LegacyLowstockContact]> {
        let path = "/beta/legacyLowstockContact/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[LegacyLowstockContact]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a legacyLowstockContact by id
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLegacyLowstockContactById(legacyLowstockContactId legacyLowstockContactId: Int32, completion: ((data: LegacyLowstockContact?, error: ErrorType?) -> Void)) {
        getLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a legacyLowstockContact by id
     - GET /beta/legacyLowstockContact/{legacyLowstockContactId}
     - Returns the legacyLowstockContact identified by the specified id.
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
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to be returned. 

     - returns: RequestBuilder<LegacyLowstockContact> 
     */
    public class func getLegacyLowstockContactByIdWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32) -> RequestBuilder<LegacyLowstockContact> {
        var path = "/beta/legacyLowstockContact/{legacyLowstockContactId}"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LegacyLowstockContact>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a legacyLowstockContact.
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLegacyLowstockContactTags(legacyLowstockContactId legacyLowstockContactId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLegacyLowstockContactTagsWithRequestBuilder(legacyLowstockContactId: legacyLowstockContactId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a legacyLowstockContact.
     - GET /beta/legacyLowstockContact/{legacyLowstockContactId}/tag
     - Get all existing legacyLowstockContact tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter legacyLowstockContactId: (path) Id of the legacyLowstockContact to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLegacyLowstockContactTagsWithRequestBuilder(legacyLowstockContactId legacyLowstockContactId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/legacyLowstockContact/{legacyLowstockContactId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{legacyLowstockContactId}", withString: "\(legacyLowstockContactId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a legacyLowstockContact
     
     - parameter body: (body) LegacyLowstockContact to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLegacyLowstockContact(body body: LegacyLowstockContact, completion: ((error: ErrorType?) -> Void)) {
        updateLegacyLowstockContactWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a legacyLowstockContact
     - PUT /beta/legacyLowstockContact
     - Updates an existing legacyLowstockContact using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LegacyLowstockContact to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLegacyLowstockContactWithRequestBuilder(body body: LegacyLowstockContact) -> RequestBuilder<Void> {
        let path = "/beta/legacyLowstockContact"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
