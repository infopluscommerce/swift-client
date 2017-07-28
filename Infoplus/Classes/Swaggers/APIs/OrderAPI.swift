//
// OrderAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderAPI: APIBase {
    /**
     
     Create an order
     
     - parameter body: (body) Order to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrder(body body: Order, completion: ((data: Order?, error: ErrorType?) -> Void)) {
        addOrderWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an order
     
     - POST /beta/order
     - Inserts a new order using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "giftMessage" : "aeiou",
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "estimatedNumberOfPicks" : 123,
  "packingSlipTemplateId" : 123,
  "orderAssemblyInstructions" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "lineItems" : [ {
    "itemSubGroupId" : 123,
    "extendedDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "orderAssemblyInstructions" : "aeiou",
    "distributionCode" : "aeiou",
    "itemMajorGroupId" : 123,
    "ncExtendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
    "customFields" : {
      "key" : "{}"
    },
    "itemLegacyLowStockContactId" : 123,
    "revDate" : "aeiou",
    "backorderQty" : 123,
    "orderSourceSKU" : "aeiou",
    "extendedCost" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123,
    "sku" : "aeiou",
    "unitDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "sector" : "aeiou",
    "itemAccountCodeId" : 123,
    "itemProductCodeId" : 123,
    "itemWeight" : 1.3579000000000001069366817318950779736042022705078125,
    "lobId" : 123,
    "shippedQty" : 123,
    "itemSummaryCodeId" : 123,
    "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
    "extendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "upc" : "aeiou",
    "productionLot" : "aeiou",
    "orderedQty" : 123,
    "vendorSKU" : "aeiou",
    "unitCost" : 1.3579000000000001069366817318950779736042022705078125,
    "poNoId" : 123,
    "unitSell" : 1.3579000000000001069366817318950779736042022705078125,
    "allowedQty" : 123,
    "chargeCode" : "aeiou"
  } ],
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "extraOrderData" : [ {
    "sequence" : "aeiou",
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "thirdPartyParcelAccountId" : 123,
  "carrierId" : 123,
  "customerNo" : "aeiou"
}}]
     
     - parameter body: (body) Order to be inserted. 

     - returns: RequestBuilder<Order> 
     */
    public class func addOrderWithRequestBuilder(body body: Order) -> RequestBuilder<Order> {
        let path = "/beta/order"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Order>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for an order
     
     - parameter orderId: (path) Id of the order to add an audit to 
     - parameter orderAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderAudit(orderId orderId: Double, orderAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderAuditWithRequestBuilder(orderId: orderId, orderAudit: orderAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for an order
     
     - PUT /beta/order/{orderId}/audit/{orderAudit}
     - Adds an audit to an existing order.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderId: (path) Id of the order to add an audit to 
     - parameter orderAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderAuditWithRequestBuilder(orderId orderId: Double, orderAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/order/{orderId}/audit/{orderAudit}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderAudit}", withString: "\(orderAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for an order.
     
     - parameter orderId: (path) Id of the order to add a tag to 
     - parameter orderTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderTag(orderId orderId: Double, orderTag: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderTagWithRequestBuilder(orderId: orderId, orderTag: orderTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for an order.
     
     - PUT /beta/order/{orderId}/tag/{orderTag}
     - Adds a tag to an existing order.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderId: (path) Id of the order to add a tag to 
     - parameter orderTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderTagWithRequestBuilder(orderId orderId: Double, orderTag: String) -> RequestBuilder<Void> {
        var path = "/beta/order/{orderId}/tag/{orderTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderTag}", withString: "\(orderTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an order
     
     - parameter orderId: (path) Id of the order to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrder(orderId orderId: Double, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an order
     
     - DELETE /beta/order/{orderId}
     - Deletes the order identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderId: (path) Id of the order to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderWithRequestBuilder(orderId orderId: Double) -> RequestBuilder<Void> {
        var path = "/beta/order/{orderId}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for an order.
     
     - parameter orderId: (path) Id of the order to remove tag from 
     - parameter orderTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderTag(orderId orderId: Double, orderTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderTagWithRequestBuilder(orderId: orderId, orderTag: orderTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for an order.
     
     - DELETE /beta/order/{orderId}/tag/{orderTag}
     - Deletes an existing order tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderId: (path) Id of the order to remove tag from 
     - parameter orderTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderTagWithRequestBuilder(orderId orderId: Double, orderTag: String) -> RequestBuilder<Void> {
        var path = "/beta/order/{orderId}/tag/{orderTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderTag}", withString: "\(orderTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated an order by id
     
     - parameter orderId: (path) Id of the order to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateOrderById(orderId orderId: Double, completion: ((data: Order?, error: ErrorType?) -> Void)) {
        getDuplicateOrderByIdWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated an order by id
     
     - GET /beta/order/duplicate/{orderId}
     - Returns a duplicated order identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "giftMessage" : "aeiou",
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "estimatedNumberOfPicks" : 123,
  "packingSlipTemplateId" : 123,
  "orderAssemblyInstructions" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "lineItems" : [ {
    "itemSubGroupId" : 123,
    "extendedDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "orderAssemblyInstructions" : "aeiou",
    "distributionCode" : "aeiou",
    "itemMajorGroupId" : 123,
    "ncExtendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
    "customFields" : {
      "key" : "{}"
    },
    "itemLegacyLowStockContactId" : 123,
    "revDate" : "aeiou",
    "backorderQty" : 123,
    "orderSourceSKU" : "aeiou",
    "extendedCost" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123,
    "sku" : "aeiou",
    "unitDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "sector" : "aeiou",
    "itemAccountCodeId" : 123,
    "itemProductCodeId" : 123,
    "itemWeight" : 1.3579000000000001069366817318950779736042022705078125,
    "lobId" : 123,
    "shippedQty" : 123,
    "itemSummaryCodeId" : 123,
    "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
    "extendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "upc" : "aeiou",
    "productionLot" : "aeiou",
    "orderedQty" : 123,
    "vendorSKU" : "aeiou",
    "unitCost" : 1.3579000000000001069366817318950779736042022705078125,
    "poNoId" : 123,
    "unitSell" : 1.3579000000000001069366817318950779736042022705078125,
    "allowedQty" : 123,
    "chargeCode" : "aeiou"
  } ],
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "extraOrderData" : [ {
    "sequence" : "aeiou",
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "thirdPartyParcelAccountId" : 123,
  "carrierId" : 123,
  "customerNo" : "aeiou"
}}]
     
     - parameter orderId: (path) Id of the order to be duplicated. 

     - returns: RequestBuilder<Order> 
     */
    public class func getDuplicateOrderByIdWithRequestBuilder(orderId orderId: Double) -> RequestBuilder<Order> {
        var path = "/beta/order/duplicate/{orderId}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Order>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search orders by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [Order]?, error: ErrorType?) -> Void)) {
        getOrderByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search orders by filter
     
     - GET /beta/order/search
     - Returns the list of orders that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "giftMessage" : "aeiou",
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "estimatedNumberOfPicks" : 123,
  "packingSlipTemplateId" : 123,
  "orderAssemblyInstructions" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "lineItems" : [ {
    "itemSubGroupId" : 123,
    "extendedDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "orderAssemblyInstructions" : "aeiou",
    "distributionCode" : "aeiou",
    "itemMajorGroupId" : 123,
    "ncExtendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
    "customFields" : {
      "key" : "{}"
    },
    "itemLegacyLowStockContactId" : 123,
    "revDate" : "aeiou",
    "backorderQty" : 123,
    "orderSourceSKU" : "aeiou",
    "extendedCost" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123,
    "sku" : "aeiou",
    "unitDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "sector" : "aeiou",
    "itemAccountCodeId" : 123,
    "itemProductCodeId" : 123,
    "itemWeight" : 1.3579000000000001069366817318950779736042022705078125,
    "lobId" : 123,
    "shippedQty" : 123,
    "itemSummaryCodeId" : 123,
    "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
    "extendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "upc" : "aeiou",
    "productionLot" : "aeiou",
    "orderedQty" : 123,
    "vendorSKU" : "aeiou",
    "unitCost" : 1.3579000000000001069366817318950779736042022705078125,
    "poNoId" : 123,
    "unitSell" : 1.3579000000000001069366817318950779736042022705078125,
    "allowedQty" : 123,
    "chargeCode" : "aeiou"
  } ],
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "extraOrderData" : [ {
    "sequence" : "aeiou",
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "thirdPartyParcelAccountId" : 123,
  "carrierId" : 123,
  "customerNo" : "aeiou"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Order]> 
     */
    public class func getOrderByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Order]> {
        let path = "/beta/order/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[Order]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an order by id
     
     - parameter orderId: (path) Id of the order to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderById(orderId orderId: Double, completion: ((data: Order?, error: ErrorType?) -> Void)) {
        getOrderByIdWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an order by id
     
     - GET /beta/order/{orderId}
     - Returns the order identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "giftMessage" : "aeiou",
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "estimatedNumberOfPicks" : 123,
  "packingSlipTemplateId" : 123,
  "orderAssemblyInstructions" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "lineItems" : [ {
    "itemSubGroupId" : 123,
    "extendedDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "orderAssemblyInstructions" : "aeiou",
    "distributionCode" : "aeiou",
    "itemMajorGroupId" : 123,
    "ncExtendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
    "customFields" : {
      "key" : "{}"
    },
    "itemLegacyLowStockContactId" : 123,
    "revDate" : "aeiou",
    "backorderQty" : 123,
    "orderSourceSKU" : "aeiou",
    "extendedCost" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123,
    "sku" : "aeiou",
    "unitDiscount" : 1.3579000000000001069366817318950779736042022705078125,
    "sector" : "aeiou",
    "itemAccountCodeId" : 123,
    "itemProductCodeId" : 123,
    "itemWeight" : 1.3579000000000001069366817318950779736042022705078125,
    "lobId" : 123,
    "shippedQty" : 123,
    "itemSummaryCodeId" : 123,
    "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
    "extendedSell" : 1.3579000000000001069366817318950779736042022705078125,
    "upc" : "aeiou",
    "productionLot" : "aeiou",
    "orderedQty" : 123,
    "vendorSKU" : "aeiou",
    "unitCost" : 1.3579000000000001069366817318950779736042022705078125,
    "poNoId" : 123,
    "unitSell" : 1.3579000000000001069366817318950779736042022705078125,
    "allowedQty" : 123,
    "chargeCode" : "aeiou"
  } ],
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "extraOrderData" : [ {
    "sequence" : "aeiou",
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "thirdPartyParcelAccountId" : 123,
  "carrierId" : 123,
  "customerNo" : "aeiou"
}}]
     
     - parameter orderId: (path) Id of the order to be returned. 

     - returns: RequestBuilder<Order> 
     */
    public class func getOrderByIdWithRequestBuilder(orderId orderId: Double) -> RequestBuilder<Order> {
        var path = "/beta/order/{orderId}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Order>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for an order.
     
     - parameter orderId: (path) Id of the order to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderTags(orderId orderId: Double, completion: ((error: ErrorType?) -> Void)) {
        getOrderTagsWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for an order.
     
     - GET /beta/order/{orderId}/tag
     - Get all existing order tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderId: (path) Id of the order to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOrderTagsWithRequestBuilder(orderId orderId: Double) -> RequestBuilder<Void> {
        var path = "/beta/order/{orderId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an order
     
     - parameter body: (body) Order to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrder(body body: Order, completion: ((error: ErrorType?) -> Void)) {
        updateOrderWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an order
     
     - PUT /beta/order
     - Updates an existing order using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Order to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderWithRequestBuilder(body body: Order) -> RequestBuilder<Void> {
        let path = "/beta/order"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an order custom fields
     
     - parameter body: (body) Order to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderCustomFields(body body: Order, completion: ((error: ErrorType?) -> Void)) {
        updateOrderCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an order custom fields
     
     - PUT /beta/order/customFields
     - Updates an existing order custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Order to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderCustomFieldsWithRequestBuilder(body body: Order) -> RequestBuilder<Void> {
        let path = "/beta/order/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
