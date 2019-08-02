//
// JobTimeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class JobTimeAPI: APIBase {
    /**
     Create a jobTime
     
     - parameter body: (body) JobTime to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTime(body body: JobTime, completion: ((data: JobTime?, error: ErrorType?) -> Void)) {
        addJobTimeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a jobTime
     - POST /beta/jobTime
     - Inserts a new jobTime using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "secondDuration" : 6,
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "userId" : 1,
  "jobTypeId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}}]
     
     - parameter body: (body) JobTime to be inserted. 

     - returns: RequestBuilder<JobTime> 
     */
    public class func addJobTimeWithRequestBuilder(body body: JobTime) -> RequestBuilder<JobTime> {
        let path = "/beta/jobTime"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<JobTime>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a jobTime
     
     - parameter jobTimeId: (path) Id of the jobTime to add an audit to 
     - parameter jobTimeAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeAudit(jobTimeId jobTimeId: Int32, jobTimeAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addJobTimeAuditWithRequestBuilder(jobTimeId: jobTimeId, jobTimeAudit: jobTimeAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a jobTime
     - PUT /beta/jobTime/{jobTimeId}/audit/{jobTimeAudit}
     - Adds an audit to an existing jobTime.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeId: (path) Id of the jobTime to add an audit to 
     - parameter jobTimeAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTimeAuditWithRequestBuilder(jobTimeId jobTimeId: Int32, jobTimeAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTime/{jobTimeId}/audit/{jobTimeAudit}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTimeAudit}", withString: "\(jobTimeAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a jobTime
     
     - parameter jobTimeId: (path) Id of the jobTime to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeFile(jobTimeId jobTimeId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addJobTimeFileWithRequestBuilder(jobTimeId: jobTimeId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a jobTime
     - POST /beta/jobTime/{jobTimeId}/file/{fileName}
     - Adds a file to an existing jobTime.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeId: (path) Id of the jobTime to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTimeFileWithRequestBuilder(jobTimeId jobTimeId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTime/{jobTimeId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a jobTime.
     
     - parameter jobTimeId: (path) Id of the jobTime to add a tag to 
     - parameter jobTimeTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeTag(jobTimeId jobTimeId: Int32, jobTimeTag: String, completion: ((error: ErrorType?) -> Void)) {
        addJobTimeTagWithRequestBuilder(jobTimeId: jobTimeId, jobTimeTag: jobTimeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a jobTime.
     - PUT /beta/jobTime/{jobTimeId}/tag/{jobTimeTag}
     - Adds a tag to an existing jobTime.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeId: (path) Id of the jobTime to add a tag to 
     - parameter jobTimeTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTimeTagWithRequestBuilder(jobTimeId jobTimeId: Int32, jobTimeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTime/{jobTimeId}/tag/{jobTimeTag}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTimeTag}", withString: "\(jobTimeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a jobTime
     
     - parameter jobTimeId: (path) Id of the jobTime to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJobTime(jobTimeId jobTimeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteJobTimeWithRequestBuilder(jobTimeId: jobTimeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a jobTime
     - DELETE /beta/jobTime/{jobTimeId}
     - Deletes the jobTime identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeId: (path) Id of the jobTime to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobTimeWithRequestBuilder(jobTimeId jobTimeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/jobTime/{jobTimeId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a jobTime.
     
     - parameter jobTimeId: (path) Id of the jobTime to remove tag from 
     - parameter jobTimeTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJobTimeTag(jobTimeId jobTimeId: Int32, jobTimeTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteJobTimeTagWithRequestBuilder(jobTimeId: jobTimeId, jobTimeTag: jobTimeTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a jobTime.
     - DELETE /beta/jobTime/{jobTimeId}/tag/{jobTimeTag}
     - Deletes an existing jobTime tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeId: (path) Id of the jobTime to remove tag from 
     - parameter jobTimeTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobTimeTagWithRequestBuilder(jobTimeId jobTimeId: Int32, jobTimeTag: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTime/{jobTimeId}/tag/{jobTimeTag}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTimeTag}", withString: "\(jobTimeTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a jobTime by id
     
     - parameter jobTimeId: (path) Id of the jobTime to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateJobTimeById(jobTimeId jobTimeId: Int32, completion: ((data: JobTime?, error: ErrorType?) -> Void)) {
        getDuplicateJobTimeByIdWithRequestBuilder(jobTimeId: jobTimeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a jobTime by id
     - GET /beta/jobTime/duplicate/{jobTimeId}
     - Returns a duplicated jobTime identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "secondDuration" : 6,
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "userId" : 1,
  "jobTypeId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}}]
     
     - parameter jobTimeId: (path) Id of the jobTime to be duplicated. 

     - returns: RequestBuilder<JobTime> 
     */
    public class func getDuplicateJobTimeByIdWithRequestBuilder(jobTimeId jobTimeId: Int32) -> RequestBuilder<JobTime> {
        var path = "/beta/jobTime/duplicate/{jobTimeId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<JobTime>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search jobTimes by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTimeByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [JobTime]?, error: ErrorType?) -> Void)) {
        getJobTimeByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search jobTimes by filter
     - GET /beta/jobTime/search
     - Returns the list of jobTimes that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "secondDuration" : 6,
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "userId" : 1,
  "jobTypeId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}, {
  "secondDuration" : 6,
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "userId" : 1,
  "jobTypeId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[JobTime]> 
     */
    public class func getJobTimeByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[JobTime]> {
        let path = "/beta/jobTime/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[JobTime]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a jobTime by id
     
     - parameter jobTimeId: (path) Id of the jobTime to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTimeById(jobTimeId jobTimeId: Int32, completion: ((data: JobTime?, error: ErrorType?) -> Void)) {
        getJobTimeByIdWithRequestBuilder(jobTimeId: jobTimeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a jobTime by id
     - GET /beta/jobTime/{jobTimeId}
     - Returns the jobTime identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "secondDuration" : 6,
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "userId" : 1,
  "jobTypeId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}}]
     
     - parameter jobTimeId: (path) Id of the jobTime to be returned. 

     - returns: RequestBuilder<JobTime> 
     */
    public class func getJobTimeByIdWithRequestBuilder(jobTimeId jobTimeId: Int32) -> RequestBuilder<JobTime> {
        var path = "/beta/jobTime/{jobTimeId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<JobTime>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a jobTime.
     
     - parameter jobTimeId: (path) Id of the jobTime to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTimeTags(jobTimeId jobTimeId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getJobTimeTagsWithRequestBuilder(jobTimeId: jobTimeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a jobTime.
     - GET /beta/jobTime/{jobTimeId}/tag
     - Get all existing jobTime tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeId: (path) Id of the jobTime to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getJobTimeTagsWithRequestBuilder(jobTimeId jobTimeId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/jobTime/{jobTimeId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeId}", withString: "\(jobTimeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a jobTime
     
     - parameter body: (body) JobTime to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateJobTime(body body: JobTime, completion: ((error: ErrorType?) -> Void)) {
        updateJobTimeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a jobTime
     - PUT /beta/jobTime
     - Updates an existing jobTime using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) JobTime to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateJobTimeWithRequestBuilder(body body: JobTime) -> RequestBuilder<Void> {
        let path = "/beta/jobTime"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a jobTime custom fields
     
     - parameter body: (body) JobTime to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateJobTimeCustomFields(body body: JobTime, completion: ((error: ErrorType?) -> Void)) {
        updateJobTimeCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a jobTime custom fields
     - PUT /beta/jobTime/customFields
     - Updates an existing jobTime custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) JobTime to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateJobTimeCustomFieldsWithRequestBuilder(body body: JobTime) -> RequestBuilder<Void> {
        let path = "/beta/jobTime/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
