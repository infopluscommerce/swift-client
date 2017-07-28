//
// ProductTypeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ProductTypeAPI: APIBase {
    /**
     
     Get a productType by id
     
     - parameter productTypeId: (path) Id of productType to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductTypeById(productTypeId productTypeId: String, completion: ((data: ProductType?, error: ErrorType?) -> Void)) {
        getProductTypeByIdWithRequestBuilder(productTypeId: productTypeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a productType by id
     
     - GET /beta/productType/{productTypeId}
     - Returns the productType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "fullEntityClassName" : "aeiou",
  "id" : 123,
  "label" : "aeiou"
}}]
     
     - parameter productTypeId: (path) Id of productType to be returned. 

     - returns: RequestBuilder<ProductType> 
     */
    public class func getProductTypeByIdWithRequestBuilder(productTypeId productTypeId: String) -> RequestBuilder<ProductType> {
        var path = "/beta/productType/{productTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{productTypeId}", withString: "\(productTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ProductType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search productTypes
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductTypeBySearchText(searchText searchText: String?, page: Int?, limit: Int?, completion: ((data: [ProductType]?, error: ErrorType?) -> Void)) {
        getProductTypeBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search productTypes
     
     - GET /beta/productType/search
     - Returns the list of productTypes that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "fullEntityClassName" : "aeiou",
  "id" : 123,
  "label" : "aeiou"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[ProductType]> 
     */
    public class func getProductTypeBySearchTextWithRequestBuilder(searchText searchText: String?, page: Int?, limit: Int?) -> RequestBuilder<[ProductType]> {
        let path = "/beta/productType/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ProductType]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
