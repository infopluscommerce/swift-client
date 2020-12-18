//
// FulfillmentProcessPickBatchGroupAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FulfillmentProcessPickBatchGroupAPI: APIBase {
    /**
     Get a fulfillmentProcessPickBatchGroup by id
     
     - parameter fulfillmentProcessPickBatchGroupId: (path) Id of fulfillmentProcessPickBatchGroup to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentProcessGroupPicksByById(fulfillmentProcessPickBatchGroupId fulfillmentProcessPickBatchGroupId: String, completion: ((data: FulfillmentProcessPickBatchGroup?, error: ErrorType?) -> Void)) {
        getFulfillmentProcessGroupPicksByByIdWithRequestBuilder(fulfillmentProcessPickBatchGroupId: fulfillmentProcessPickBatchGroupId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a fulfillmentProcessPickBatchGroup by id
     - GET /beta/fulfillmentProcessPickBatchGroup/{fulfillmentProcessPickBatchGroupId}
     - Returns the fulfillmentProcessPickBatchGroup identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "id" : "id",
  "label" : "label"
}}]
     
     - parameter fulfillmentProcessPickBatchGroupId: (path) Id of fulfillmentProcessPickBatchGroup to be returned. 

     - returns: RequestBuilder<FulfillmentProcessPickBatchGroup> 
     */
    public class func getFulfillmentProcessGroupPicksByByIdWithRequestBuilder(fulfillmentProcessPickBatchGroupId fulfillmentProcessPickBatchGroupId: String) -> RequestBuilder<FulfillmentProcessPickBatchGroup> {
        var path = "/beta/fulfillmentProcessPickBatchGroup/{fulfillmentProcessPickBatchGroupId}"
        path = path.stringByReplacingOccurrencesOfString("{fulfillmentProcessPickBatchGroupId}", withString: "\(fulfillmentProcessPickBatchGroupId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentProcessPickBatchGroup>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search fulfillmentProcessPickBatchGroups
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentProcessPickBatchGroupBySearchText(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil, completion: ((data: [FulfillmentProcessPickBatchGroup]?, error: ErrorType?) -> Void)) {
        getFulfillmentProcessPickBatchGroupBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search fulfillmentProcessPickBatchGroups
     - GET /beta/fulfillmentProcessPickBatchGroup/search
     - Returns the list of fulfillmentProcessPickBatchGroups that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "id" : "id",
  "label" : "label"
}, {
  "id" : "id",
  "label" : "label"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[FulfillmentProcessPickBatchGroup]> 
     */
    public class func getFulfillmentProcessPickBatchGroupBySearchTextWithRequestBuilder(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil) -> RequestBuilder<[FulfillmentProcessPickBatchGroup]> {
        let path = "/beta/fulfillmentProcessPickBatchGroup/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[FulfillmentProcessPickBatchGroup]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
