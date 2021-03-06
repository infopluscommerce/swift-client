//
// OrderSourceStockStatusAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderSourceStockStatusAPI: APIBase {
    /**
     Add new audit for an orderSourceStockStatus
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add an audit to 
     - parameter orderSourceStockStatusAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceStockStatusAudit(orderSourceStockStatusId orderSourceStockStatusId: Int32, orderSourceStockStatusAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceStockStatusAuditWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId, orderSourceStockStatusAudit: orderSourceStockStatusAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an orderSourceStockStatus
     - PUT /beta/orderSourceStockStatus/{orderSourceStockStatusId}/audit/{orderSourceStockStatusAudit}
     - Adds an audit to an existing orderSourceStockStatus.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add an audit to 
     - parameter orderSourceStockStatusAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceStockStatusAuditWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32, orderSourceStockStatusAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/audit/{orderSourceStockStatusAudit}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusAudit}", withString: "\(orderSourceStockStatusAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an orderSourceStockStatus
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceStockStatusFile(orderSourceStockStatusId orderSourceStockStatusId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceStockStatusFileWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an orderSourceStockStatus
     - POST /beta/orderSourceStockStatus/{orderSourceStockStatusId}/file/{fileName}
     - Adds a file to an existing orderSourceStockStatus.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceStockStatusFileWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an orderSourceStockStatus by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceStockStatusFileByURL(body body: RecordFile, orderSourceStockStatusId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceStockStatusFileByURLWithRequestBuilder(body: body, orderSourceStockStatusId: orderSourceStockStatusId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an orderSourceStockStatus by URL.
     - POST /beta/orderSourceStockStatus/{orderSourceStockStatusId}/file
     - Adds a file to an existing orderSourceStockStatus by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceStockStatusFileByURLWithRequestBuilder(body body: RecordFile, orderSourceStockStatusId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/file"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an orderSourceStockStatus.
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add a tag to 
     - parameter orderSourceStockStatusTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceStockStatusTag(orderSourceStockStatusId orderSourceStockStatusId: Int32, orderSourceStockStatusTag: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceStockStatusTagWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId, orderSourceStockStatusTag: orderSourceStockStatusTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an orderSourceStockStatus.
     - PUT /beta/orderSourceStockStatus/{orderSourceStockStatusId}/tag/{orderSourceStockStatusTag}
     - Adds a tag to an existing orderSourceStockStatus.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to add a tag to 
     - parameter orderSourceStockStatusTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceStockStatusTagWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32, orderSourceStockStatusTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/tag/{orderSourceStockStatusTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusTag}", withString: "\(orderSourceStockStatusTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for an orderSourceStockStatus.
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderSourceStockStatusFile(orderSourceStockStatusId orderSourceStockStatusId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderSourceStockStatusFileWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for an orderSourceStockStatus.
     - DELETE /beta/orderSourceStockStatus/{orderSourceStockStatusId}/file/{fileId}
     - Deletes an existing orderSourceStockStatus file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderSourceStockStatusFileWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an orderSourceStockStatus.
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to remove tag from 
     - parameter orderSourceStockStatusTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderSourceStockStatusTag(orderSourceStockStatusId orderSourceStockStatusId: Int32, orderSourceStockStatusTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderSourceStockStatusTagWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId, orderSourceStockStatusTag: orderSourceStockStatusTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an orderSourceStockStatus.
     - DELETE /beta/orderSourceStockStatus/{orderSourceStockStatusId}/tag/{orderSourceStockStatusTag}
     - Deletes an existing orderSourceStockStatus tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to remove tag from 
     - parameter orderSourceStockStatusTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderSourceStockStatusTagWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32, orderSourceStockStatusTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/tag/{orderSourceStockStatusTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusTag}", withString: "\(orderSourceStockStatusTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an orderSourceStockStatus by id
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateOrderSourceStockStatusById(orderSourceStockStatusId orderSourceStockStatusId: Int32, completion: ((data: OrderSourceStockStatus?, error: ErrorType?) -> Void)) {
        getDuplicateOrderSourceStockStatusByIdWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an orderSourceStockStatus by id
     - GET /beta/orderSourceStockStatus/duplicate/{orderSourceStockStatusId}
     - Returns a duplicated orderSourceStockStatus identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderSourceId" : 6,
  "quantityAvailable" : 7,
  "netReservation" : 2,
  "reservedQuantity" : 2,
  "orderableQuantity" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "totalReservedQuantity" : 5,
  "demand" : 5,
  "unreservedQuantityAvailable" : 3,
  "lobId" : 1
}}]
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to be duplicated. 

     - returns: RequestBuilder<OrderSourceStockStatus> 
     */
    public class func getDuplicateOrderSourceStockStatusByIdWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32) -> RequestBuilder<OrderSourceStockStatus> {
        var path = "/beta/orderSourceStockStatus/duplicate/{orderSourceStockStatusId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSourceStockStatus>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search orderSourceStockStatuses by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceStockStatusByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [OrderSourceStockStatus]?, error: ErrorType?) -> Void)) {
        getOrderSourceStockStatusByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search orderSourceStockStatuses by filter
     - GET /beta/orderSourceStockStatus/search
     - Returns the list of orderSourceStockStatuses that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "orderSourceId" : 6,
  "quantityAvailable" : 7,
  "netReservation" : 2,
  "reservedQuantity" : 2,
  "orderableQuantity" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "totalReservedQuantity" : 5,
  "demand" : 5,
  "unreservedQuantityAvailable" : 3,
  "lobId" : 1
}, {
  "orderSourceId" : 6,
  "quantityAvailable" : 7,
  "netReservation" : 2,
  "reservedQuantity" : 2,
  "orderableQuantity" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "totalReservedQuantity" : 5,
  "demand" : 5,
  "unreservedQuantityAvailable" : 3,
  "lobId" : 1
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OrderSourceStockStatus]> 
     */
    public class func getOrderSourceStockStatusByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[OrderSourceStockStatus]> {
        let path = "/beta/orderSourceStockStatus/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[OrderSourceStockStatus]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an orderSourceStockStatus by id
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceStockStatusById(orderSourceStockStatusId orderSourceStockStatusId: Int32, completion: ((data: OrderSourceStockStatus?, error: ErrorType?) -> Void)) {
        getOrderSourceStockStatusByIdWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an orderSourceStockStatus by id
     - GET /beta/orderSourceStockStatus/{orderSourceStockStatusId}
     - Returns the orderSourceStockStatus identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderSourceId" : 6,
  "quantityAvailable" : 7,
  "netReservation" : 2,
  "reservedQuantity" : 2,
  "orderableQuantity" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "totalReservedQuantity" : 5,
  "demand" : 5,
  "unreservedQuantityAvailable" : 3,
  "lobId" : 1
}}]
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to be returned. 

     - returns: RequestBuilder<OrderSourceStockStatus> 
     */
    public class func getOrderSourceStockStatusByIdWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32) -> RequestBuilder<OrderSourceStockStatus> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSourceStockStatus>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for an orderSourceStockStatus.
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceStockStatusFiles(orderSourceStockStatusId orderSourceStockStatusId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getOrderSourceStockStatusFilesWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for an orderSourceStockStatus.
     - GET /beta/orderSourceStockStatus/{orderSourceStockStatusId}/file
     - Get all existing orderSourceStockStatus files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOrderSourceStockStatusFilesWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/file"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an orderSourceStockStatus.
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceStockStatusTags(orderSourceStockStatusId orderSourceStockStatusId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getOrderSourceStockStatusTagsWithRequestBuilder(orderSourceStockStatusId: orderSourceStockStatusId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an orderSourceStockStatus.
     - GET /beta/orderSourceStockStatus/{orderSourceStockStatusId}/tag
     - Get all existing orderSourceStockStatus tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceStockStatusId: (path) Id of the orderSourceStockStatus to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOrderSourceStockStatusTagsWithRequestBuilder(orderSourceStockStatusId orderSourceStockStatusId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceStockStatus/{orderSourceStockStatusId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceStockStatusId}", withString: "\(orderSourceStockStatusId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
