//
// AlertAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AlertAPI: APIBase {
    /**
     
     Search alerts by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getAlertByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [Alert]?, error: ErrorType?) -> Void)) {
        getAlertByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search alerts by filter
     
     - GET /v1.0/alert/search
     - Returns the list of alerts that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{example=[ {
  "message" : "aeiou",
  "id" : 123,
  "expirationDate" : "2000-01-23T04:56:07.000+0000",
  "linkText" : "aeiou",
  "level" : "aeiou",
  "link" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "type" : "aeiou",
  "acknowledgeDate" : "2000-01-23T04:56:07.000+0000"
} ], contentType=application/json}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Alert]> 
     */
    public class func getAlertByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Alert]> {
        let path = "/v1.0/alert/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[Alert]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an alert by id
     
     - parameter alertId: (path) Id of the alert to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getAlertById(alertId alertId: Int, completion: ((data: Alert?, error: ErrorType?) -> Void)) {
        getAlertByIdWithRequestBuilder(alertId: alertId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an alert by id
     
     - GET /v1.0/alert/{alertId}
     - Returns the alert identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{example={
  "message" : "aeiou",
  "id" : 123,
  "expirationDate" : "2000-01-23T04:56:07.000+0000",
  "linkText" : "aeiou",
  "level" : "aeiou",
  "link" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "type" : "aeiou",
  "acknowledgeDate" : "2000-01-23T04:56:07.000+0000"
}, contentType=application/json}]
     
     - parameter alertId: (path) Id of the alert to be returned. 

     - returns: RequestBuilder<Alert> 
     */
    public class func getAlertByIdWithRequestBuilder(alertId alertId: Int) -> RequestBuilder<Alert> {
        var path = "/v1.0/alert/{alertId}"
        path = path.stringByReplacingOccurrencesOfString("{alertId}", withString: "\(alertId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Alert>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
