//
// ProductionModelAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ProductionModelAPI: APIBase {
    /**
     Create a productionModel
     
     - parameter body: (body) ProductionModel to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionModel(body body: ProductionModel, completion: ((data: ProductionModel?, error: ErrorType?) -> Void)) {
        addProductionModelWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a productionModel
     - POST /beta/productionModel
     - Inserts a new productionModel using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "validationFunction" : "validationFunction",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) ProductionModel to be inserted. 

     - returns: RequestBuilder<ProductionModel> 
     */
    public class func addProductionModelWithRequestBuilder(body body: ProductionModel) -> RequestBuilder<ProductionModel> {
        let path = "/beta/productionModel"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProductionModel>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a productionModel
     
     - parameter productionModelId: (path) Id of the productionModel to add an audit to 
     - parameter productionModelAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionModelAudit(productionModelId productionModelId: Int32, productionModelAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addProductionModelAuditWithRequestBuilder(productionModelId: productionModelId, productionModelAudit: productionModelAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a productionModel
     - PUT /beta/productionModel/{productionModelId}/audit/{productionModelAudit}
     - Adds an audit to an existing productionModel.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to add an audit to 
     - parameter productionModelAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionModelAuditWithRequestBuilder(productionModelId productionModelId: Int32, productionModelAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/audit/{productionModelAudit}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{productionModelAudit}", withString: "\(productionModelAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a productionModel
     
     - parameter productionModelId: (path) Id of the productionModel to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionModelFile(productionModelId productionModelId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addProductionModelFileWithRequestBuilder(productionModelId: productionModelId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a productionModel
     - POST /beta/productionModel/{productionModelId}/file/{fileName}
     - Adds a file to an existing productionModel.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionModelFileWithRequestBuilder(productionModelId productionModelId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a productionModel by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter productionModelId: (path) Id of the productionModel to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionModelFileByURL(body body: RecordFile, productionModelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addProductionModelFileByURLWithRequestBuilder(body: body, productionModelId: productionModelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a productionModel by URL.
     - POST /beta/productionModel/{productionModelId}/file
     - Adds a file to an existing productionModel by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter productionModelId: (path) Id of the productionModel to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionModelFileByURLWithRequestBuilder(body body: RecordFile, productionModelId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/file"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a productionModel.
     
     - parameter productionModelId: (path) Id of the productionModel to add a tag to 
     - parameter productionModelTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionModelTag(productionModelId productionModelId: Int32, productionModelTag: String, completion: ((error: ErrorType?) -> Void)) {
        addProductionModelTagWithRequestBuilder(productionModelId: productionModelId, productionModelTag: productionModelTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a productionModel.
     - PUT /beta/productionModel/{productionModelId}/tag/{productionModelTag}
     - Adds a tag to an existing productionModel.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to add a tag to 
     - parameter productionModelTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionModelTagWithRequestBuilder(productionModelId productionModelId: Int32, productionModelTag: String) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/tag/{productionModelTag}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{productionModelTag}", withString: "\(productionModelTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a productionModel
     
     - parameter productionModelId: (path) Id of the productionModel to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProductionModel(productionModelId productionModelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteProductionModelWithRequestBuilder(productionModelId: productionModelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a productionModel
     - DELETE /beta/productionModel/{productionModelId}
     - Deletes the productionModel identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteProductionModelWithRequestBuilder(productionModelId productionModelId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a productionModel.
     
     - parameter productionModelId: (path) Id of the productionModel to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProductionModelFile(productionModelId productionModelId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteProductionModelFileWithRequestBuilder(productionModelId: productionModelId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a productionModel.
     - DELETE /beta/productionModel/{productionModelId}/file/{fileId}
     - Deletes an existing productionModel file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteProductionModelFileWithRequestBuilder(productionModelId productionModelId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a productionModel.
     
     - parameter productionModelId: (path) Id of the productionModel to remove tag from 
     - parameter productionModelTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProductionModelTag(productionModelId productionModelId: Int32, productionModelTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteProductionModelTagWithRequestBuilder(productionModelId: productionModelId, productionModelTag: productionModelTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a productionModel.
     - DELETE /beta/productionModel/{productionModelId}/tag/{productionModelTag}
     - Deletes an existing productionModel tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to remove tag from 
     - parameter productionModelTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteProductionModelTagWithRequestBuilder(productionModelId productionModelId: Int32, productionModelTag: String) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/tag/{productionModelTag}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{productionModelTag}", withString: "\(productionModelTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a productionModel by id
     
     - parameter productionModelId: (path) Id of the productionModel to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateProductionModelById(productionModelId productionModelId: Int32, completion: ((data: ProductionModel?, error: ErrorType?) -> Void)) {
        getDuplicateProductionModelByIdWithRequestBuilder(productionModelId: productionModelId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a productionModel by id
     - GET /beta/productionModel/duplicate/{productionModelId}
     - Returns a duplicated productionModel identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "validationFunction" : "validationFunction",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter productionModelId: (path) Id of the productionModel to be duplicated. 

     - returns: RequestBuilder<ProductionModel> 
     */
    public class func getDuplicateProductionModelByIdWithRequestBuilder(productionModelId productionModelId: Int32) -> RequestBuilder<ProductionModel> {
        var path = "/beta/productionModel/duplicate/{productionModelId}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProductionModel>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search productionModels by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionModelByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ProductionModel]?, error: ErrorType?) -> Void)) {
        getProductionModelByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search productionModels by filter
     - GET /beta/productionModel/search
     - Returns the list of productionModels that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "validationFunction" : "validationFunction",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "validationFunction" : "validationFunction",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ProductionModel]> 
     */
    public class func getProductionModelByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ProductionModel]> {
        let path = "/beta/productionModel/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ProductionModel]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a productionModel by id
     
     - parameter productionModelId: (path) Id of the productionModel to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionModelById(productionModelId productionModelId: Int32, completion: ((data: ProductionModel?, error: ErrorType?) -> Void)) {
        getProductionModelByIdWithRequestBuilder(productionModelId: productionModelId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a productionModel by id
     - GET /beta/productionModel/{productionModelId}
     - Returns the productionModel identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "validationFunction" : "validationFunction",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter productionModelId: (path) Id of the productionModel to be returned. 

     - returns: RequestBuilder<ProductionModel> 
     */
    public class func getProductionModelByIdWithRequestBuilder(productionModelId productionModelId: Int32) -> RequestBuilder<ProductionModel> {
        var path = "/beta/productionModel/{productionModelId}"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProductionModel>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a productionModel.
     
     - parameter productionModelId: (path) Id of the productionModel to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionModelFiles(productionModelId productionModelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getProductionModelFilesWithRequestBuilder(productionModelId: productionModelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a productionModel.
     - GET /beta/productionModel/{productionModelId}/file
     - Get all existing productionModel files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getProductionModelFilesWithRequestBuilder(productionModelId productionModelId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/file"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a productionModel.
     
     - parameter productionModelId: (path) Id of the productionModel to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionModelTags(productionModelId productionModelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getProductionModelTagsWithRequestBuilder(productionModelId: productionModelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a productionModel.
     - GET /beta/productionModel/{productionModelId}/tag
     - Get all existing productionModel tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionModelId: (path) Id of the productionModel to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getProductionModelTagsWithRequestBuilder(productionModelId productionModelId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionModel/{productionModelId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{productionModelId}", withString: "\(productionModelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a productionModel
     
     - parameter body: (body) ProductionModel to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateProductionModel(body body: ProductionModel, completion: ((error: ErrorType?) -> Void)) {
        updateProductionModelWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a productionModel
     - PUT /beta/productionModel
     - Updates an existing productionModel using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ProductionModel to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateProductionModelWithRequestBuilder(body body: ProductionModel) -> RequestBuilder<Void> {
        let path = "/beta/productionModel"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a productionModel custom fields
     
     - parameter body: (body) ProductionModel to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateProductionModelCustomFields(body body: ProductionModel, completion: ((error: ErrorType?) -> Void)) {
        updateProductionModelCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a productionModel custom fields
     - PUT /beta/productionModel/customFields
     - Updates an existing productionModel custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ProductionModel to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateProductionModelCustomFieldsWithRequestBuilder(body body: ProductionModel) -> RequestBuilder<Void> {
        let path = "/beta/productionModel/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
