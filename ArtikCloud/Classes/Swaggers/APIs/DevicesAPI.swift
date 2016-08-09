//
// DevicesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit



public class DevicesAPI: APIBase {
    /**
     
     Add Device
     
     - parameter device: (body) Device to be added to the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addDevice(device device: Device, completion: ((data: DeviceEnvelope?, error: ErrorType?) -> Void)) {
        addDeviceWithRequestBuilder(device: device).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Add Device
     
     - parameter device: (body) Device to be added to the user 
     - returns: Promise<DeviceEnvelope>
     */
    public class func addDevice(device device: Device) -> Promise<DeviceEnvelope> {
        let deferred = Promise<DeviceEnvelope>.pendingPromise()
        addDevice(device: device) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Add Device
     
     - POST /devices
     - Create a device
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "eid" : "aeiou",
    "dtid" : "aeiou",
    "manifestVersion" : 123,
    "certificateInfo" : "aeiou",
    "createdOn" : 123456789,
    "connected" : true,
    "uid" : "aeiou",
    "manifestVersionPolicy" : "aeiou",
    "name" : "aeiou",
    "needProviderAuth" : true,
    "certificateSignature" : "aeiou",
    "id" : "aeiou",
    "providerCredentials" : {
      "key" : ""
    },
    "properties" : {
      "key" : ""
    }
  }
}}]
     
     - parameter device: (body) Device to be added to the user 

     - returns: RequestBuilder<DeviceEnvelope> 
     */
    public class func addDeviceWithRequestBuilder(device device: Device) -> RequestBuilder<DeviceEnvelope> {
        let path = "/devices"
        let URLString = ArtikCloudAPI.basePath + path
        
        let parameters = device.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DeviceEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete Device
     
     - parameter deviceId: (path) deviceId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteDevice(deviceId deviceId: String, completion: ((data: DeviceEnvelope?, error: ErrorType?) -> Void)) {
        deleteDeviceWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Delete Device
     
     - parameter deviceId: (path) deviceId 
     - returns: Promise<DeviceEnvelope>
     */
    public class func deleteDevice(deviceId deviceId: String) -> Promise<DeviceEnvelope> {
        let deferred = Promise<DeviceEnvelope>.pendingPromise()
        deleteDevice(deviceId: deviceId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Delete Device
     
     - DELETE /devices/{deviceId}
     - Deletes a device
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "eid" : "aeiou",
    "dtid" : "aeiou",
    "manifestVersion" : 123,
    "certificateInfo" : "aeiou",
    "createdOn" : 123456789,
    "connected" : true,
    "uid" : "aeiou",
    "manifestVersionPolicy" : "aeiou",
    "name" : "aeiou",
    "needProviderAuth" : true,
    "certificateSignature" : "aeiou",
    "id" : "aeiou",
    "providerCredentials" : {
      "key" : ""
    },
    "properties" : {
      "key" : ""
    }
  }
}}]
     
     - parameter deviceId: (path) deviceId 

     - returns: RequestBuilder<DeviceEnvelope> 
     */
    public class func deleteDeviceWithRequestBuilder(deviceId deviceId: String) -> RequestBuilder<DeviceEnvelope> {
        var path = "/devices/{deviceId}"
        path = path.stringByReplacingOccurrencesOfString("{deviceId}", withString: "\(deviceId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DeviceEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete Device Token
     
     - parameter deviceId: (path) deviceId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteDeviceToken(deviceId deviceId: String, completion: ((data: DeviceTokenEnvelope?, error: ErrorType?) -> Void)) {
        deleteDeviceTokenWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Delete Device Token
     
     - parameter deviceId: (path) deviceId 
     - returns: Promise<DeviceTokenEnvelope>
     */
    public class func deleteDeviceToken(deviceId deviceId: String) -> Promise<DeviceTokenEnvelope> {
        let deferred = Promise<DeviceTokenEnvelope>.pendingPromise()
        deleteDeviceToken(deviceId: deviceId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Delete Device Token
     
     - DELETE /devices/{deviceId}/tokens
     - Deletes a device's token
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "uid" : "aeiou",
    "accessToken" : "aeiou",
    "did" : "aeiou",
    "cid" : "aeiou"
  }
}}]
     
     - parameter deviceId: (path) deviceId 

     - returns: RequestBuilder<DeviceTokenEnvelope> 
     */
    public class func deleteDeviceTokenWithRequestBuilder(deviceId deviceId: String) -> RequestBuilder<DeviceTokenEnvelope> {
        var path = "/devices/{deviceId}/tokens"
        path = path.stringByReplacingOccurrencesOfString("{deviceId}", withString: "\(deviceId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DeviceTokenEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get Device
     
     - parameter deviceId: (path) deviceId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDevice(deviceId deviceId: String, completion: ((data: DeviceEnvelope?, error: ErrorType?) -> Void)) {
        getDeviceWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Get Device
     
     - parameter deviceId: (path) deviceId 
     - returns: Promise<DeviceEnvelope>
     */
    public class func getDevice(deviceId deviceId: String) -> Promise<DeviceEnvelope> {
        let deferred = Promise<DeviceEnvelope>.pendingPromise()
        getDevice(deviceId: deviceId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Get Device
     
     - GET /devices/{deviceId}
     - Retrieves a device
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "eid" : "aeiou",
    "dtid" : "aeiou",
    "manifestVersion" : 123,
    "certificateInfo" : "aeiou",
    "createdOn" : 123456789,
    "connected" : true,
    "uid" : "aeiou",
    "manifestVersionPolicy" : "aeiou",
    "name" : "aeiou",
    "needProviderAuth" : true,
    "certificateSignature" : "aeiou",
    "id" : "aeiou",
    "providerCredentials" : {
      "key" : ""
    },
    "properties" : {
      "key" : ""
    }
  }
}}]
     
     - parameter deviceId: (path) deviceId 

     - returns: RequestBuilder<DeviceEnvelope> 
     */
    public class func getDeviceWithRequestBuilder(deviceId deviceId: String) -> RequestBuilder<DeviceEnvelope> {
        var path = "/devices/{deviceId}"
        path = path.stringByReplacingOccurrencesOfString("{deviceId}", withString: "\(deviceId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DeviceEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get Device Token
     
     - parameter deviceId: (path) deviceId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDeviceToken(deviceId deviceId: String, completion: ((data: DeviceTokenEnvelope?, error: ErrorType?) -> Void)) {
        getDeviceTokenWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Get Device Token
     
     - parameter deviceId: (path) deviceId 
     - returns: Promise<DeviceTokenEnvelope>
     */
    public class func getDeviceToken(deviceId deviceId: String) -> Promise<DeviceTokenEnvelope> {
        let deferred = Promise<DeviceTokenEnvelope>.pendingPromise()
        getDeviceToken(deviceId: deviceId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Get Device Token
     
     - GET /devices/{deviceId}/tokens
     - Retrieves a device's token
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "uid" : "aeiou",
    "accessToken" : "aeiou",
    "did" : "aeiou",
    "cid" : "aeiou"
  }
}}]
     
     - parameter deviceId: (path) deviceId 

     - returns: RequestBuilder<DeviceTokenEnvelope> 
     */
    public class func getDeviceTokenWithRequestBuilder(deviceId deviceId: String) -> RequestBuilder<DeviceTokenEnvelope> {
        var path = "/devices/{deviceId}/tokens"
        path = path.stringByReplacingOccurrencesOfString("{deviceId}", withString: "\(deviceId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DeviceTokenEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update Device
     
     - parameter deviceId: (path) deviceId 
     - parameter device: (body) Device to be updated 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateDevice(deviceId deviceId: String, device: Device, completion: ((data: DeviceEnvelope?, error: ErrorType?) -> Void)) {
        updateDeviceWithRequestBuilder(deviceId: deviceId, device: device).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Update Device
     
     - parameter deviceId: (path) deviceId 
     - parameter device: (body) Device to be updated 
     - returns: Promise<DeviceEnvelope>
     */
    public class func updateDevice(deviceId deviceId: String, device: Device) -> Promise<DeviceEnvelope> {
        let deferred = Promise<DeviceEnvelope>.pendingPromise()
        updateDevice(deviceId: deviceId, device: device) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Update Device
     
     - PUT /devices/{deviceId}
     - Updates a device
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "eid" : "aeiou",
    "dtid" : "aeiou",
    "manifestVersion" : 123,
    "certificateInfo" : "aeiou",
    "createdOn" : 123456789,
    "connected" : true,
    "uid" : "aeiou",
    "manifestVersionPolicy" : "aeiou",
    "name" : "aeiou",
    "needProviderAuth" : true,
    "certificateSignature" : "aeiou",
    "id" : "aeiou",
    "providerCredentials" : {
      "key" : ""
    },
    "properties" : {
      "key" : ""
    }
  }
}}]
     
     - parameter deviceId: (path) deviceId 
     - parameter device: (body) Device to be updated 

     - returns: RequestBuilder<DeviceEnvelope> 
     */
    public class func updateDeviceWithRequestBuilder(deviceId deviceId: String, device: Device) -> RequestBuilder<DeviceEnvelope> {
        var path = "/devices/{deviceId}"
        path = path.stringByReplacingOccurrencesOfString("{deviceId}", withString: "\(deviceId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path
        print(URLString)
        
        let parameters = device.encodeToJSON() as? [String:AnyObject]
        print(parameters!)
        let requestBuilder: RequestBuilder<DeviceEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update Device Token
     
     - parameter deviceId: (path) deviceId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateDeviceToken(deviceId deviceId: String, completion: ((data: DeviceTokenEnvelope?, error: ErrorType?) -> Void)) {
        updateDeviceTokenWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     
     Update Device Token
     
     - parameter deviceId: (path) deviceId 
     - returns: Promise<DeviceTokenEnvelope>
     */
    public class func updateDeviceToken(deviceId deviceId: String) -> Promise<DeviceTokenEnvelope> {
        let deferred = Promise<DeviceTokenEnvelope>.pendingPromise()
        updateDeviceToken(deviceId: deviceId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     
     Update Device Token
     
     - PUT /devices/{deviceId}/tokens
     - Updates a device's token
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "uid" : "aeiou",
    "accessToken" : "aeiou",
    "did" : "aeiou",
    "cid" : "aeiou"
  }
}}]
     
     - parameter deviceId: (path) deviceId 

     - returns: RequestBuilder<DeviceTokenEnvelope> 
     */
    public class func updateDeviceTokenWithRequestBuilder(deviceId deviceId: String) -> RequestBuilder<DeviceTokenEnvelope> {
        var path = "/devices/{deviceId}/tokens"
        path = path.stringByReplacingOccurrencesOfString("{deviceId}", withString: "\(deviceId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DeviceTokenEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }
    
    // MARK: Add Device Endpoint
    public class func addDevice(device: Device, completion: ((data: DeviceEnvelope?, error: ErrorType?) -> Void)) {
        addDeviceWithRequestBuilder(device: device).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }
    
    public class func addDevice(device: Device) -> Promise<DeviceEnvelope> {
        let deferred = Promise<DeviceEnvelope>.pendingPromise()
        addDevice(device: device) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    public class func addDeviceWithRequestBuilder(device: Device) -> RequestBuilder<DeviceEnvelope> {
        var path = "/devices"
        let URLString = ArtikCloudAPI.basePath + path
        
        let parameters = device.encodeToJSON() as? [String:AnyObject]
        
        let requestBuilder: RequestBuilder<DeviceEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()
        
        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
