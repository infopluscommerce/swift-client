//
// OrderLineAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderLineAPI: APIBase {
    /**
     Add new audit for an orderLine
     
     - parameter orderLineId: (path) Id of the orderLine to add an audit to 
     - parameter orderLineAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderLineAudit(orderLineId orderLineId: Int32, orderLineAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderLineAuditWithRequestBuilder(orderLineId: orderLineId, orderLineAudit: orderLineAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an orderLine
     - PUT /beta/orderLine/{orderLineId}/audit/{orderLineAudit}
     - Adds an audit to an existing orderLine.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderLineId: (path) Id of the orderLine to add an audit to 
     - parameter orderLineAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderLineAuditWithRequestBuilder(orderLineId orderLineId: Int32, orderLineAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/orderLine/{orderLineId}/audit/{orderLineAudit}"
        path = path.stringByReplacingOccurrencesOfString("{orderLineId}", withString: "\(orderLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderLineAudit}", withString: "\(orderLineAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an orderLine.
     
     - parameter orderLineId: (path) Id of the orderLine to add a tag to 
     - parameter orderLineTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderLineTag(orderLineId orderLineId: Int32, orderLineTag: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderLineTagWithRequestBuilder(orderLineId: orderLineId, orderLineTag: orderLineTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an orderLine.
     - PUT /beta/orderLine/{orderLineId}/tag/{orderLineTag}
     - Adds a tag to an existing orderLine.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderLineId: (path) Id of the orderLine to add a tag to 
     - parameter orderLineTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderLineTagWithRequestBuilder(orderLineId orderLineId: Int32, orderLineTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderLine/{orderLineId}/tag/{orderLineTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderLineId}", withString: "\(orderLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderLineTag}", withString: "\(orderLineTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an orderLine.
     
     - parameter orderLineId: (path) Id of the orderLine to remove tag from 
     - parameter orderLineTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderLineTag(orderLineId orderLineId: Int32, orderLineTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderLineTagWithRequestBuilder(orderLineId: orderLineId, orderLineTag: orderLineTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an orderLine.
     - DELETE /beta/orderLine/{orderLineId}/tag/{orderLineTag}
     - Deletes an existing orderLine tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderLineId: (path) Id of the orderLine to remove tag from 
     - parameter orderLineTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderLineTagWithRequestBuilder(orderLineId orderLineId: Int32, orderLineTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderLine/{orderLineId}/tag/{orderLineTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderLineId}", withString: "\(orderLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderLineTag}", withString: "\(orderLineTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an orderLine by id
     
     - parameter orderLineId: (path) Id of the orderLine to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateOrderLineById(orderLineId orderLineId: Int32, completion: ((data: OrderLine?, error: ErrorType?) -> Void)) {
        getDuplicateOrderLineByIdWithRequestBuilder(orderLineId: orderLineId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an orderLine by id
     - GET /beta/orderLine/duplicate/{orderLineId}
     - Returns a duplicated orderLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "itemSubGroupId" : 7,
  "extendedDiscount" : 1.0414449161182959269211778519093059003353118896484375,
  "orderAssemblyInstructions" : "orderAssemblyInstructions",
  "distributionCode" : "distributionCode",
  "itemMajorGroupId" : 0,
  "ncExtendedSell" : 4.67894798900584873990737833082675933837890625,
  "weightPerWrap" : 9.132027271330688478201409452594816684722900390625,
  "customFields" : {
    "key" : "{}"
  },
  "itemLegacyLowStockContactId" : 9,
  "revDate" : "revDate",
  "backorderQty" : 5,
  "orderSourceSKU" : "orderSourceSKU",
  "extendedCost" : 6.6284642750877420525057459599338471889495849609375,
  "dynamicKitComponentList" : [ {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  }, {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  } ],
  "id" : 0,
  "sku" : "sku",
  "unitDiscount" : 0.202532411323639305322785730822943150997161865234375,
  "sector" : "sector",
  "itemAccountCodeId" : 0,
  "itemProductCodeId" : 5,
  "itemWeight" : 7.26052126480210358039357743109576404094696044921875,
  "lobId" : 8,
  "shippedQty" : 7,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "itemSummaryCodeId" : 4,
  "orderNo" : 4.6523964329332461176136348512955009937286376953125,
  "extendedSell" : 4.258773108174356281097061582840979099273681640625,
  "upc" : "upc",
  "productionLot" : "productionLot",
  "orderedQty" : 3,
  "vendorSKU" : "vendorSKU",
  "fulfillmentChannel" : "fulfillmentChannel",
  "unitCost" : 3.258856561904760695824734284542500972747802734375,
  "poNoId" : 7,
  "unitSell" : 4.078845849666752343409825698472559452056884765625,
  "allowedQty" : 3,
  "chargeCode" : "chargeCode"
}}]
     
     - parameter orderLineId: (path) Id of the orderLine to be duplicated. 

     - returns: RequestBuilder<OrderLine> 
     */
    public class func getDuplicateOrderLineByIdWithRequestBuilder(orderLineId orderLineId: Int32) -> RequestBuilder<OrderLine> {
        var path = "/beta/orderLine/duplicate/{orderLineId}"
        path = path.stringByReplacingOccurrencesOfString("{orderLineId}", withString: "\(orderLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search orderLines by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderLineByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [OrderLine]?, error: ErrorType?) -> Void)) {
        getOrderLineByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search orderLines by filter
     - GET /beta/orderLine/search
     - Returns the list of orderLines that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "itemSubGroupId" : 7,
  "extendedDiscount" : 1.0414449161182959269211778519093059003353118896484375,
  "orderAssemblyInstructions" : "orderAssemblyInstructions",
  "distributionCode" : "distributionCode",
  "itemMajorGroupId" : 0,
  "ncExtendedSell" : 4.67894798900584873990737833082675933837890625,
  "weightPerWrap" : 9.132027271330688478201409452594816684722900390625,
  "customFields" : {
    "key" : "{}"
  },
  "itemLegacyLowStockContactId" : 9,
  "revDate" : "revDate",
  "backorderQty" : 5,
  "orderSourceSKU" : "orderSourceSKU",
  "extendedCost" : 6.6284642750877420525057459599338471889495849609375,
  "dynamicKitComponentList" : [ {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  }, {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  } ],
  "id" : 0,
  "sku" : "sku",
  "unitDiscount" : 0.202532411323639305322785730822943150997161865234375,
  "sector" : "sector",
  "itemAccountCodeId" : 0,
  "itemProductCodeId" : 5,
  "itemWeight" : 7.26052126480210358039357743109576404094696044921875,
  "lobId" : 8,
  "shippedQty" : 7,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "itemSummaryCodeId" : 4,
  "orderNo" : 4.6523964329332461176136348512955009937286376953125,
  "extendedSell" : 4.258773108174356281097061582840979099273681640625,
  "upc" : "upc",
  "productionLot" : "productionLot",
  "orderedQty" : 3,
  "vendorSKU" : "vendorSKU",
  "fulfillmentChannel" : "fulfillmentChannel",
  "unitCost" : 3.258856561904760695824734284542500972747802734375,
  "poNoId" : 7,
  "unitSell" : 4.078845849666752343409825698472559452056884765625,
  "allowedQty" : 3,
  "chargeCode" : "chargeCode"
}, {
  "itemSubGroupId" : 7,
  "extendedDiscount" : 1.0414449161182959269211778519093059003353118896484375,
  "orderAssemblyInstructions" : "orderAssemblyInstructions",
  "distributionCode" : "distributionCode",
  "itemMajorGroupId" : 0,
  "ncExtendedSell" : 4.67894798900584873990737833082675933837890625,
  "weightPerWrap" : 9.132027271330688478201409452594816684722900390625,
  "customFields" : {
    "key" : "{}"
  },
  "itemLegacyLowStockContactId" : 9,
  "revDate" : "revDate",
  "backorderQty" : 5,
  "orderSourceSKU" : "orderSourceSKU",
  "extendedCost" : 6.6284642750877420525057459599338471889495849609375,
  "dynamicKitComponentList" : [ {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  }, {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  } ],
  "id" : 0,
  "sku" : "sku",
  "unitDiscount" : 0.202532411323639305322785730822943150997161865234375,
  "sector" : "sector",
  "itemAccountCodeId" : 0,
  "itemProductCodeId" : 5,
  "itemWeight" : 7.26052126480210358039357743109576404094696044921875,
  "lobId" : 8,
  "shippedQty" : 7,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "itemSummaryCodeId" : 4,
  "orderNo" : 4.6523964329332461176136348512955009937286376953125,
  "extendedSell" : 4.258773108174356281097061582840979099273681640625,
  "upc" : "upc",
  "productionLot" : "productionLot",
  "orderedQty" : 3,
  "vendorSKU" : "vendorSKU",
  "fulfillmentChannel" : "fulfillmentChannel",
  "unitCost" : 3.258856561904760695824734284542500972747802734375,
  "poNoId" : 7,
  "unitSell" : 4.078845849666752343409825698472559452056884765625,
  "allowedQty" : 3,
  "chargeCode" : "chargeCode"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OrderLine]> 
     */
    public class func getOrderLineByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[OrderLine]> {
        let path = "/beta/orderLine/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[OrderLine]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an orderLine by id
     
     - parameter orderLineId: (path) Id of the orderLine to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderLineById(orderLineId orderLineId: Int32, completion: ((data: OrderLine?, error: ErrorType?) -> Void)) {
        getOrderLineByIdWithRequestBuilder(orderLineId: orderLineId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an orderLine by id
     - GET /beta/orderLine/{orderLineId}
     - Returns the orderLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "itemSubGroupId" : 7,
  "extendedDiscount" : 1.0414449161182959269211778519093059003353118896484375,
  "orderAssemblyInstructions" : "orderAssemblyInstructions",
  "distributionCode" : "distributionCode",
  "itemMajorGroupId" : 0,
  "ncExtendedSell" : 4.67894798900584873990737833082675933837890625,
  "weightPerWrap" : 9.132027271330688478201409452594816684722900390625,
  "customFields" : {
    "key" : "{}"
  },
  "itemLegacyLowStockContactId" : 9,
  "revDate" : "revDate",
  "backorderQty" : 5,
  "orderSourceSKU" : "orderSourceSKU",
  "extendedCost" : 6.6284642750877420525057459599338471889495849609375,
  "dynamicKitComponentList" : [ {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  }, {
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku",
    "perKitQuantity" : 8,
    "lobId" : 6
  } ],
  "id" : 0,
  "sku" : "sku",
  "unitDiscount" : 0.202532411323639305322785730822943150997161865234375,
  "sector" : "sector",
  "itemAccountCodeId" : 0,
  "itemProductCodeId" : 5,
  "itemWeight" : 7.26052126480210358039357743109576404094696044921875,
  "lobId" : 8,
  "shippedQty" : 7,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "itemSummaryCodeId" : 4,
  "orderNo" : 4.6523964329332461176136348512955009937286376953125,
  "extendedSell" : 4.258773108174356281097061582840979099273681640625,
  "upc" : "upc",
  "productionLot" : "productionLot",
  "orderedQty" : 3,
  "vendorSKU" : "vendorSKU",
  "fulfillmentChannel" : "fulfillmentChannel",
  "unitCost" : 3.258856561904760695824734284542500972747802734375,
  "poNoId" : 7,
  "unitSell" : 4.078845849666752343409825698472559452056884765625,
  "allowedQty" : 3,
  "chargeCode" : "chargeCode"
}}]
     
     - parameter orderLineId: (path) Id of the orderLine to be returned. 

     - returns: RequestBuilder<OrderLine> 
     */
    public class func getOrderLineByIdWithRequestBuilder(orderLineId orderLineId: Int32) -> RequestBuilder<OrderLine> {
        var path = "/beta/orderLine/{orderLineId}"
        path = path.stringByReplacingOccurrencesOfString("{orderLineId}", withString: "\(orderLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an orderLine.
     
     - parameter orderLineId: (path) Id of the orderLine to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderLineTags(orderLineId orderLineId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getOrderLineTagsWithRequestBuilder(orderLineId: orderLineId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an orderLine.
     - GET /beta/orderLine/{orderLineId}/tag
     - Get all existing orderLine tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderLineId: (path) Id of the orderLine to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOrderLineTagsWithRequestBuilder(orderLineId orderLineId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderLine/{orderLineId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{orderLineId}", withString: "\(orderLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an orderLine custom fields
     
     - parameter body: (body) OrderLine to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderLineCustomFields(body body: OrderLine, completion: ((error: ErrorType?) -> Void)) {
        updateOrderLineCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an orderLine custom fields
     - PUT /beta/orderLine/customFields
     - Updates an existing orderLine custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderLine to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderLineCustomFieldsWithRequestBuilder(body body: OrderLine) -> RequestBuilder<Void> {
        let path = "/beta/orderLine/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
