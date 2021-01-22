//
// CarrierServiceAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CarrierServiceAPI: APIBase {
    /**
     Get a carrierService by id
     
     - parameter carrierServiceId: (path) Id of carrierService to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCarrierServiceById(carrierServiceId carrierServiceId: String, completion: ((data: CarrierService?, error: ErrorType?) -> Void)) {
        getCarrierServiceByIdWithRequestBuilder(carrierServiceId: carrierServiceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a carrierService by id
     - GET /beta/carrierService/{carrierServiceId}
     - Returns the carrierService identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "id" : 0,
  "label" : "label"
}}]
     
     - parameter carrierServiceId: (path) Id of carrierService to be returned. 

     - returns: RequestBuilder<CarrierService> 
     */
    public class func getCarrierServiceByIdWithRequestBuilder(carrierServiceId carrierServiceId: String) -> RequestBuilder<CarrierService> {
        var path = "/beta/carrierService/{carrierServiceId}"
        path = path.stringByReplacingOccurrencesOfString("{carrierServiceId}", withString: "\(carrierServiceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CarrierService>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search carrierServices
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCarrierServiceBySearchText(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil, completion: ((data: [CarrierService]?, error: ErrorType?) -> Void)) {
        getCarrierServiceBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search carrierServices
     - GET /beta/carrierService/search
     - Returns the list of carrierServices that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "id" : 0,
  "label" : "label"
}, {
  "id" : 0,
  "label" : "label"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[CarrierService]> 
     */
    public class func getCarrierServiceBySearchTextWithRequestBuilder(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil) -> RequestBuilder<[CarrierService]> {
        let path = "/beta/carrierService/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CarrierService]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}