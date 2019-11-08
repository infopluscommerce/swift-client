//
// InvoiceWorksheetAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InvoiceWorksheetAPI: APIBase {
    /**
     Create an invoiceWorksheet
     
     - parameter body: (body) InvoiceWorksheet to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheet(body body: InvoiceWorksheet, completion: ((data: InvoiceWorksheet?, error: ErrorType?) -> Void)) {
        addInvoiceWorksheetWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an invoiceWorksheet
     - POST /beta/invoiceWorksheet
     - Inserts a new invoiceWorksheet using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "total" : 6.02745618307040320615897144307382404804229736328125,
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "customerInvoiceTemplateId" : 5,
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "invoiceNo" : "invoiceNo",
  "issueDate" : "2000-01-23T04:56:07.000+00:00",
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "remitToStreet" : "remitToStreet",
  "invoiceWorksheetLineItemList" : [ {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  }, {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  } ],
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone",
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
}}]
     
     - parameter body: (body) InvoiceWorksheet to be inserted. 

     - returns: RequestBuilder<InvoiceWorksheet> 
     */
    public class func addInvoiceWorksheetWithRequestBuilder(body body: InvoiceWorksheet) -> RequestBuilder<InvoiceWorksheet> {
        let path = "/beta/invoiceWorksheet"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InvoiceWorksheet>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an invoiceWorksheet
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to add an audit to 
     - parameter invoiceWorksheetAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetAudit(invoiceWorksheetId invoiceWorksheetId: Int32, invoiceWorksheetAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetAuditWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId, invoiceWorksheetAudit: invoiceWorksheetAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an invoiceWorksheet
     - PUT /beta/invoiceWorksheet/{invoiceWorksheetId}/audit/{invoiceWorksheetAudit}
     - Adds an audit to an existing invoiceWorksheet.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to add an audit to 
     - parameter invoiceWorksheetAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetAuditWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32, invoiceWorksheetAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheet/{invoiceWorksheetId}/audit/{invoiceWorksheetAudit}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetAudit}", withString: "\(invoiceWorksheetAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an invoiceWorksheet
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetFile(invoiceWorksheetId invoiceWorksheetId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetFileWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an invoiceWorksheet
     - POST /beta/invoiceWorksheet/{invoiceWorksheetId}/file/{fileName}
     - Adds a file to an existing invoiceWorksheet.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetFileWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheet/{invoiceWorksheetId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an invoiceWorksheet.
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to add a tag to 
     - parameter invoiceWorksheetTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInvoiceWorksheetTag(invoiceWorksheetId invoiceWorksheetId: Int32, invoiceWorksheetTag: String, completion: ((error: ErrorType?) -> Void)) {
        addInvoiceWorksheetTagWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId, invoiceWorksheetTag: invoiceWorksheetTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an invoiceWorksheet.
     - PUT /beta/invoiceWorksheet/{invoiceWorksheetId}/tag/{invoiceWorksheetTag}
     - Adds a tag to an existing invoiceWorksheet.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to add a tag to 
     - parameter invoiceWorksheetTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInvoiceWorksheetTagWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32, invoiceWorksheetTag: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheet/{invoiceWorksheetId}/tag/{invoiceWorksheetTag}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetTag}", withString: "\(invoiceWorksheetTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an invoiceWorksheet
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInvoiceWorksheet(invoiceWorksheetId invoiceWorksheetId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteInvoiceWorksheetWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an invoiceWorksheet
     - DELETE /beta/invoiceWorksheet/{invoiceWorksheetId}
     - Deletes the invoiceWorksheet identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInvoiceWorksheetWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheet/{invoiceWorksheetId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an invoiceWorksheet.
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to remove tag from 
     - parameter invoiceWorksheetTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInvoiceWorksheetTag(invoiceWorksheetId invoiceWorksheetId: Int32, invoiceWorksheetTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteInvoiceWorksheetTagWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId, invoiceWorksheetTag: invoiceWorksheetTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an invoiceWorksheet.
     - DELETE /beta/invoiceWorksheet/{invoiceWorksheetId}/tag/{invoiceWorksheetTag}
     - Deletes an existing invoiceWorksheet tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to remove tag from 
     - parameter invoiceWorksheetTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInvoiceWorksheetTagWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32, invoiceWorksheetTag: String) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheet/{invoiceWorksheetId}/tag/{invoiceWorksheetTag}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetTag}", withString: "\(invoiceWorksheetTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an invoiceWorksheet by id
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateInvoiceWorksheetById(invoiceWorksheetId invoiceWorksheetId: Int32, completion: ((data: InvoiceWorksheet?, error: ErrorType?) -> Void)) {
        getDuplicateInvoiceWorksheetByIdWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an invoiceWorksheet by id
     - GET /beta/invoiceWorksheet/duplicate/{invoiceWorksheetId}
     - Returns a duplicated invoiceWorksheet identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "total" : 6.02745618307040320615897144307382404804229736328125,
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "customerInvoiceTemplateId" : 5,
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "invoiceNo" : "invoiceNo",
  "issueDate" : "2000-01-23T04:56:07.000+00:00",
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "remitToStreet" : "remitToStreet",
  "invoiceWorksheetLineItemList" : [ {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  }, {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  } ],
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone",
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
}}]
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to be duplicated. 

     - returns: RequestBuilder<InvoiceWorksheet> 
     */
    public class func getDuplicateInvoiceWorksheetByIdWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32) -> RequestBuilder<InvoiceWorksheet> {
        var path = "/beta/invoiceWorksheet/duplicate/{invoiceWorksheetId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InvoiceWorksheet>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search invoiceWorksheets by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [InvoiceWorksheet]?, error: ErrorType?) -> Void)) {
        getInvoiceWorksheetByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search invoiceWorksheets by filter
     - GET /beta/invoiceWorksheet/search
     - Returns the list of invoiceWorksheets that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "total" : 6.02745618307040320615897144307382404804229736328125,
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "customerInvoiceTemplateId" : 5,
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "invoiceNo" : "invoiceNo",
  "issueDate" : "2000-01-23T04:56:07.000+00:00",
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "remitToStreet" : "remitToStreet",
  "invoiceWorksheetLineItemList" : [ {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  }, {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  } ],
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone",
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
}, {
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "total" : 6.02745618307040320615897144307382404804229736328125,
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "customerInvoiceTemplateId" : 5,
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "invoiceNo" : "invoiceNo",
  "issueDate" : "2000-01-23T04:56:07.000+00:00",
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "remitToStreet" : "remitToStreet",
  "invoiceWorksheetLineItemList" : [ {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  }, {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  } ],
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone",
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[InvoiceWorksheet]> 
     */
    public class func getInvoiceWorksheetByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[InvoiceWorksheet]> {
        let path = "/beta/invoiceWorksheet/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[InvoiceWorksheet]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an invoiceWorksheet by id
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetById(invoiceWorksheetId invoiceWorksheetId: Int32, completion: ((data: InvoiceWorksheet?, error: ErrorType?) -> Void)) {
        getInvoiceWorksheetByIdWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an invoiceWorksheet by id
     - GET /beta/invoiceWorksheet/{invoiceWorksheetId}
     - Returns the invoiceWorksheet identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "total" : 6.02745618307040320615897144307382404804229736328125,
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "customerInvoiceTemplateId" : 5,
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "invoiceNo" : "invoiceNo",
  "issueDate" : "2000-01-23T04:56:07.000+00:00",
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "remitToStreet" : "remitToStreet",
  "invoiceWorksheetLineItemList" : [ {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  }, {
    "accountCode" : "accountCode",
    "quantity" : 9.301444243932575517419536481611430644989013671875,
    "modifyDate" : "2000-01-23T04:56:07.000+00:00",
    "seqNo" : 7,
    "invoiceTemplateLineId" : 1,
    "customFields" : {
      "key" : "{}"
    },
    "itemCode" : "itemCode",
    "description" : "description",
    "invoiceWorksheetId" : 7,
    "chargeRate" : 3.61607674925191080461672754609026014804840087890625,
    "backupFile" : 4,
    "backupDocument" : "backupDocument",
    "id" : 5,
    "department" : "department",
    "extendedCharge" : 2.027123023002321833274663731572218239307403564453125,
    "createDate" : "2000-01-23T04:56:07.000+00:00",
    "lobId" : 2
  } ],
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone",
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status"
}}]
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to be returned. 

     - returns: RequestBuilder<InvoiceWorksheet> 
     */
    public class func getInvoiceWorksheetByIdWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32) -> RequestBuilder<InvoiceWorksheet> {
        var path = "/beta/invoiceWorksheet/{invoiceWorksheetId}"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InvoiceWorksheet>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an invoiceWorksheet.
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceWorksheetTags(invoiceWorksheetId invoiceWorksheetId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getInvoiceWorksheetTagsWithRequestBuilder(invoiceWorksheetId: invoiceWorksheetId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an invoiceWorksheet.
     - GET /beta/invoiceWorksheet/{invoiceWorksheetId}/tag
     - Get all existing invoiceWorksheet tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter invoiceWorksheetId: (path) Id of the invoiceWorksheet to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getInvoiceWorksheetTagsWithRequestBuilder(invoiceWorksheetId invoiceWorksheetId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/invoiceWorksheet/{invoiceWorksheetId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{invoiceWorksheetId}", withString: "\(invoiceWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an invoiceWorksheet
     
     - parameter body: (body) InvoiceWorksheet to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateInvoiceWorksheet(body body: InvoiceWorksheet, completion: ((error: ErrorType?) -> Void)) {
        updateInvoiceWorksheetWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an invoiceWorksheet
     - PUT /beta/invoiceWorksheet
     - Updates an existing invoiceWorksheet using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) InvoiceWorksheet to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateInvoiceWorksheetWithRequestBuilder(body body: InvoiceWorksheet) -> RequestBuilder<Void> {
        let path = "/beta/invoiceWorksheet"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
