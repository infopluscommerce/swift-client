//
// OrderInvoiceTemplateLineItemDescriptionEnumAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderInvoiceTemplateLineItemDescriptionEnumAPI: APIBase {
    /**
     
     Get an orderInvoiceTemplateLineItemDescriptionEnum by id
     
     - parameter orderInvoiceTemplateLineItemDescriptionEnumId: (path) Id of orderInvoiceTemplateLineItemDescriptionEnum to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderInvoiceTemplateLineItemDescriptionEnumById(orderInvoiceTemplateLineItemDescriptionEnumId orderInvoiceTemplateLineItemDescriptionEnumId: String, completion: ((data: OrderInvoiceTemplateLineItemDescriptionEnum?, error: ErrorType?) -> Void)) {
        getOrderInvoiceTemplateLineItemDescriptionEnumByIdWithRequestBuilder(orderInvoiceTemplateLineItemDescriptionEnumId: orderInvoiceTemplateLineItemDescriptionEnumId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an orderInvoiceTemplateLineItemDescriptionEnum by id
     
     - GET /beta/orderInvoiceTemplateLineItemDescriptionEnum/{orderInvoiceTemplateLineItemDescriptionEnumId}
     - Returns the orderInvoiceTemplateLineItemDescriptionEnum identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "fullEntityClassName" : "aeiou",
  "id" : "aeiou",
  "label" : "aeiou"
}}]
     
     - parameter orderInvoiceTemplateLineItemDescriptionEnumId: (path) Id of orderInvoiceTemplateLineItemDescriptionEnum to be returned. 

     - returns: RequestBuilder<OrderInvoiceTemplateLineItemDescriptionEnum> 
     */
    public class func getOrderInvoiceTemplateLineItemDescriptionEnumByIdWithRequestBuilder(orderInvoiceTemplateLineItemDescriptionEnumId orderInvoiceTemplateLineItemDescriptionEnumId: String) -> RequestBuilder<OrderInvoiceTemplateLineItemDescriptionEnum> {
        var path = "/beta/orderInvoiceTemplateLineItemDescriptionEnum/{orderInvoiceTemplateLineItemDescriptionEnumId}"
        path = path.stringByReplacingOccurrencesOfString("{orderInvoiceTemplateLineItemDescriptionEnumId}", withString: "\(orderInvoiceTemplateLineItemDescriptionEnumId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<OrderInvoiceTemplateLineItemDescriptionEnum>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search orderInvoiceTemplateLineItemDescriptionEnums
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderInvoiceTemplateLineItemDescriptionEnumBySearchText(searchText searchText: String?, page: Int?, limit: Int?, completion: ((data: [OrderInvoiceTemplateLineItemDescriptionEnum]?, error: ErrorType?) -> Void)) {
        getOrderInvoiceTemplateLineItemDescriptionEnumBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search orderInvoiceTemplateLineItemDescriptionEnums
     
     - GET /beta/orderInvoiceTemplateLineItemDescriptionEnum/search
     - Returns the list of orderInvoiceTemplateLineItemDescriptionEnums that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "fullEntityClassName" : "aeiou",
  "id" : "aeiou",
  "label" : "aeiou"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[OrderInvoiceTemplateLineItemDescriptionEnum]> 
     */
    public class func getOrderInvoiceTemplateLineItemDescriptionEnumBySearchTextWithRequestBuilder(searchText searchText: String?, page: Int?, limit: Int?) -> RequestBuilder<[OrderInvoiceTemplateLineItemDescriptionEnum]> {
        let path = "/beta/orderInvoiceTemplateLineItemDescriptionEnum/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[OrderInvoiceTemplateLineItemDescriptionEnum]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
