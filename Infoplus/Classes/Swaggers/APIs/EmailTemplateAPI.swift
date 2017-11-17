//
// EmailTemplateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class EmailTemplateAPI: APIBase {
    /**
     
     Create an emailTemplate
     
     - parameter body: (body) EmailTemplate to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addEmailTemplate(body body: EmailTemplate, completion: ((data: EmailTemplate?, error: ErrorType?) -> Void)) {
        addEmailTemplateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an emailTemplate
     
     - POST /v2.0/emailTemplate
     - Inserts a new emailTemplate using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "emailTemplateType" : "aeiou",
  "subjectText" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "fromName" : "aeiou",
  "fromAddress" : "aeiou",
  "id" : 123,
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) EmailTemplate to be inserted. 

     - returns: RequestBuilder<EmailTemplate> 
     */
    public class func addEmailTemplateWithRequestBuilder(body body: EmailTemplate) -> RequestBuilder<EmailTemplate> {
        let path = "/v2.0/emailTemplate"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<EmailTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an emailTemplate
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteEmailTemplate(emailTemplateId emailTemplateId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteEmailTemplateWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an emailTemplate
     
     - DELETE /v2.0/emailTemplate/{emailTemplateId}
     - Deletes the emailTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteEmailTemplateWithRequestBuilder(emailTemplateId emailTemplateId: Int) -> RequestBuilder<Void> {
        var path = "/v2.0/emailTemplate/{emailTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated an emailTemplate by id
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateEmailTemplateById(emailTemplateId emailTemplateId: Int, completion: ((data: EmailTemplate?, error: ErrorType?) -> Void)) {
        getDuplicateEmailTemplateByIdWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated an emailTemplate by id
     
     - GET /v2.0/emailTemplate/duplicate/{emailTemplateId}
     - Returns a duplicated emailTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "emailTemplateType" : "aeiou",
  "subjectText" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "fromName" : "aeiou",
  "fromAddress" : "aeiou",
  "id" : 123,
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be duplicated. 

     - returns: RequestBuilder<EmailTemplate> 
     */
    public class func getDuplicateEmailTemplateByIdWithRequestBuilder(emailTemplateId emailTemplateId: Int) -> RequestBuilder<EmailTemplate> {
        var path = "/v2.0/emailTemplate/duplicate/{emailTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<EmailTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search emailTemplates by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTemplateByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [EmailTemplate]?, error: ErrorType?) -> Void)) {
        getEmailTemplateByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search emailTemplates by filter
     
     - GET /v2.0/emailTemplate/search
     - Returns the list of emailTemplates that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "emailTemplateType" : "aeiou",
  "subjectText" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "fromName" : "aeiou",
  "fromAddress" : "aeiou",
  "id" : 123,
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[EmailTemplate]> 
     */
    public class func getEmailTemplateByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[EmailTemplate]> {
        let path = "/v2.0/emailTemplate/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[EmailTemplate]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an emailTemplate by id
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTemplateById(emailTemplateId emailTemplateId: Int, completion: ((data: EmailTemplate?, error: ErrorType?) -> Void)) {
        getEmailTemplateByIdWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an emailTemplate by id
     
     - GET /v2.0/emailTemplate/{emailTemplateId}
     - Returns the emailTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "emailTemplateType" : "aeiou",
  "subjectText" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "aeiou",
  "fromName" : "aeiou",
  "fromAddress" : "aeiou",
  "id" : 123,
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be returned. 

     - returns: RequestBuilder<EmailTemplate> 
     */
    public class func getEmailTemplateByIdWithRequestBuilder(emailTemplateId emailTemplateId: Int) -> RequestBuilder<EmailTemplate> {
        var path = "/v2.0/emailTemplate/{emailTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<EmailTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an emailTemplate
     
     - parameter body: (body) EmailTemplate to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateEmailTemplate(body body: EmailTemplate, completion: ((error: ErrorType?) -> Void)) {
        updateEmailTemplateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an emailTemplate
     
     - PUT /v2.0/emailTemplate
     - Updates an existing emailTemplate using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) EmailTemplate to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateEmailTemplateWithRequestBuilder(body body: EmailTemplate) -> RequestBuilder<Void> {
        let path = "/v2.0/emailTemplate"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an emailTemplate custom fields
     
     - parameter body: (body) EmailTemplate to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateEmailTemplateCustomFields(body body: EmailTemplate, completion: ((error: ErrorType?) -> Void)) {
        updateEmailTemplateCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an emailTemplate custom fields
     
     - PUT /v2.0/emailTemplate/customFields
     - Updates an existing emailTemplate custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) EmailTemplate to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateEmailTemplateCustomFieldsWithRequestBuilder(body body: EmailTemplate) -> RequestBuilder<Void> {
        let path = "/v2.0/emailTemplate/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
