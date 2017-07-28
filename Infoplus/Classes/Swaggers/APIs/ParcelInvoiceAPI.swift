//
// ParcelInvoiceAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ParcelInvoiceAPI: APIBase {
    /**
     
     Add new audit for a parcelInvoice
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to add an audit to 
     - parameter parcelInvoiceAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addParcelInvoiceAudit(parcelInvoiceId parcelInvoiceId: Int, parcelInvoiceAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addParcelInvoiceAuditWithRequestBuilder(parcelInvoiceId: parcelInvoiceId, parcelInvoiceAudit: parcelInvoiceAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a parcelInvoice
     
     - PUT /beta/parcelInvoice/{parcelInvoiceId}/audit/{parcelInvoiceAudit}
     - Adds an audit to an existing parcelInvoice.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to add an audit to 
     - parameter parcelInvoiceAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addParcelInvoiceAuditWithRequestBuilder(parcelInvoiceId parcelInvoiceId: Int, parcelInvoiceAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoice/{parcelInvoiceId}/audit/{parcelInvoiceAudit}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceId}", withString: "\(parcelInvoiceId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceAudit}", withString: "\(parcelInvoiceAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a parcelInvoice.
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to add a tag to 
     - parameter parcelInvoiceTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addParcelInvoiceTag(parcelInvoiceId parcelInvoiceId: Int, parcelInvoiceTag: String, completion: ((error: ErrorType?) -> Void)) {
        addParcelInvoiceTagWithRequestBuilder(parcelInvoiceId: parcelInvoiceId, parcelInvoiceTag: parcelInvoiceTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a parcelInvoice.
     
     - PUT /beta/parcelInvoice/{parcelInvoiceId}/tag/{parcelInvoiceTag}
     - Adds a tag to an existing parcelInvoice.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to add a tag to 
     - parameter parcelInvoiceTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addParcelInvoiceTagWithRequestBuilder(parcelInvoiceId parcelInvoiceId: Int, parcelInvoiceTag: String) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoice/{parcelInvoiceId}/tag/{parcelInvoiceTag}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceId}", withString: "\(parcelInvoiceId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceTag}", withString: "\(parcelInvoiceTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a parcelInvoice
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteParcelInvoice(parcelInvoiceId parcelInvoiceId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteParcelInvoiceWithRequestBuilder(parcelInvoiceId: parcelInvoiceId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a parcelInvoice
     
     - DELETE /beta/parcelInvoice/{parcelInvoiceId}
     - Deletes the parcelInvoice identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteParcelInvoiceWithRequestBuilder(parcelInvoiceId parcelInvoiceId: Int) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoice/{parcelInvoiceId}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceId}", withString: "\(parcelInvoiceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a parcelInvoice.
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to remove tag from 
     - parameter parcelInvoiceTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteParcelInvoiceTag(parcelInvoiceId parcelInvoiceId: Int, parcelInvoiceTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteParcelInvoiceTagWithRequestBuilder(parcelInvoiceId: parcelInvoiceId, parcelInvoiceTag: parcelInvoiceTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a parcelInvoice.
     
     - DELETE /beta/parcelInvoice/{parcelInvoiceId}/tag/{parcelInvoiceTag}
     - Deletes an existing parcelInvoice tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to remove tag from 
     - parameter parcelInvoiceTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteParcelInvoiceTagWithRequestBuilder(parcelInvoiceId parcelInvoiceId: Int, parcelInvoiceTag: String) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoice/{parcelInvoiceId}/tag/{parcelInvoiceTag}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceId}", withString: "\(parcelInvoiceId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceTag}", withString: "\(parcelInvoiceTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a parcelInvoice by id
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateParcelInvoiceById(parcelInvoiceId parcelInvoiceId: Int, completion: ((data: ParcelInvoice?, error: ErrorType?) -> Void)) {
        getDuplicateParcelInvoiceByIdWithRequestBuilder(parcelInvoiceId: parcelInvoiceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a parcelInvoice by id
     
     - GET /beta/parcelInvoice/duplicate/{parcelInvoiceId}
     - Returns a duplicated parcelInvoice identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "carrier" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "customFields" : {
    "key" : "{}"
  },
  "accountNo" : "aeiou",
  "invoiceAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123,
  "invoiceNo" : "aeiou",
  "invoiceDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to be duplicated. 

     - returns: RequestBuilder<ParcelInvoice> 
     */
    public class func getDuplicateParcelInvoiceByIdWithRequestBuilder(parcelInvoiceId parcelInvoiceId: Int) -> RequestBuilder<ParcelInvoice> {
        var path = "/beta/parcelInvoice/duplicate/{parcelInvoiceId}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceId}", withString: "\(parcelInvoiceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ParcelInvoice>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search parcelInvoices by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getParcelInvoiceByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [ParcelInvoice]?, error: ErrorType?) -> Void)) {
        getParcelInvoiceByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search parcelInvoices by filter
     
     - GET /beta/parcelInvoice/search
     - Returns the list of parcelInvoices that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "carrier" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "customFields" : {
    "key" : "{}"
  },
  "accountNo" : "aeiou",
  "invoiceAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123,
  "invoiceNo" : "aeiou",
  "invoiceDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ParcelInvoice]> 
     */
    public class func getParcelInvoiceByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[ParcelInvoice]> {
        let path = "/beta/parcelInvoice/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ParcelInvoice]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a parcelInvoice by id
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getParcelInvoiceById(parcelInvoiceId parcelInvoiceId: Int, completion: ((data: ParcelInvoice?, error: ErrorType?) -> Void)) {
        getParcelInvoiceByIdWithRequestBuilder(parcelInvoiceId: parcelInvoiceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a parcelInvoice by id
     
     - GET /beta/parcelInvoice/{parcelInvoiceId}
     - Returns the parcelInvoice identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "carrier" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "customFields" : {
    "key" : "{}"
  },
  "accountNo" : "aeiou",
  "invoiceAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123,
  "invoiceNo" : "aeiou",
  "invoiceDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to be returned. 

     - returns: RequestBuilder<ParcelInvoice> 
     */
    public class func getParcelInvoiceByIdWithRequestBuilder(parcelInvoiceId parcelInvoiceId: Int) -> RequestBuilder<ParcelInvoice> {
        var path = "/beta/parcelInvoice/{parcelInvoiceId}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceId}", withString: "\(parcelInvoiceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ParcelInvoice>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a parcelInvoice.
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getParcelInvoiceTags(parcelInvoiceId parcelInvoiceId: Int, completion: ((error: ErrorType?) -> Void)) {
        getParcelInvoiceTagsWithRequestBuilder(parcelInvoiceId: parcelInvoiceId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a parcelInvoice.
     
     - GET /beta/parcelInvoice/{parcelInvoiceId}/tag
     - Get all existing parcelInvoice tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceId: (path) Id of the parcelInvoice to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getParcelInvoiceTagsWithRequestBuilder(parcelInvoiceId parcelInvoiceId: Int) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoice/{parcelInvoiceId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceId}", withString: "\(parcelInvoiceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
