//
// InventoryDetailAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InventoryDetailAPI: APIBase {
    /**
     Add new audit for an inventoryDetail
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to add an audit to 
     - parameter inventoryDetailAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInventoryDetailAudit(inventoryDetailId inventoryDetailId: Int32, inventoryDetailAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addInventoryDetailAuditWithRequestBuilder(inventoryDetailId: inventoryDetailId, inventoryDetailAudit: inventoryDetailAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an inventoryDetail
     - PUT /beta/inventoryDetail/{inventoryDetailId}/audit/{inventoryDetailAudit}
     - Adds an audit to an existing inventoryDetail.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to add an audit to 
     - parameter inventoryDetailAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInventoryDetailAuditWithRequestBuilder(inventoryDetailId inventoryDetailId: Int32, inventoryDetailAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/inventoryDetail/{inventoryDetailId}/audit/{inventoryDetailAudit}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailId}", withString: "\(inventoryDetailId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailAudit}", withString: "\(inventoryDetailAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an inventoryDetail.
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to add a tag to 
     - parameter inventoryDetailTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInventoryDetailTag(inventoryDetailId inventoryDetailId: Int32, inventoryDetailTag: String, completion: ((error: ErrorType?) -> Void)) {
        addInventoryDetailTagWithRequestBuilder(inventoryDetailId: inventoryDetailId, inventoryDetailTag: inventoryDetailTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an inventoryDetail.
     - PUT /beta/inventoryDetail/{inventoryDetailId}/tag/{inventoryDetailTag}
     - Adds a tag to an existing inventoryDetail.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to add a tag to 
     - parameter inventoryDetailTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInventoryDetailTagWithRequestBuilder(inventoryDetailId inventoryDetailId: Int32, inventoryDetailTag: String) -> RequestBuilder<Void> {
        var path = "/beta/inventoryDetail/{inventoryDetailId}/tag/{inventoryDetailTag}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailId}", withString: "\(inventoryDetailId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailTag}", withString: "\(inventoryDetailTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an inventoryDetail.
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to remove tag from 
     - parameter inventoryDetailTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInventoryDetailTag(inventoryDetailId inventoryDetailId: Int32, inventoryDetailTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteInventoryDetailTagWithRequestBuilder(inventoryDetailId: inventoryDetailId, inventoryDetailTag: inventoryDetailTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an inventoryDetail.
     - DELETE /beta/inventoryDetail/{inventoryDetailId}/tag/{inventoryDetailTag}
     - Deletes an existing inventoryDetail tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to remove tag from 
     - parameter inventoryDetailTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInventoryDetailTagWithRequestBuilder(inventoryDetailId inventoryDetailId: Int32, inventoryDetailTag: String) -> RequestBuilder<Void> {
        var path = "/beta/inventoryDetail/{inventoryDetailId}/tag/{inventoryDetailTag}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailId}", withString: "\(inventoryDetailId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailTag}", withString: "\(inventoryDetailTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an inventoryDetail by id
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateInventoryDetailById(inventoryDetailId inventoryDetailId: Int32, completion: ((data: InventoryDetail?, error: ErrorType?) -> Void)) {
        getDuplicateInventoryDetailByIdWithRequestBuilder(inventoryDetailId: inventoryDetailId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an inventoryDetail by id
     - GET /beta/inventoryDetail/duplicate/{inventoryDetailId}
     - Returns a duplicated inventoryDetail identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "unitsPerWrap" : 4,
  "quantity" : 5,
  "revisionDate" : "revisionDate",
  "customFields" : {
    "key" : "{}"
  },
  "distributionDate" : "2000-01-23T04:56:07.000+00:00",
  "quantityPerPallet" : 7,
  "warehouseLocationId" : 6,
  "estimatedPallets" : 2,
  "productionLot" : "productionLot",
  "poNo" : "poNo",
  "quantityPerCase" : 2,
  "id" : 0,
  "estimatedInnerPacks" : 9,
  "estimatedCases" : 3,
  "sku" : "sku",
  "quantityPerInnerPack" : 5,
  "oldestReceiptDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to be duplicated. 

     - returns: RequestBuilder<InventoryDetail> 
     */
    public class func getDuplicateInventoryDetailByIdWithRequestBuilder(inventoryDetailId inventoryDetailId: Int32) -> RequestBuilder<InventoryDetail> {
        var path = "/beta/inventoryDetail/duplicate/{inventoryDetailId}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailId}", withString: "\(inventoryDetailId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InventoryDetail>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search inventoryDetails by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryDetailByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [InventoryDetail]?, error: ErrorType?) -> Void)) {
        getInventoryDetailByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search inventoryDetails by filter
     - GET /beta/inventoryDetail/search
     - Returns the list of inventoryDetails that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "unitsPerWrap" : 4,
  "quantity" : 5,
  "revisionDate" : "revisionDate",
  "customFields" : {
    "key" : "{}"
  },
  "distributionDate" : "2000-01-23T04:56:07.000+00:00",
  "quantityPerPallet" : 7,
  "warehouseLocationId" : 6,
  "estimatedPallets" : 2,
  "productionLot" : "productionLot",
  "poNo" : "poNo",
  "quantityPerCase" : 2,
  "id" : 0,
  "estimatedInnerPacks" : 9,
  "estimatedCases" : 3,
  "sku" : "sku",
  "quantityPerInnerPack" : 5,
  "oldestReceiptDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "unitsPerWrap" : 4,
  "quantity" : 5,
  "revisionDate" : "revisionDate",
  "customFields" : {
    "key" : "{}"
  },
  "distributionDate" : "2000-01-23T04:56:07.000+00:00",
  "quantityPerPallet" : 7,
  "warehouseLocationId" : 6,
  "estimatedPallets" : 2,
  "productionLot" : "productionLot",
  "poNo" : "poNo",
  "quantityPerCase" : 2,
  "id" : 0,
  "estimatedInnerPacks" : 9,
  "estimatedCases" : 3,
  "sku" : "sku",
  "quantityPerInnerPack" : 5,
  "oldestReceiptDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[InventoryDetail]> 
     */
    public class func getInventoryDetailByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[InventoryDetail]> {
        let path = "/beta/inventoryDetail/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[InventoryDetail]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an inventoryDetail by id
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryDetailById(inventoryDetailId inventoryDetailId: Int32, completion: ((data: InventoryDetail?, error: ErrorType?) -> Void)) {
        getInventoryDetailByIdWithRequestBuilder(inventoryDetailId: inventoryDetailId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an inventoryDetail by id
     - GET /beta/inventoryDetail/{inventoryDetailId}
     - Returns the inventoryDetail identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "unitsPerWrap" : 4,
  "quantity" : 5,
  "revisionDate" : "revisionDate",
  "customFields" : {
    "key" : "{}"
  },
  "distributionDate" : "2000-01-23T04:56:07.000+00:00",
  "quantityPerPallet" : 7,
  "warehouseLocationId" : 6,
  "estimatedPallets" : 2,
  "productionLot" : "productionLot",
  "poNo" : "poNo",
  "quantityPerCase" : 2,
  "id" : 0,
  "estimatedInnerPacks" : 9,
  "estimatedCases" : 3,
  "sku" : "sku",
  "quantityPerInnerPack" : 5,
  "oldestReceiptDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to be returned. 

     - returns: RequestBuilder<InventoryDetail> 
     */
    public class func getInventoryDetailByIdWithRequestBuilder(inventoryDetailId inventoryDetailId: Int32) -> RequestBuilder<InventoryDetail> {
        var path = "/beta/inventoryDetail/{inventoryDetailId}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailId}", withString: "\(inventoryDetailId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InventoryDetail>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an inventoryDetail.
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryDetailTags(inventoryDetailId inventoryDetailId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getInventoryDetailTagsWithRequestBuilder(inventoryDetailId: inventoryDetailId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an inventoryDetail.
     - GET /beta/inventoryDetail/{inventoryDetailId}/tag
     - Get all existing inventoryDetail tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getInventoryDetailTagsWithRequestBuilder(inventoryDetailId inventoryDetailId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/inventoryDetail/{inventoryDetailId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailId}", withString: "\(inventoryDetailId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an inventoryDetail custom fields
     
     - parameter body: (body) InventoryDetail to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateInventoryDetailCustomFields(body body: InventoryDetail, completion: ((error: ErrorType?) -> Void)) {
        updateInventoryDetailCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an inventoryDetail custom fields
     - PUT /beta/inventoryDetail/customFields
     - Updates an existing inventoryDetail custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) InventoryDetail to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateInventoryDetailCustomFieldsWithRequestBuilder(body body: InventoryDetail) -> RequestBuilder<Void> {
        let path = "/beta/inventoryDetail/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
