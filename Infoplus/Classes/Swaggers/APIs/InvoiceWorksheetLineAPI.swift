//
// InvoiceWorksheetLineAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InvoiceWorksheetLineAPI: APIBase {
    /**
     
     Create an invoiceWorksheetLine
     
     - parameter body: (body) InvoiceWorksheetLine to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetLine(body body: InvoiceWorksheetLine, completion: ((data: InvoiceWorksheetLine?, error: ErrorType?) -> Void)) {
        addInvoiceWorksheetLineWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an invoiceWorksheetLine
     
     - POST /beta/invoiceWorksheetLine
     - Inserts a new invoiceWorksheetLine using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "accountCode" : "aeiou",
  "quantity" : 1.3579000000000001069366817318950779736042022705078125,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "seqNo" : 123,
  "invoiceTemplateLineId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "itemCode" : "aeiou",
  "description" : "aeiou",
  "invoiceWorksheetId" : 123,
  "chargeRate" : 1.3579000000000001069366817318950779736042022705078125,
  "backupFile" : 123,
  "backupFileUrl" : "aeiou",
  "id" : 123,
  "department" : "aeiou",
  "extendedCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123
}}]
     
     - parameter body: (body) InvoiceWorksheetLine to be inserted. 

     - returns: RequestBuilder<InvoiceWorksheetLine> 
     */
    public class func addInvoiceWorksheetLineWithRequestBuilder(body body: InvoiceWorksheetLine) -> RequestBuilder<InvoiceWorksheetLine> {
        let path = "/beta/invoiceWorksheetLine"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<InvoiceWorksheetLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for an invoiceWorksheetLine
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to add an audit to 
     - parameter invoiceWorksheetLineAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetLineAudit(invoiceWorksheetLineId invoiceWorksheetLineId: Int, invoiceWorksheetLineAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetLineAuditWithRequestBuilder(invoiceWorksheetLineId: invoiceWorksheetLineId, invoiceWorksheetLineAudit: invoiceWorksheetLineAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for an invoiceWorksheetLine
     
     - PUT /beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/audit/{invoiceWorksheetLineAudit}
     - Adds an audit to an existing invoiceWorksheetLine.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to add an audit to 
     - parameter invoiceWorksheetLineAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetLineAuditWithRequestBuilder(invoiceWorksheetLineId invoiceWorksheetLineId: Int, invoiceWorksheetLineAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/audit/{invoiceWorksheetLineAudit}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineId}", withString: "\(invoiceWorksheetLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineAudit}", withString: "\(invoiceWorksheetLineAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for an invoiceWorksheetLine.
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to add a tag to 
     - parameter invoiceWorksheetLineTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetLineTag(invoiceWorksheetLineId invoiceWorksheetLineId: Int, invoiceWorksheetLineTag: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetLineTagWithRequestBuilder(invoiceWorksheetLineId: invoiceWorksheetLineId, invoiceWorksheetLineTag: invoiceWorksheetLineTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for an invoiceWorksheetLine.
     
     - PUT /beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/tag/{invoiceWorksheetLineTag}
     - Adds a tag to an existing invoiceWorksheetLine.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to add a tag to 
     - parameter invoiceWorksheetLineTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetLineTagWithRequestBuilder(invoiceWorksheetLineId invoiceWorksheetLineId: Int, invoiceWorksheetLineTag: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/tag/{invoiceWorksheetLineTag}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineId}", withString: "\(invoiceWorksheetLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineTag}", withString: "\(invoiceWorksheetLineTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an invoiceWorksheetLine
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInvoiceWorksheetLine(invoiceWorksheetLineId invoiceWorksheetLineId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteInvoiceWorksheetLineWithRequestBuilder(invoiceWorksheetLineId: invoiceWorksheetLineId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an invoiceWorksheetLine
     
     - DELETE /beta/invoiceWorksheetLine/{invoiceWorksheetLineId}
     - Deletes the invoiceWorksheetLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInvoiceWorksheetLineWithRequestBuilder(invoiceWorksheetLineId invoiceWorksheetLineId: Int) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLine/{invoiceWorksheetLineId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineId}", withString: "\(invoiceWorksheetLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for an invoiceWorksheetLine.
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to remove tag from 
     - parameter invoiceWorksheetLineTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInvoiceWorksheetLineTag(invoiceWorksheetLineId invoiceWorksheetLineId: Int, invoiceWorksheetLineTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteInvoiceWorksheetLineTagWithRequestBuilder(invoiceWorksheetLineId: invoiceWorksheetLineId, invoiceWorksheetLineTag: invoiceWorksheetLineTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for an invoiceWorksheetLine.
     
     - DELETE /beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/tag/{invoiceWorksheetLineTag}
     - Deletes an existing invoiceWorksheetLine tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to remove tag from 
     - parameter invoiceWorksheetLineTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInvoiceWorksheetLineTagWithRequestBuilder(invoiceWorksheetLineId invoiceWorksheetLineId: Int, invoiceWorksheetLineTag: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/tag/{invoiceWorksheetLineTag}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineId}", withString: "\(invoiceWorksheetLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineTag}", withString: "\(invoiceWorksheetLineTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated an invoiceWorksheetLine by id
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateInvoiceWorksheetLineById(invoiceWorksheetLineId invoiceWorksheetLineId: Int, completion: ((data: InvoiceWorksheetLine?, error: ErrorType?) -> Void)) {
        getDuplicateInvoiceWorksheetLineByIdWithRequestBuilder(invoiceWorksheetLineId: invoiceWorksheetLineId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated an invoiceWorksheetLine by id
     
     - GET /beta/invoiceWorksheetLine/duplicate/{invoiceWorksheetLineId}
     - Returns a duplicated invoiceWorksheetLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "accountCode" : "aeiou",
  "quantity" : 1.3579000000000001069366817318950779736042022705078125,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "seqNo" : 123,
  "invoiceTemplateLineId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "itemCode" : "aeiou",
  "description" : "aeiou",
  "invoiceWorksheetId" : 123,
  "chargeRate" : 1.3579000000000001069366817318950779736042022705078125,
  "backupFile" : 123,
  "backupFileUrl" : "aeiou",
  "id" : 123,
  "department" : "aeiou",
  "extendedCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123
}}]
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to be duplicated. 

     - returns: RequestBuilder<InvoiceWorksheetLine> 
     */
    public class func getDuplicateInvoiceWorksheetLineByIdWithRequestBuilder(invoiceWorksheetLineId invoiceWorksheetLineId: Int) -> RequestBuilder<InvoiceWorksheetLine> {
        var path = "/beta/invoiceWorksheetLine/duplicate/{invoiceWorksheetLineId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineId}", withString: "\(invoiceWorksheetLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<InvoiceWorksheetLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search invoiceWorksheetLines by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetLineByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [InvoiceWorksheetLine]?, error: ErrorType?) -> Void)) {
        getInvoiceWorksheetLineByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search invoiceWorksheetLines by filter
     
     - GET /beta/invoiceWorksheetLine/search
     - Returns the list of invoiceWorksheetLines that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "accountCode" : "aeiou",
  "quantity" : 1.3579000000000001069366817318950779736042022705078125,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "seqNo" : 123,
  "invoiceTemplateLineId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "itemCode" : "aeiou",
  "description" : "aeiou",
  "invoiceWorksheetId" : 123,
  "chargeRate" : 1.3579000000000001069366817318950779736042022705078125,
  "backupFile" : 123,
  "backupFileUrl" : "aeiou",
  "id" : 123,
  "department" : "aeiou",
  "extendedCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[InvoiceWorksheetLine]> 
     */
    public class func getInvoiceWorksheetLineByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[InvoiceWorksheetLine]> {
        let path = "/beta/invoiceWorksheetLine/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[InvoiceWorksheetLine]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an invoiceWorksheetLine by id
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetLineById(invoiceWorksheetLineId invoiceWorksheetLineId: Int, completion: ((data: InvoiceWorksheetLine?, error: ErrorType?) -> Void)) {
        getInvoiceWorksheetLineByIdWithRequestBuilder(invoiceWorksheetLineId: invoiceWorksheetLineId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an invoiceWorksheetLine by id
     
     - GET /beta/invoiceWorksheetLine/{invoiceWorksheetLineId}
     - Returns the invoiceWorksheetLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "accountCode" : "aeiou",
  "quantity" : 1.3579000000000001069366817318950779736042022705078125,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "seqNo" : 123,
  "invoiceTemplateLineId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "itemCode" : "aeiou",
  "description" : "aeiou",
  "invoiceWorksheetId" : 123,
  "chargeRate" : 1.3579000000000001069366817318950779736042022705078125,
  "backupFile" : 123,
  "backupFileUrl" : "aeiou",
  "id" : 123,
  "department" : "aeiou",
  "extendedCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123
}}]
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to be returned. 

     - returns: RequestBuilder<InvoiceWorksheetLine> 
     */
    public class func getInvoiceWorksheetLineByIdWithRequestBuilder(invoiceWorksheetLineId invoiceWorksheetLineId: Int) -> RequestBuilder<InvoiceWorksheetLine> {
        var path = "/beta/invoiceWorksheetLine/{invoiceWorksheetLineId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineId}", withString: "\(invoiceWorksheetLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<InvoiceWorksheetLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for an invoiceWorksheetLine.
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetLineTags(invoiceWorksheetLineId invoiceWorksheetLineId: Int, completion: ((error: ErrorType?) -> Void)) {
        getInvoiceWorksheetLineTagsWithRequestBuilder(invoiceWorksheetLineId: invoiceWorksheetLineId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for an invoiceWorksheetLine.
     
     - GET /beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/tag
     - Get all existing invoiceWorksheetLine tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetLineId: (path) Id of the invoiceWorksheetLine to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getInvoiceWorksheetLineTagsWithRequestBuilder(invoiceWorksheetLineId invoiceWorksheetLineId: Int) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheetLine/{invoiceWorksheetLineId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetLineId}", withString: "\(invoiceWorksheetLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an invoiceWorksheetLine
     
     - parameter body: (body) InvoiceWorksheetLine to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateInvoiceWorksheetLine(body body: InvoiceWorksheetLine, completion: ((error: ErrorType?) -> Void)) {
        updateInvoiceWorksheetLineWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an invoiceWorksheetLine
     
     - PUT /beta/invoiceWorksheetLine
     - Updates an existing invoiceWorksheetLine using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) InvoiceWorksheetLine to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateInvoiceWorksheetLineWithRequestBuilder(body body: InvoiceWorksheetLine) -> RequestBuilder<Void> {
        let path = "/beta/invoiceWorksheetLine"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
