//
// ItemProductCodeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemProductCodeAPI: APIBase {
    /**
     
     Search itemProductCodes
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemProductCodeBySearchText(searchText searchText: String?, page: Int?, limit: Int?, completion: ((data: [ItemProductCode]?, error: ErrorType?) -> Void)) {
        getItemProductCodeBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search itemProductCodes
     
     - GET /v1.0/itemProductCode/search
     - Returns the list of itemProductCodes that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{example=[ {
  "id" : 123,
  "label" : "aeiou"
} ], contentType=application/json}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[ItemProductCode]> 
     */
    public class func getItemProductCodeBySearchTextWithRequestBuilder(searchText searchText: String?, page: Int?, limit: Int?) -> RequestBuilder<[ItemProductCode]> {
        let path = "/v1.0/itemProductCode/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ItemProductCode]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an itemProductCode by id
     
     - parameter itemProductCodeId: (path) Id of itemProductCode to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTranslateProductCodeById(itemProductCodeId itemProductCodeId: String, completion: ((data: ItemProductCode?, error: ErrorType?) -> Void)) {
        getTranslateProductCodeByIdWithRequestBuilder(itemProductCodeId: itemProductCodeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an itemProductCode by id
     
     - GET /v1.0/itemProductCode/{itemProductCodeId}
     - Returns the itemProductCode identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{example={
  "id" : 123,
  "label" : "aeiou"
}, contentType=application/json}]
     
     - parameter itemProductCodeId: (path) Id of itemProductCode to be returned. 

     - returns: RequestBuilder<ItemProductCode> 
     */
    public class func getTranslateProductCodeByIdWithRequestBuilder(itemProductCodeId itemProductCodeId: String) -> RequestBuilder<ItemProductCode> {
        var path = "/v1.0/itemProductCode/{itemProductCodeId}"
        path = path.stringByReplacingOccurrencesOfString("{itemProductCodeId}", withString: "\(itemProductCodeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ItemProductCode>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
