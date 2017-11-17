//
// LocationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LocationAPI: APIBase {
    /**
     
     Create a location
     
     - parameter body: (body) Location to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocation(body body: Location, completion: ((data: Location?, error: ErrorType?) -> Void)) {
        addLocationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a location
     
     - POST /v2.0/location
     - Inserts a new location using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "level" : 123,
  "allowItemMixing" : true,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 123,
  "buildingId" : 123,
  "aisleId" : 123,
  "number" : 123,
  "footprintId" : 123,
  "warehouseId" : 123,
  "billingTypeId" : 123,
  "zoneId" : 123,
  "online" : true,
  "priorityCode" : 123,
  "id" : 123,
  "bay" : 123,
  "behaviorType" : "aeiou",
  "addressSchemeId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) Location to be inserted. 

     - returns: RequestBuilder<Location> 
     */
    public class func addLocationWithRequestBuilder(body body: Location) -> RequestBuilder<Location> {
        let path = "/v2.0/location"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Location>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a location
     
     - parameter locationId: (path) Id of the location to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocation(locationId locationId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationWithRequestBuilder(locationId: locationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a location
     
     - DELETE /v2.0/location/{locationId}
     - Deletes the location identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationId: (path) Id of the location to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationWithRequestBuilder(locationId locationId: Int) -> RequestBuilder<Void> {
        var path = "/v2.0/location/{locationId}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a location by id
     
     - parameter locationId: (path) Id of the location to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLocationById(locationId locationId: Int, completion: ((data: Location?, error: ErrorType?) -> Void)) {
        getDuplicateLocationByIdWithRequestBuilder(locationId: locationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a location by id
     
     - GET /v2.0/location/duplicate/{locationId}
     - Returns a duplicated location identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "level" : 123,
  "allowItemMixing" : true,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 123,
  "buildingId" : 123,
  "aisleId" : 123,
  "number" : 123,
  "footprintId" : 123,
  "warehouseId" : 123,
  "billingTypeId" : 123,
  "zoneId" : 123,
  "online" : true,
  "priorityCode" : 123,
  "id" : 123,
  "bay" : 123,
  "behaviorType" : "aeiou",
  "addressSchemeId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter locationId: (path) Id of the location to be duplicated. 

     - returns: RequestBuilder<Location> 
     */
    public class func getDuplicateLocationByIdWithRequestBuilder(locationId locationId: Int) -> RequestBuilder<Location> {
        var path = "/v2.0/location/duplicate/{locationId}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Location>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search locations by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [Location]?, error: ErrorType?) -> Void)) {
        getLocationByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search locations by filter
     
     - GET /v2.0/location/search
     - Returns the list of locations that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "address" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "level" : 123,
  "allowItemMixing" : true,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 123,
  "buildingId" : 123,
  "aisleId" : 123,
  "number" : 123,
  "footprintId" : 123,
  "warehouseId" : 123,
  "billingTypeId" : 123,
  "zoneId" : 123,
  "online" : true,
  "priorityCode" : 123,
  "id" : 123,
  "bay" : 123,
  "behaviorType" : "aeiou",
  "addressSchemeId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Location]> 
     */
    public class func getLocationByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Location]> {
        let path = "/v2.0/location/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[Location]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a location by id
     
     - parameter locationId: (path) Id of the location to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationById(locationId locationId: Int, completion: ((data: Location?, error: ErrorType?) -> Void)) {
        getLocationByIdWithRequestBuilder(locationId: locationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a location by id
     
     - GET /v2.0/location/{locationId}
     - Returns the location identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "level" : 123,
  "allowItemMixing" : true,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 123,
  "buildingId" : 123,
  "aisleId" : 123,
  "number" : 123,
  "footprintId" : 123,
  "warehouseId" : 123,
  "billingTypeId" : 123,
  "zoneId" : 123,
  "online" : true,
  "priorityCode" : 123,
  "id" : 123,
  "bay" : 123,
  "behaviorType" : "aeiou",
  "addressSchemeId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter locationId: (path) Id of the location to be returned. 

     - returns: RequestBuilder<Location> 
     */
    public class func getLocationByIdWithRequestBuilder(locationId locationId: Int) -> RequestBuilder<Location> {
        var path = "/v2.0/location/{locationId}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Location>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a location
     
     - parameter body: (body) Location to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocation(body body: Location, completion: ((error: ErrorType?) -> Void)) {
        updateLocationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a location
     
     - PUT /v2.0/location
     - Updates an existing location using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Location to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationWithRequestBuilder(body body: Location) -> RequestBuilder<Void> {
        let path = "/v2.0/location"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a location custom fields
     
     - parameter body: (body) Location to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationCustomFields(body body: Location, completion: ((error: ErrorType?) -> Void)) {
        updateLocationCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a location custom fields
     
     - PUT /v2.0/location/customFields
     - Updates an existing location custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Location to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationCustomFieldsWithRequestBuilder(body body: Location) -> RequestBuilder<Void> {
        let path = "/v2.0/location/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
