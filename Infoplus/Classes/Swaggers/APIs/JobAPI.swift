//
// JobAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class JobAPI: APIBase {
    /**
     Create a job
     
     - parameter body: (body) Job to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJob(body body: Job, completion: ((data: Job?, error: ErrorType?) -> Void)) {
        addJobWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a job
     - POST /beta/job
     - Inserts a new job using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "outputs" : [ {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "totalReceipts" : 4,
  "inputs" : [ {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "customFields" : {
    "key" : "{}"
  },
  "totalSteps" : 7,
  "orderNoId" : 2.3021358869347654518833223846741020679473876953125,
  "fulfillmentPlanId" : 7,
  "totalAssemblies" : 1,
  "completedSteps" : 1,
  "totalPicks" : 1,
  "workBatchId" : 9,
  "jobNo" : "jobNo",
  "assemblyInstructions" : "assemblyInstructions",
  "id" : 0,
  "completedReceipts" : 5,
  "totalToDo" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "trackSteps" : false,
  "sourceJobRecipeId" : 6,
  "steps" : [ {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  }, {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  } ],
  "completedToDo" : 9,
  "layout" : "layout",
  "completedAssemblies" : 6,
  "warehouseId" : 5,
  "trackAssemblies" : false,
  "poNoId" : 7,
  "completedPicks" : 1,
  "assemblyQuantity" : 1,
  "status" : "status"
}}]
     
     - parameter body: (body) Job to be inserted. 

     - returns: RequestBuilder<Job> 
     */
    public class func addJobWithRequestBuilder(body body: Job) -> RequestBuilder<Job> {
        let path = "/beta/job"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Job>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a job
     
     - parameter jobId: (path) Id of the job to add an audit to 
     - parameter jobAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobAudit(jobId jobId: Int32, jobAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addJobAuditWithRequestBuilder(jobId: jobId, jobAudit: jobAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a job
     - PUT /beta/job/{jobId}/audit/{jobAudit}
     - Adds an audit to an existing job.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobId: (path) Id of the job to add an audit to 
     - parameter jobAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobAuditWithRequestBuilder(jobId jobId: Int32, jobAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/job/{jobId}/audit/{jobAudit}"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobAudit}", withString: "\(jobAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a job.
     
     - parameter jobId: (path) Id of the job to add a tag to 
     - parameter jobTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTag(jobId jobId: Int32, jobTag: String, completion: ((error: ErrorType?) -> Void)) {
        addJobTagWithRequestBuilder(jobId: jobId, jobTag: jobTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a job.
     - PUT /beta/job/{jobId}/tag/{jobTag}
     - Adds a tag to an existing job.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobId: (path) Id of the job to add a tag to 
     - parameter jobTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTagWithRequestBuilder(jobId jobId: Int32, jobTag: String) -> RequestBuilder<Void> {
        var path = "/beta/job/{jobId}/tag/{jobTag}"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTag}", withString: "\(jobTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a job
     
     - parameter jobId: (path) Id of the job to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJob(jobId jobId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteJobWithRequestBuilder(jobId: jobId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a job
     - DELETE /beta/job/{jobId}
     - Deletes the job identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobId: (path) Id of the job to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobWithRequestBuilder(jobId jobId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/job/{jobId}"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a job.
     
     - parameter jobId: (path) Id of the job to remove tag from 
     - parameter jobTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJobTag(jobId jobId: Int32, jobTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteJobTagWithRequestBuilder(jobId: jobId, jobTag: jobTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a job.
     - DELETE /beta/job/{jobId}/tag/{jobTag}
     - Deletes an existing job tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobId: (path) Id of the job to remove tag from 
     - parameter jobTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobTagWithRequestBuilder(jobId jobId: Int32, jobTag: String) -> RequestBuilder<Void> {
        var path = "/beta/job/{jobId}/tag/{jobTag}"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTag}", withString: "\(jobTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Run the ExecuteJob process.
     
     - parameter body: (body) Input data for ExecuteJob process. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func executeJob(body body: ExecuteJobInputAPIModel, completion: ((data: [ProcessOutputAPIModel]?, error: ErrorType?) -> Void)) {
        executeJobWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Run the ExecuteJob process.
     - POST /beta/job/executeJob
     - 
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "messageList" : [ "messageList", "messageList" ],
  "id" : "{}",
  "entity" : "{}",
  "status" : "status"
}, {
  "messageList" : [ "messageList", "messageList" ],
  "id" : "{}",
  "entity" : "{}",
  "status" : "status"
} ]}]
     
     - parameter body: (body) Input data for ExecuteJob process. 

     - returns: RequestBuilder<[ProcessOutputAPIModel]> 
     */
    public class func executeJobWithRequestBuilder(body body: ExecuteJobInputAPIModel) -> RequestBuilder<[ProcessOutputAPIModel]> {
        let path = "/beta/job/executeJob"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ProcessOutputAPIModel]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a job by id
     
     - parameter jobId: (path) Id of the job to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateJobById(jobId jobId: Int32, completion: ((data: Job?, error: ErrorType?) -> Void)) {
        getDuplicateJobByIdWithRequestBuilder(jobId: jobId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a job by id
     - GET /beta/job/duplicate/{jobId}
     - Returns a duplicated job identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "outputs" : [ {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "totalReceipts" : 4,
  "inputs" : [ {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "customFields" : {
    "key" : "{}"
  },
  "totalSteps" : 7,
  "orderNoId" : 2.3021358869347654518833223846741020679473876953125,
  "fulfillmentPlanId" : 7,
  "totalAssemblies" : 1,
  "completedSteps" : 1,
  "totalPicks" : 1,
  "workBatchId" : 9,
  "jobNo" : "jobNo",
  "assemblyInstructions" : "assemblyInstructions",
  "id" : 0,
  "completedReceipts" : 5,
  "totalToDo" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "trackSteps" : false,
  "sourceJobRecipeId" : 6,
  "steps" : [ {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  }, {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  } ],
  "completedToDo" : 9,
  "layout" : "layout",
  "completedAssemblies" : 6,
  "warehouseId" : 5,
  "trackAssemblies" : false,
  "poNoId" : 7,
  "completedPicks" : 1,
  "assemblyQuantity" : 1,
  "status" : "status"
}}]
     
     - parameter jobId: (path) Id of the job to be duplicated. 

     - returns: RequestBuilder<Job> 
     */
    public class func getDuplicateJobByIdWithRequestBuilder(jobId jobId: Int32) -> RequestBuilder<Job> {
        var path = "/beta/job/duplicate/{jobId}"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Job>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search jobs by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Job]?, error: ErrorType?) -> Void)) {
        getJobByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search jobs by filter
     - GET /beta/job/search
     - Returns the list of jobs that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "outputs" : [ {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "totalReceipts" : 4,
  "inputs" : [ {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "customFields" : {
    "key" : "{}"
  },
  "totalSteps" : 7,
  "orderNoId" : 2.3021358869347654518833223846741020679473876953125,
  "fulfillmentPlanId" : 7,
  "totalAssemblies" : 1,
  "completedSteps" : 1,
  "totalPicks" : 1,
  "workBatchId" : 9,
  "jobNo" : "jobNo",
  "assemblyInstructions" : "assemblyInstructions",
  "id" : 0,
  "completedReceipts" : 5,
  "totalToDo" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "trackSteps" : false,
  "sourceJobRecipeId" : 6,
  "steps" : [ {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  }, {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  } ],
  "completedToDo" : 9,
  "layout" : "layout",
  "completedAssemblies" : 6,
  "warehouseId" : 5,
  "trackAssemblies" : false,
  "poNoId" : 7,
  "completedPicks" : 1,
  "assemblyQuantity" : 1,
  "status" : "status"
}, {
  "outputs" : [ {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "totalReceipts" : 4,
  "inputs" : [ {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "customFields" : {
    "key" : "{}"
  },
  "totalSteps" : 7,
  "orderNoId" : 2.3021358869347654518833223846741020679473876953125,
  "fulfillmentPlanId" : 7,
  "totalAssemblies" : 1,
  "completedSteps" : 1,
  "totalPicks" : 1,
  "workBatchId" : 9,
  "jobNo" : "jobNo",
  "assemblyInstructions" : "assemblyInstructions",
  "id" : 0,
  "completedReceipts" : 5,
  "totalToDo" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "trackSteps" : false,
  "sourceJobRecipeId" : 6,
  "steps" : [ {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  }, {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  } ],
  "completedToDo" : 9,
  "layout" : "layout",
  "completedAssemblies" : 6,
  "warehouseId" : 5,
  "trackAssemblies" : false,
  "poNoId" : 7,
  "completedPicks" : 1,
  "assemblyQuantity" : 1,
  "status" : "status"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Job]> 
     */
    public class func getJobByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Job]> {
        let path = "/beta/job/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Job]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a job by id
     
     - parameter jobId: (path) Id of the job to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobById(jobId jobId: Int32, completion: ((data: Job?, error: ErrorType?) -> Void)) {
        getJobByIdWithRequestBuilder(jobId: jobId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a job by id
     - GET /beta/job/{jobId}
     - Returns the job identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "outputs" : [ {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 2,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "totalReceipts" : 4,
  "inputs" : [ {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  }, {
    "quantity" : 3,
    "customFields" : {
      "key" : "{}"
    },
    "sku" : "sku"
  } ],
  "customFields" : {
    "key" : "{}"
  },
  "totalSteps" : 7,
  "orderNoId" : 2.3021358869347654518833223846741020679473876953125,
  "fulfillmentPlanId" : 7,
  "totalAssemblies" : 1,
  "completedSteps" : 1,
  "totalPicks" : 1,
  "workBatchId" : 9,
  "jobNo" : "jobNo",
  "assemblyInstructions" : "assemblyInstructions",
  "id" : 0,
  "completedReceipts" : 5,
  "totalToDo" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "trackSteps" : false,
  "sourceJobRecipeId" : 6,
  "steps" : [ {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  }, {
    "sequenceNo" : 4,
    "customFields" : {
      "key" : "{}"
    },
    "name" : "name",
    "assemblyInstructions" : "assemblyInstructions"
  } ],
  "completedToDo" : 9,
  "layout" : "layout",
  "completedAssemblies" : 6,
  "warehouseId" : 5,
  "trackAssemblies" : false,
  "poNoId" : 7,
  "completedPicks" : 1,
  "assemblyQuantity" : 1,
  "status" : "status"
}}]
     
     - parameter jobId: (path) Id of the job to be returned. 

     - returns: RequestBuilder<Job> 
     */
    public class func getJobByIdWithRequestBuilder(jobId jobId: Int32) -> RequestBuilder<Job> {
        var path = "/beta/job/{jobId}"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Job>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a job.
     
     - parameter jobId: (path) Id of the job to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTags(jobId jobId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getJobTagsWithRequestBuilder(jobId: jobId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a job.
     - GET /beta/job/{jobId}/tag
     - Get all existing job tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobId: (path) Id of the job to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getJobTagsWithRequestBuilder(jobId jobId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/job/{jobId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a job
     
     - parameter body: (body) Job to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateJob(body body: Job, completion: ((error: ErrorType?) -> Void)) {
        updateJobWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a job
     - PUT /beta/job
     - Updates an existing job using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Job to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateJobWithRequestBuilder(body body: Job) -> RequestBuilder<Void> {
        let path = "/beta/job"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
