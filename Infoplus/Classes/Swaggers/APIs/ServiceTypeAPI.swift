//
// ServiceTypeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ServiceTypeAPI: APIBase {
    /**
     Get a serviceType by id
     
     - parameter serviceTypeId: (path) Id of serviceType to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getServiceTypeById(serviceTypeId serviceTypeId: String, completion: ((data: ServiceType?, error: ErrorType?) -> Void)) {
        getServiceTypeByIdWithRequestBuilder(serviceTypeId: serviceTypeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a serviceType by id
     - GET /beta/serviceType/{serviceTypeId}
     - Returns the serviceType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "serviceType" : "serviceType",
  "fullEntityClassName" : "fullEntityClassName",
  "label" : "label"
}}]
     
     - parameter serviceTypeId: (path) Id of serviceType to be returned. 

     - returns: RequestBuilder<ServiceType> 
     */
    public class func getServiceTypeByIdWithRequestBuilder(serviceTypeId serviceTypeId: String) -> RequestBuilder<ServiceType> {
        var path = "/beta/serviceType/{serviceTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{serviceTypeId}", withString: "\(serviceTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ServiceType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search serviceTypes
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getServiceTypeBySearchText(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil, completion: ((data: [ServiceType]?, error: ErrorType?) -> Void)) {
        getServiceTypeBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search serviceTypes
     - GET /beta/serviceType/search
     - Returns the list of serviceTypes that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "serviceType" : "serviceType",
  "fullEntityClassName" : "fullEntityClassName",
  "label" : "label"
}, {
  "serviceType" : "serviceType",
  "fullEntityClassName" : "fullEntityClassName",
  "label" : "label"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[ServiceType]> 
     */
    public class func getServiceTypeBySearchTextWithRequestBuilder(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil) -> RequestBuilder<[ServiceType]> {
        let path = "/beta/serviceType/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ServiceType]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
