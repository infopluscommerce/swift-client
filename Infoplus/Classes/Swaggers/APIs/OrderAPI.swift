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
     
     - POST /v2.0/order
     - Inserts a new order using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "billToCity" : "aeiou",
  "division" : 123,
  "lineItems" : [ {
    "itemSubGroupId" : 123,
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
  "billToZip" : "aeiou",
  "orderReason" : 123,
  "shipToEmail" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "billToStreet" : "aeiou",
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "shipToState" : "aeiou",
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "giftMessage" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
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
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "shipToZip" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToPhone" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "shipCode" : "aeiou",
  "omsOrderNo" : 123,
  "authorizedBy" : "aeiou",
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "carrierId" : 123,
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "customerNo" : "aeiou",
  "packingSlipTemplateId" : 123
}}]
     
     - parameter body: (body) Order to be inserted. 

     - returns: RequestBuilder<Order> 
     */
    public class func addOrderWithRequestBuilder(body body: Order) -> RequestBuilder<Order> {
        let path = "/v2.0/order"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Order>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
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
     
     - DELETE /v2.0/order/{orderId}
     - Deletes the order identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderId: (path) Id of the order to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderWithRequestBuilder(orderId orderId: Double) -> RequestBuilder<Void> {
        var path = "/v2.0/order/{orderId}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
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
     
     - GET /v2.0/order/duplicate/{orderId}
     - Returns a duplicated order identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "billToCity" : "aeiou",
  "division" : 123,
  "lineItems" : [ {
    "itemSubGroupId" : 123,
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
  "billToZip" : "aeiou",
  "orderReason" : 123,
  "shipToEmail" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "billToStreet" : "aeiou",
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "shipToState" : "aeiou",
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "giftMessage" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
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
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "shipToZip" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToPhone" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "shipCode" : "aeiou",
  "omsOrderNo" : 123,
  "authorizedBy" : "aeiou",
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "carrierId" : 123,
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "customerNo" : "aeiou",
  "packingSlipTemplateId" : 123
}}]
     
     - parameter orderId: (path) Id of the order to be duplicated. 

     - returns: RequestBuilder<Order> 
     */
    public class func getDuplicateOrderByIdWithRequestBuilder(orderId orderId: Double) -> RequestBuilder<Order> {
        var path = "/v2.0/order/duplicate/{orderId}"
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
     
     - GET /v2.0/order/search
     - Returns the list of orders that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "billToCity" : "aeiou",
  "division" : 123,
  "lineItems" : [ {
    "itemSubGroupId" : 123,
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
  "billToZip" : "aeiou",
  "orderReason" : 123,
  "shipToEmail" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "billToStreet" : "aeiou",
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "shipToState" : "aeiou",
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "giftMessage" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
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
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "shipToZip" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToPhone" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "shipCode" : "aeiou",
  "omsOrderNo" : 123,
  "authorizedBy" : "aeiou",
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "carrierId" : 123,
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "customerNo" : "aeiou",
  "packingSlipTemplateId" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Order]> 
     */
    public class func getOrderByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Order]> {
        let path = "/v2.0/order/search"
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
     
     - GET /v2.0/order/{orderId}
     - Returns the order identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "priceLevel" : "aeiou",
  "shipToStreet" : "aeiou",
  "billToCity" : "aeiou",
  "division" : 123,
  "lineItems" : [ {
    "itemSubGroupId" : 123,
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
  "billToZip" : "aeiou",
  "orderReason" : 123,
  "shipToEmail" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "billToStreet" : "aeiou",
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "shipToState" : "aeiou",
  "lobId" : 123,
  "orderSourceId" : 123,
  "batchNo" : "aeiou",
  "shipToStreet2" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "billToEmail" : "aeiou",
  "giftMessage" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "useOrderNoRoot" : 123,
  "costCenter" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCountry" : "aeiou",
  "billToPhone" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
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
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "stopBackOrders" : "aeiou",
  "parcelAccountId" : 123,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
  "enteredBy" : "aeiou",
  "shipVia" : "aeiou",
  "shipToZip" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToPhone" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "shipCode" : "aeiou",
  "omsOrderNo" : 123,
  "authorizedBy" : "aeiou",
  "extraLineItemData" : [ {
    "code" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "aeiou",
    "category" : "aeiou",
    "value" : "aeiou"
  } ],
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "carrierId" : 123,
  "customerOrderNo" : "aeiou",
  "mediaCode" : "aeiou",
  "customerNo" : "aeiou",
  "packingSlipTemplateId" : 123
}}]
     
     - parameter orderId: (path) Id of the order to be returned. 

     - returns: RequestBuilder<Order> 
     */
    public class func getOrderByIdWithRequestBuilder(orderId orderId: Double) -> RequestBuilder<Order> {
        var path = "/v2.0/order/{orderId}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Order>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

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
     
     - PUT /v2.0/order
     - Updates an existing order using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Order to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderWithRequestBuilder(body body: Order) -> RequestBuilder<Void> {
        let path = "/v2.0/order"
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
     
     - PUT /v2.0/order/customFields
     - Updates an existing order custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Order to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderCustomFieldsWithRequestBuilder(body body: Order) -> RequestBuilder<Void> {
        let path = "/v2.0/order/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
