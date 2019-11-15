//
// InvoiceWorksheetLineDetailAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InvoiceWorksheetLineDetailAPI: APIBase {
    /**
     Add new audit for an invoiceWorksheetLineDetail
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to add an audit to 
     - parameter invoiceWorksheetLineDetailAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetLineDetailAudit(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, invoiceWorksheetLineDetailAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetLineDetailAuditWithRequestBuilder(invoiceWorksheetLineDetailId: invoiceWorksheetLineDetailId, invoiceWorksheetLineDetailAudit: invoiceWorksheetLineDetailAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an invoiceWorksheetLineDetail
     - PUT /beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/audit/{invoiceWorksheetLineDetailAudit}
     - Adds an audit to an existing invoiceWorksheetLineDetail.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to add an audit to 
     - parameter invoiceWorksheetLineDetailAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetLineDetailAuditWithRequestBuilder(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, invoiceWorksheetLineDetailAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/audit/{invoiceWorksheetLineDetailAudit}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailId}", withString: "\(invoiceWorksheetLineDetailId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailAudit}", withString: "\(invoiceWorksheetLineDetailAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an invoiceWorksheetLineDetail
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetLineDetailFile(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetLineDetailFileWithRequestBuilder(invoiceWorksheetLineDetailId: invoiceWorksheetLineDetailId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an invoiceWorksheetLineDetail
     - POST /beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/file/{fileName}
     - Adds a file to an existing invoiceWorksheetLineDetail.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetLineDetailFileWithRequestBuilder(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailId}", withString: "\(invoiceWorksheetLineDetailId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an invoiceWorksheetLineDetail.
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to add a tag to 
     - parameter invoiceWorksheetLineDetailTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetLineDetailTag(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, invoiceWorksheetLineDetailTag: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetLineDetailTagWithRequestBuilder(invoiceWorksheetLineDetailId: invoiceWorksheetLineDetailId, invoiceWorksheetLineDetailTag: invoiceWorksheetLineDetailTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an invoiceWorksheetLineDetail.
     - PUT /beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/tag/{invoiceWorksheetLineDetailTag}
     - Adds a tag to an existing invoiceWorksheetLineDetail.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to add a tag to 
     - parameter invoiceWorksheetLineDetailTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetLineDetailTagWithRequestBuilder(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, invoiceWorksheetLineDetailTag: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/tag/{invoiceWorksheetLineDetailTag}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailId}", withString: "\(invoiceWorksheetLineDetailId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailTag}", withString: "\(invoiceWorksheetLineDetailTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an invoiceWorksheetLineDetail.
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to remove tag from 
     - parameter invoiceWorksheetLineDetailTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInvoiceWorksheetLineDetailTag(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, invoiceWorksheetLineDetailTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteInvoiceWorksheetLineDetailTagWithRequestBuilder(invoiceWorksheetLineDetailId: invoiceWorksheetLineDetailId, invoiceWorksheetLineDetailTag: invoiceWorksheetLineDetailTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an invoiceWorksheetLineDetail.
     - DELETE /beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/tag/{invoiceWorksheetLineDetailTag}
     - Deletes an existing invoiceWorksheetLineDetail tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to remove tag from 
     - parameter invoiceWorksheetLineDetailTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInvoiceWorksheetLineDetailTagWithRequestBuilder(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, invoiceWorksheetLineDetailTag: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/tag/{invoiceWorksheetLineDetailTag}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailId}", withString: "\(invoiceWorksheetLineDetailId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailTag}", withString: "\(invoiceWorksheetLineDetailTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an invoiceWorksheetLineDetail by id
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateInvoiceWorksheetLineDetailById(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, completion: ((data: InvoiceWorksheetLineDetail?, error: ErrorType?) -> Void)) {
        getDuplicateInvoiceWorksheetLineDetailByIdWithRequestBuilder(invoiceWorksheetLineDetailId: invoiceWorksheetLineDetailId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an invoiceWorksheetLineDetail by id
     - GET /beta/invoiceWorksheetLineDetail/duplicate/{invoiceWorksheetLineDetailId}
     - Returns a duplicated invoiceWorksheetLineDetail identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reference3" : "reference3",
  "reference4" : "reference4",
  "reference5" : "reference5",
  "customFields" : {
    "key" : "{}"
  },
  "invoiceWorksheetLineId" : 7,
  "reference1" : "reference1",
  "invoiceWorksheetId" : 2,
  "reference2" : "reference2",
  "chargeRate" : 5.962133916683182377482808078639209270477294921875,
  "activityRecord" : {
    "key" : "{}"
  },
  "activityRecordID" : "activityRecordID",
  "id" : 0,
  "activityType" : "activityType",
  "extendedCharge" : 5.63737665663332876420099637471139430999755859375,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}}]
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to be duplicated. 

     - returns: RequestBuilder<InvoiceWorksheetLineDetail> 
     */
    public class func getDuplicateInvoiceWorksheetLineDetailByIdWithRequestBuilder(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32) -> RequestBuilder<InvoiceWorksheetLineDetail> {
        var path = "/beta/invoiceWorksheetLineDetail/duplicate/{invoiceWorksheetLineDetailId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailId}", withString: "\(invoiceWorksheetLineDetailId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InvoiceWorksheetLineDetail>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search invoiceWorksheetLineDetails by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetLineDetailByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [InvoiceWorksheetLineDetail]?, error: ErrorType?) -> Void)) {
        getInvoiceWorksheetLineDetailByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search invoiceWorksheetLineDetails by filter
     - GET /beta/invoiceWorksheetLineDetail/search
     - Returns the list of invoiceWorksheetLineDetails that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reference3" : "reference3",
  "reference4" : "reference4",
  "reference5" : "reference5",
  "customFields" : {
    "key" : "{}"
  },
  "invoiceWorksheetLineId" : 7,
  "reference1" : "reference1",
  "invoiceWorksheetId" : 2,
  "reference2" : "reference2",
  "chargeRate" : 5.962133916683182377482808078639209270477294921875,
  "activityRecord" : {
    "key" : "{}"
  },
  "activityRecordID" : "activityRecordID",
  "id" : 0,
  "activityType" : "activityType",
  "extendedCharge" : 5.63737665663332876420099637471139430999755859375,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}, {
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reference3" : "reference3",
  "reference4" : "reference4",
  "reference5" : "reference5",
  "customFields" : {
    "key" : "{}"
  },
  "invoiceWorksheetLineId" : 7,
  "reference1" : "reference1",
  "invoiceWorksheetId" : 2,
  "reference2" : "reference2",
  "chargeRate" : 5.962133916683182377482808078639209270477294921875,
  "activityRecord" : {
    "key" : "{}"
  },
  "activityRecordID" : "activityRecordID",
  "id" : 0,
  "activityType" : "activityType",
  "extendedCharge" : 5.63737665663332876420099637471139430999755859375,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[InvoiceWorksheetLineDetail]> 
     */
    public class func getInvoiceWorksheetLineDetailByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[InvoiceWorksheetLineDetail]> {
        let path = "/beta/invoiceWorksheetLineDetail/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[InvoiceWorksheetLineDetail]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an invoiceWorksheetLineDetail by id
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetLineDetailById(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, completion: ((data: InvoiceWorksheetLineDetail?, error: ErrorType?) -> Void)) {
        getInvoiceWorksheetLineDetailByIdWithRequestBuilder(invoiceWorksheetLineDetailId: invoiceWorksheetLineDetailId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an invoiceWorksheetLineDetail by id
     - GET /beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}
     - Returns the invoiceWorksheetLineDetail identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "quantity" : 1.46581298050294517310021547018550336360931396484375,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reference3" : "reference3",
  "reference4" : "reference4",
  "reference5" : "reference5",
  "customFields" : {
    "key" : "{}"
  },
  "invoiceWorksheetLineId" : 7,
  "reference1" : "reference1",
  "invoiceWorksheetId" : 2,
  "reference2" : "reference2",
  "chargeRate" : 5.962133916683182377482808078639209270477294921875,
  "activityRecord" : {
    "key" : "{}"
  },
  "activityRecordID" : "activityRecordID",
  "id" : 0,
  "activityType" : "activityType",
  "extendedCharge" : 5.63737665663332876420099637471139430999755859375,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}}]
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to be returned. 

     - returns: RequestBuilder<InvoiceWorksheetLineDetail> 
     */
    public class func getInvoiceWorksheetLineDetailByIdWithRequestBuilder(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32) -> RequestBuilder<InvoiceWorksheetLineDetail> {
        var path = "/beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailId}", withString: "\(invoiceWorksheetLineDetailId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InvoiceWorksheetLineDetail>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an invoiceWorksheetLineDetail.
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetLineDetailTags(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getInvoiceWorksheetLineDetailTagsWithRequestBuilder(invoiceWorksheetLineDetailId: invoiceWorksheetLineDetailId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an invoiceWorksheetLineDetail.
     - GET /beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/tag
     - Get all existing invoiceWorksheetLineDetail tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineDetailId: (path) Id of the invoiceWorksheetLineDetail to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getInvoiceWorksheetLineDetailTagsWithRequestBuilder(invoiceWorksheetLineDetailId invoiceWorksheetLineDetailId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLineDetail/{invoiceWorksheetLineDetailId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineDetailId}", withString: "\(invoiceWorksheetLineDetailId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}