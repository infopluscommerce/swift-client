//
// ThirdPartyParcelAccountAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ThirdPartyParcelAccountAPI: APIBase {
    /**
     Create a thirdPartyParcelAccount
     
     - parameter body: (body) ThirdPartyParcelAccount to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addThirdPartyParcelAccount(body body: ThirdPartyParcelAccount, completion: ((data: ThirdPartyParcelAccount?, error: ErrorType?) -> Void)) {
        addThirdPartyParcelAccountWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a thirdPartyParcelAccount
     - POST /beta/thirdPartyParcelAccount
     - Inserts a new thirdPartyParcelAccount using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "zipCode" : "zipCode",
  "street3" : "street3",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "accountName" : "accountName",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "active" : "active",
  "billingCompany" : "billingCompany",
  "carrier" : "carrier",
  "phone" : "phone",
  "accountNo" : "accountNo",
  "attention" : "attention",
  "street1" : "street1",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) ThirdPartyParcelAccount to be inserted. 

     - returns: RequestBuilder<ThirdPartyParcelAccount> 
     */
    public class func addThirdPartyParcelAccountWithRequestBuilder(body body: ThirdPartyParcelAccount) -> RequestBuilder<ThirdPartyParcelAccount> {
        let path = "/beta/thirdPartyParcelAccount"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ThirdPartyParcelAccount>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a thirdPartyParcelAccount
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add an audit to 
     - parameter thirdPartyParcelAccountAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addThirdPartyParcelAccountAudit(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, thirdPartyParcelAccountAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addThirdPartyParcelAccountAuditWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId, thirdPartyParcelAccountAudit: thirdPartyParcelAccountAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a thirdPartyParcelAccount
     - PUT /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/audit/{thirdPartyParcelAccountAudit}
     - Adds an audit to an existing thirdPartyParcelAccount.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add an audit to 
     - parameter thirdPartyParcelAccountAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addThirdPartyParcelAccountAuditWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, thirdPartyParcelAccountAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/audit/{thirdPartyParcelAccountAudit}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountAudit}", withString: "\(thirdPartyParcelAccountAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a thirdPartyParcelAccount
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addThirdPartyParcelAccountFile(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addThirdPartyParcelAccountFileWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a thirdPartyParcelAccount
     - POST /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file/{fileName}
     - Adds a file to an existing thirdPartyParcelAccount.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addThirdPartyParcelAccountFileWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a thirdPartyParcelAccount by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addThirdPartyParcelAccountFileByURL(body body: RecordFile, thirdPartyParcelAccountId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addThirdPartyParcelAccountFileByURLWithRequestBuilder(body: body, thirdPartyParcelAccountId: thirdPartyParcelAccountId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a thirdPartyParcelAccount by URL.
     - POST /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file
     - Adds a file to an existing thirdPartyParcelAccount by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addThirdPartyParcelAccountFileByURLWithRequestBuilder(body body: RecordFile, thirdPartyParcelAccountId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a thirdPartyParcelAccount.
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add a tag to 
     - parameter thirdPartyParcelAccountTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addThirdPartyParcelAccountTag(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, thirdPartyParcelAccountTag: String, completion: ((error: ErrorType?) -> Void)) {
        addThirdPartyParcelAccountTagWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId, thirdPartyParcelAccountTag: thirdPartyParcelAccountTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a thirdPartyParcelAccount.
     - PUT /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/tag/{thirdPartyParcelAccountTag}
     - Adds a tag to an existing thirdPartyParcelAccount.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to add a tag to 
     - parameter thirdPartyParcelAccountTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addThirdPartyParcelAccountTagWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, thirdPartyParcelAccountTag: String) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/tag/{thirdPartyParcelAccountTag}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountTag}", withString: "\(thirdPartyParcelAccountTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a thirdPartyParcelAccount
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteThirdPartyParcelAccount(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteThirdPartyParcelAccountWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a thirdPartyParcelAccount
     - DELETE /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}
     - Deletes the thirdPartyParcelAccount identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteThirdPartyParcelAccountWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a thirdPartyParcelAccount.
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteThirdPartyParcelAccountFile(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteThirdPartyParcelAccountFileWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a thirdPartyParcelAccount.
     - DELETE /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file/{fileId}
     - Deletes an existing thirdPartyParcelAccount file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteThirdPartyParcelAccountFileWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a thirdPartyParcelAccount.
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to remove tag from 
     - parameter thirdPartyParcelAccountTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteThirdPartyParcelAccountTag(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, thirdPartyParcelAccountTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteThirdPartyParcelAccountTagWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId, thirdPartyParcelAccountTag: thirdPartyParcelAccountTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a thirdPartyParcelAccount.
     - DELETE /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/tag/{thirdPartyParcelAccountTag}
     - Deletes an existing thirdPartyParcelAccount tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to remove tag from 
     - parameter thirdPartyParcelAccountTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteThirdPartyParcelAccountTagWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, thirdPartyParcelAccountTag: String) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/tag/{thirdPartyParcelAccountTag}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountTag}", withString: "\(thirdPartyParcelAccountTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a thirdPartyParcelAccount by id
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateThirdPartyParcelAccountById(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, completion: ((data: ThirdPartyParcelAccount?, error: ErrorType?) -> Void)) {
        getDuplicateThirdPartyParcelAccountByIdWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a thirdPartyParcelAccount by id
     - GET /beta/thirdPartyParcelAccount/duplicate/{thirdPartyParcelAccountId}
     - Returns a duplicated thirdPartyParcelAccount identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "zipCode" : "zipCode",
  "street3" : "street3",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "accountName" : "accountName",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "active" : "active",
  "billingCompany" : "billingCompany",
  "carrier" : "carrier",
  "phone" : "phone",
  "accountNo" : "accountNo",
  "attention" : "attention",
  "street1" : "street1",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to be duplicated. 

     - returns: RequestBuilder<ThirdPartyParcelAccount> 
     */
    public class func getDuplicateThirdPartyParcelAccountByIdWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32) -> RequestBuilder<ThirdPartyParcelAccount> {
        var path = "/beta/thirdPartyParcelAccount/duplicate/{thirdPartyParcelAccountId}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ThirdPartyParcelAccount>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search thirdPartyParcelAccounts by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getThirdPartyParcelAccountByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ThirdPartyParcelAccount]?, error: ErrorType?) -> Void)) {
        getThirdPartyParcelAccountByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search thirdPartyParcelAccounts by filter
     - GET /beta/thirdPartyParcelAccount/search
     - Returns the list of thirdPartyParcelAccounts that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "country" : "country",
  "zipCode" : "zipCode",
  "street3" : "street3",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "accountName" : "accountName",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "active" : "active",
  "billingCompany" : "billingCompany",
  "carrier" : "carrier",
  "phone" : "phone",
  "accountNo" : "accountNo",
  "attention" : "attention",
  "street1" : "street1",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "country" : "country",
  "zipCode" : "zipCode",
  "street3" : "street3",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "accountName" : "accountName",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "active" : "active",
  "billingCompany" : "billingCompany",
  "carrier" : "carrier",
  "phone" : "phone",
  "accountNo" : "accountNo",
  "attention" : "attention",
  "street1" : "street1",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ThirdPartyParcelAccount]> 
     */
    public class func getThirdPartyParcelAccountByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ThirdPartyParcelAccount]> {
        let path = "/beta/thirdPartyParcelAccount/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ThirdPartyParcelAccount]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a thirdPartyParcelAccount by id
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getThirdPartyParcelAccountById(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, completion: ((data: ThirdPartyParcelAccount?, error: ErrorType?) -> Void)) {
        getThirdPartyParcelAccountByIdWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a thirdPartyParcelAccount by id
     - GET /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}
     - Returns the thirdPartyParcelAccount identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "zipCode" : "zipCode",
  "street3" : "street3",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "accountName" : "accountName",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "active" : "active",
  "billingCompany" : "billingCompany",
  "carrier" : "carrier",
  "phone" : "phone",
  "accountNo" : "accountNo",
  "attention" : "attention",
  "street1" : "street1",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to be returned. 

     - returns: RequestBuilder<ThirdPartyParcelAccount> 
     */
    public class func getThirdPartyParcelAccountByIdWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32) -> RequestBuilder<ThirdPartyParcelAccount> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ThirdPartyParcelAccount>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a thirdPartyParcelAccount.
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getThirdPartyParcelAccountFiles(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getThirdPartyParcelAccountFilesWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a thirdPartyParcelAccount.
     - GET /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file
     - Get all existing thirdPartyParcelAccount files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getThirdPartyParcelAccountFilesWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/file"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a thirdPartyParcelAccount.
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getThirdPartyParcelAccountTags(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getThirdPartyParcelAccountTagsWithRequestBuilder(thirdPartyParcelAccountId: thirdPartyParcelAccountId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a thirdPartyParcelAccount.
     - GET /beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/tag
     - Get all existing thirdPartyParcelAccount tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter thirdPartyParcelAccountId: (path) Id of the thirdPartyParcelAccount to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getThirdPartyParcelAccountTagsWithRequestBuilder(thirdPartyParcelAccountId thirdPartyParcelAccountId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/thirdPartyParcelAccount/{thirdPartyParcelAccountId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{thirdPartyParcelAccountId}", withString: "\(thirdPartyParcelAccountId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a thirdPartyParcelAccount
     
     - parameter body: (body) ThirdPartyParcelAccount to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateThirdPartyParcelAccount(body body: ThirdPartyParcelAccount, completion: ((error: ErrorType?) -> Void)) {
        updateThirdPartyParcelAccountWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a thirdPartyParcelAccount
     - PUT /beta/thirdPartyParcelAccount
     - Updates an existing thirdPartyParcelAccount using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ThirdPartyParcelAccount to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateThirdPartyParcelAccountWithRequestBuilder(body body: ThirdPartyParcelAccount) -> RequestBuilder<Void> {
        let path = "/beta/thirdPartyParcelAccount"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a thirdPartyParcelAccount custom fields
     
     - parameter body: (body) ThirdPartyParcelAccount to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateThirdPartyParcelAccountCustomFields(body body: ThirdPartyParcelAccount, completion: ((error: ErrorType?) -> Void)) {
        updateThirdPartyParcelAccountCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a thirdPartyParcelAccount custom fields
     - PUT /beta/thirdPartyParcelAccount/customFields
     - Updates an existing thirdPartyParcelAccount custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ThirdPartyParcelAccount to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateThirdPartyParcelAccountCustomFieldsWithRequestBuilder(body body: ThirdPartyParcelAccount) -> RequestBuilder<Void> {
        let path = "/beta/thirdPartyParcelAccount/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}