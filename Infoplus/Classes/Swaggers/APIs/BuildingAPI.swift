//
// BuildingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class BuildingAPI: APIBase {
    /**
     
     Create a building
     
     - parameter body: (body) Building to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBuilding(body body: Building, completion: ((data: Building?, error: ErrorType?) -> Void)) {
        addBuildingWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a building
     
     - POST /v1.0/building
     - Inserts a new building using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{example={
  "id" : 123,
  "address" : "aeiou",
  "name" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}, contentType=application/json}]
     
     - parameter body: (body) Building to be inserted. 

     - returns: RequestBuilder<Building> 
     */
    public class func addBuildingWithRequestBuilder(body body: Building) -> RequestBuilder<Building> {
        let path = "/v1.0/building"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Building>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a building
     
     - parameter buildingId: (path) Id of the building to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteBuilding(buildingId buildingId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteBuildingWithRequestBuilder(buildingId: buildingId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a building
     
     - DELETE /v1.0/building/{buildingId}
     - Deletes the building identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter buildingId: (path) Id of the building to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteBuildingWithRequestBuilder(buildingId buildingId: Int) -> RequestBuilder<Void> {
        var path = "/v1.0/building/{buildingId}"
        path = path.stringByReplacingOccurrencesOfString("{buildingId}", withString: "\(buildingId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search buildings by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBuildingByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [Building]?, error: ErrorType?) -> Void)) {
        getBuildingByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search buildings by filter
     
     - GET /v1.0/building/search
     - Returns the list of buildings that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{example=[ {
  "id" : 123,
  "address" : "aeiou",
  "name" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ], contentType=application/json}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Building]> 
     */
    public class func getBuildingByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Building]> {
        let path = "/v1.0/building/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[Building]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a building by id
     
     - parameter buildingId: (path) Id of the building to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBuildingById(buildingId buildingId: Int, completion: ((data: Building?, error: ErrorType?) -> Void)) {
        getBuildingByIdWithRequestBuilder(buildingId: buildingId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a building by id
     
     - GET /v1.0/building/{buildingId}
     - Returns the building identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{example={
  "id" : 123,
  "address" : "aeiou",
  "name" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}, contentType=application/json}]
     
     - parameter buildingId: (path) Id of the building to be returned. 

     - returns: RequestBuilder<Building> 
     */
    public class func getBuildingByIdWithRequestBuilder(buildingId buildingId: Int) -> RequestBuilder<Building> {
        var path = "/v1.0/building/{buildingId}"
        path = path.stringByReplacingOccurrencesOfString("{buildingId}", withString: "\(buildingId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Building>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a building
     
     - parameter body: (body) Building to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateBuilding(body body: Building, completion: ((error: ErrorType?) -> Void)) {
        updateBuildingWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a building
     
     - PUT /v1.0/building
     - Updates an existing building using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Building to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateBuildingWithRequestBuilder(body body: Building) -> RequestBuilder<Void> {
        let path = "/v1.0/building"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
