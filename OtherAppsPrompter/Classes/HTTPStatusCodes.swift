//    MIT License
//
//    Copyright (c) 2018 Mark Bridges
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.


import Foundation

/// HTTP status codes as per the [IANA HTTP status code registry](http://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml).
///
/// Last updated: Fri, 14 Apr 2017 16:35:35 GMT
///
/// - seealso: [Wikipedia page - List of HTTP status codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
/// - seealso: [HTTP protocol standard - Status Code Definitions](https://tools.ietf.org/html/rfc2616#section-10)
@objc enum HTTPStatusCode: Int {
    
    /// Continue: 100
    ///
    /// - seealso: [RFC7231, Section 6.2.1](http://www.iana.org/go/rfc7231#section-6.2.1)
    case `continue` = 100
    
    /// Switching Protocols: 101
    ///
    /// - seealso: [RFC7231, Section 6.2.2](http://www.iana.org/go/rfc7231#section-6.2.2)
    case switchingProtocols = 101
    
    /// Processing: 102
    ///
    /// - seealso: [RFC2518](http://www.iana.org/go/rfc2518)
    case processing = 102
    
    /// Checkpoint: 103
    ///
    /// Used in the resumable requests proposal to resume aborted PUT or POST requests.
    case checkpoint = 103
    
    /// OK: 200
    ///
    /// - seealso: [RFC7231, Section 6.3.1](http://www.iana.org/go/rfc7231#section-6.3.1)
    @objc(HTTPStatusCodeOK)
    case ok = 200
    
    /// Created: 201
    ///
    /// - seealso: [RFC7231, Section 6.3.2](http://www.iana.org/go/rfc7231#section-6.3.2)
    case created = 201
    
    /// Accepted: 202
    ///
    /// - seealso: [RFC7231, Section 6.3.3](http://www.iana.org/go/rfc7231#section-6.3.3)
    case accepted = 202
    
    /// Non-Authoritative Information: 203
    ///
    /// - seealso: [RFC7231, Section 6.3.4](http://www.iana.org/go/rfc7231#section-6.3.4)
    case nonAuthoritativeInformation = 203
    
    /// No Content: 204
    ///
    /// - seealso: [RFC7231, Section 6.3.5](http://www.iana.org/go/rfc7231#section-6.3.5)
    case noContent = 204
    
    /// Reset Content: 205
    ///
    /// - seealso: [RFC7231, Section 6.3.6](http://www.iana.org/go/rfc7231#section-6.3.6)
    case resetContent = 205
    
    /// Partial Content: 206
    ///
    /// - seealso: [RFC7233, Section 4.1](http://www.iana.org/go/rfc7233#section-4.1)
    case partialContent = 206
    
    /// Multi-Status: 207
    ///
    /// - seealso: [RFC4918](http://www.iana.org/go/rfc4918)
    case multiStatus = 207
    
    /// Already Reported: 208
    ///
    /// - seealso: [RFC5842](http://www.iana.org/go/rfc5842)
    case alreadyReported = 208
    
    /// IM Used: 226
    ///
    /// - seealso: [RFC3229](http://www.iana.org/go/rfc3229)
    @objc(HTTPStatusCodeIMUsed)
    case imUsed = 226
    
    /// Multiple Choices: 300
    ///
    /// - seealso: [RFC7231, Section 6.4.1](http://www.iana.org/go/rfc7231#section-6.4.1)
    case multipleChoices = 300
    
    /// Moved Permanently: 301
    ///
    /// - seealso: [RFC7231, Section 6.4.2](http://www.iana.org/go/rfc7231#section-6.4.2)
    case movedPermanently = 301
    
    /// Found: 302
    ///
    /// - seealso: [RFC7231, Section 6.4.3](http://www.iana.org/go/rfc7231#section-6.4.3)
    case found = 302
    
    /// See Other: 303
    ///
    /// - seealso: [RFC7231, Section 6.4.4](http://www.iana.org/go/rfc7231#section-6.4.4)
    case seeOther = 303
    
    /// Not Modified: 304
    ///
    /// - seealso: [RFC7232, Section 4.1](http://www.iana.org/go/rfc7232#section-4.1)
    case notModified = 304
    
    /// Use Proxy: 305
    ///
    /// - seealso: [RFC7231, Section 6.4.5](http://www.iana.org/go/rfc7231#section-6.4.5)
    case useProxy = 305
    
    /// Temporary Redirect: 307
    ///
    /// - seealso: [RFC7231, Section 6.4.7](http://www.iana.org/go/rfc7231#section-6.4.7)
    case temporaryRedirect = 307
    
    /// Permanent Redirect: 308
    ///
    /// - seealso: [RFC7538](http://www.iana.org/go/rfc7538)
    case permanentRedirect = 308
    
    /// Bad Request: 400
    ///
    /// - seealso: [RFC7231, Section 6.5.1](http://www.iana.org/go/rfc7231#section-6.5.1)
    case badRequest = 400
    
    /// Unauthorized: 401
    ///
    /// - seealso: [RFC7235, Section 3.1](http://www.iana.org/go/rfc7235#section-3.1)
    case unauthorized = 401
    
    /// Payment Required: 402
    ///
    /// - seealso: [RFC7231, Section 6.5.2](http://www.iana.org/go/rfc7231#section-6.5.2)
    case paymentRequired = 402
    
    /// Forbidden: 403
    ///
    /// - seealso: [RFC7231, Section 6.5.3](http://www.iana.org/go/rfc7231#section-6.5.3)
    case forbidden = 403
    
    /// Not Found: 404
    ///
    /// - seealso: [RFC7231, Section 6.5.4](http://www.iana.org/go/rfc7231#section-6.5.4)
    case notFound = 404
    
    /// Method Not Allowed: 405
    ///
    /// - seealso: [RFC7231, Section 6.5.5](http://www.iana.org/go/rfc7231#section-6.5.5)
    case methodNotAllowed = 405
    
    /// Not Acceptable: 406
    ///
    /// - seealso: [RFC7231, Section 6.5.6](http://www.iana.org/go/rfc7231#section-6.5.6)
    case notAcceptable = 406
    
    /// Proxy Authentication Required: 407
    ///
    /// - seealso: [RFC7235, Section 3.2](http://www.iana.org/go/rfc7235#section-3.2)
    case proxyAuthenticationRequired = 407
    
    /// Request Timeout: 408
    ///
    /// - seealso: [RFC7231, Section 6.5.7](http://www.iana.org/go/rfc7231#section-6.5.7)
    case requestTimeout = 408
    
    /// Conflict: 409
    ///
    /// - seealso: [RFC7231, Section 6.5.8](http://www.iana.org/go/rfc7231#section-6.5.8)
    case conflict = 409
    
    /// Gone: 410
    ///
    /// - seealso: [RFC7231, Section 6.5.9](http://www.iana.org/go/rfc7231#section-6.5.9)
    case gone = 410
    
    /// Length Required: 411
    ///
    /// - seealso: [RFC7231, Section 6.5.10](http://www.iana.org/go/rfc7231#section-6.5.10)
    case lengthRequired = 411
    
    /// Precondition Failed: 412
    ///
    /// - seealso: [RFC7232, Section 4.2](http://www.iana.org/go/rfc7232#section-4.2)
    /// - seealso: [RFC8144, Section 3.2](http://www.iana.org/go/rfc8144#section-3.2)
    case preconditionFailed = 412
    
    /// Payload Too Large: 413
    ///
    /// - seealso: [RFC7231, Section 6.5.11](http://www.iana.org/go/rfc7231#section-6.5.11)
    case payloadTooLarge = 413
    
    /// URI Too Long: 414
    ///
    /// - seealso: [RFC7231, Section 6.5.12](http://www.iana.org/go/rfc7231#section-6.5.12)
    @objc(HTTPStatusCodeURITooLong)
    case uriTooLong = 414
    
    /// Unsupported Media Type: 415
    ///
    /// - seealso: [RFC7231, Section 6.5.13](http://www.iana.org/go/rfc7231#section-6.5.13)
    /// - seealso: [RFC7694, Section 3](http://www.iana.org/go/rfc7694#section-3)
    case unsupportedMediaType = 415
    
    /// Range Not Satisfiable: 416
    ///
    /// - seealso: [RFC7233, Section 4.4](http://www.iana.org/go/rfc7233#section-4.4)
    case rangeNotSatisfiable = 416
    
    /// Expectation Failed: 417
    ///
    /// - seealso: [RFC7231, Section 6.5.14](http://www.iana.org/go/rfc7231#section-6.5.14)
    case expectationFailed = 417
    
    /// I'm A Teapot: 418
    ///
    /// Returned by tea pots requested to brew coffee
    ///
    /// - seealso: [RFC 2324](http://www.iana.org/go/rfc2324)
    case imATeapot = 418
    
    /// Misdirected Request: 421
    ///
    /// - seealso: [RFC7540, Section 9.1.2](http://www.iana.org/go/rfc7540#section-9.1.2)
    case misdirectedRequest = 421
    
    /// Unprocessable Entity: 422
    ///
    /// - seealso: [RFC4918](http://www.iana.org/go/rfc4918)
    case unprocessableEntity = 422
    
    /// Locked: 423
    ///
    /// - seealso: [RFC4918](http://www.iana.org/go/rfc4918)
    case locked = 423
    
    /// Failed Dependency: 424
    ///
    /// - seealso: [RFC4918](http://www.iana.org/go/rfc4918)
    case failedDependency = 424
    
    /// Upgrade Required: 426
    ///
    /// - seealso: [RFC7231, Section 6.5.15](http://www.iana.org/go/rfc7231#section-6.5.15)
    case upgradeRequired = 426
    
    /// Precondition Required: 428
    ///
    /// - seealso: [RFC6585](http://www.iana.org/go/rfc6585)
    case preconditionRequired = 428
    
    /// Too Many Requests: 429
    ///
    /// - seealso: [RFC6585](http://www.iana.org/go/rfc6585)
    case tooManyRequests = 429
    
    /// Request Header Fields Too Large: 431
    ///
    /// - seealso: [RFC6585](http://www.iana.org/go/rfc6585)
    case requestHeaderFieldsTooLarge = 431
    
    /// IIS Login Timeout: 440
    ///
    /// The client's session has expired and must log in again.
    ///
    /// **Category**: Internet Information Services
    ///
    /// - seealso: [Error message when you try to log on to Exchange 2007 by using Outlook Web Access: "440 Login Timeout"](http://support.microsoft.com/kb/941201/en-us)
    @objc(HTTPStatusCodeIISLoginTimeout)
    case iisLoginTimeout = 440
    
    /// nginx No Response: 444
    ///
    /// Used to indicate that the server has returned no information to the client and closed the connection.
    ///
    /// **Category**: nginx
    case nginxNoResponse = 444
    
    /// IIS Retry With: 449
    ///
    /// The server cannot honour the request because the user has not provided the required information.
    ///
    /// **Category**: Internet Information Services
    ///
    /// - seealso: [2.2.6 449 Retry With Status Code](https://msdn.microsoft.com/en-us/library/dd891478.aspx)
    @objc(HTTPStatusCodeIISRetryWith)
    case iisRetryWith = 449
    
    /// Blocked by Windows Parental Controls: 450
    ///
    /// A Microsoft extension. This error is given when Windows Parental Controls are turned on and are blocking access to the given webpage.
    case blockedByWindowsParentalControls = 450
    
    /// Unavailable For Legal Reasons: 451
    ///
    /// - seealso: [RFC7725](http://www.iana.org/go/rfc7725)
    case unavailableForLegalReasons = 451
    
    /// nginx SSL Certificate Error: 495
    ///
    /// An expansion of the 400 Bad Request response code, used when the client has provided an invalid client certificate.
    ///
    /// **Category**: nginx
    case nginxSSLCertificateError = 495
    
    /// nginx SSL Certificate Required: 496
    ///
    /// An expansion of the 400 Bad Request response code, used when a client certificate is required but not provided.
    ///
    /// **Category**: nginx
    case nginxSSLCertificateRequired = 496
    
    /// nginx HTTP To HTTPS: 497
    ///
    /// An expansion of the 400 Bad Request response code, used when the client has made a HTTP request to a port listening for HTTPS requests.
    ///
    /// **Category**: nginx
    case nginxHTTPToHTTPS = 497
    
    /// Token Expired: 498
    ///
    /// Returned by [ArcGIS for Server](https://en.wikipedia.org/wiki/ArcGIS_Server). A code of 498 indicates an expired or otherwise invalid token.
    ///
    /// - seealso: [Using token-based authentication](http://help.arcgis.com/en/arcgisserver/10.0/apis/soap/index.htm#Using_token_authentication.htm)
    case tokenExpired = 498
    
    /// nginx Client Closed Request: 499
    ///
    /// Used when the client has closed the request before the server could send a response.
    ///
    /// **Category**: nginx
    case nginxClientClosedRequest = 499
    
    /// Internal Server Error: 500
    ///
    /// - seealso: [RFC7231, Section 6.6.1](http://www.iana.org/go/rfc7231#section-6.6.1)
    case internalServerError = 500
    
    /// Not Implemented: 501
    ///
    /// - seealso: [RFC7231, Section 6.6.2](http://www.iana.org/go/rfc7231#section-6.6.2)
    case notImplemented = 501
    
    /// Bad Gateway: 502
    ///
    /// - seealso: [RFC7231, Section 6.6.3](http://www.iana.org/go/rfc7231#section-6.6.3)
    case badGateway = 502
    
    /// Service Unavailable: 503
    ///
    /// - seealso: [RFC7231, Section 6.6.4](http://www.iana.org/go/rfc7231#section-6.6.4)
    case serviceUnavailable = 503
    
    /// Gateway Timeout: 504
    ///
    /// - seealso: [RFC7231, Section 6.6.5](http://www.iana.org/go/rfc7231#section-6.6.5)
    case gatewayTimeout = 504
    
    /// HTTP Version Not Supported: 505
    ///
    /// - seealso: [RFC7231, Section 6.6.6](http://www.iana.org/go/rfc7231#section-6.6.6)
    @objc(HTTPStatusCodeHTTPVersionNotSupported)
    case httpVersionNotSupported = 505
    
    /// Variant Also Negotiates: 506
    ///
    /// - seealso: [RFC2295](http://www.iana.org/go/rfc2295)
    case variantAlsoNegotiates = 506
    
    /// Insufficient Storage: 507
    ///
    /// - seealso: [RFC4918](http://www.iana.org/go/rfc4918)
    case insufficientStorage = 507
    
    /// Loop Detected: 508
    ///
    /// - seealso: [RFC5842](http://www.iana.org/go/rfc5842)
    case loopDetected = 508
    
    /// Bandwidth Limit Exceeded: 509
    ///
    /// The server has exceeded the bandwidth specified by the server administrator; this is often used by shared hosting providers to limit the bandwidth of customers.
    ///
    /// - seealso: <https://documentation.cpanel.net/display/CKB/HTTP+Error+Codes+and+Quick+Fixes#HTTPErrorCodesandQuickFixes-509BandwidthLimitExceeded>
    case bandwidthLimitExceeded = 509
    
    /// Not Extended: 510
    ///
    /// - seealso: [RFC2774](http://www.iana.org/go/rfc2774)
    case notExtended = 510
    
    /// Network Authentication Required: 511
    ///
    /// - seealso: [RFC6585](http://www.iana.org/go/rfc6585)
    case networkAuthenticationRequired = 511
    
    /// Site is frozen: 530
    ///
    /// Used by the [Pantheon](https://en.wikipedia.org/wiki/Pantheon_(software)) web platform to indicate a site that has been frozen due to inactivity.
    case siteIsFrozen = 530
}

extension HTTPStatusCode {
    /// Informational - Request received, continuing process.
    var isInformational: Bool {
        return isIn(range: 100...199)
    }
    /// Success - The action was successfully received, understood, and accepted.
    var isSuccess: Bool {
        return isIn(range: 200...299)
    }
    /// Redirection - Further action must be taken in order to complete the request.
    var isRedirection: Bool {
        return isIn(range: 300...399)
    }
    /// Client Error - The request contains bad syntax or cannot be fulfilled.
    var isClientError: Bool {
        return isIn(range: 400...499)
    }
    /// Server Error - The server failed to fulfill an apparently valid request.
    var isServerError: Bool {
        return isIn(range: 500...599)
    }
    
    /// - returns: `true` if the status code is in the provided range, false otherwise.
    private func isIn(range: ClosedRange<HTTPStatusCode.RawValue>) -> Bool {
        return range.contains(rawValue)
    }
}

extension HTTPStatusCode {
    /// - returns: a localized string suitable for displaying to users that describes the specified status code.
    var localizedReasonPhrase: String {
        return HTTPURLResponse.localizedString(forStatusCode: rawValue)
    }
}

// MARK: - Printing

extension HTTPStatusCode: CustomDebugStringConvertible, CustomStringConvertible {
    var description: String {
        return "\(rawValue) - \(localizedReasonPhrase)"
    }
    var debugDescription: String {
        return "HTTPStatusCode:\(description)"
    }
}

// MARK: - HTTP URL Response

extension HTTPStatusCode {
    
    /// Obtains a possible status code from an optional HTTP URL response.
    init?(HTTPResponse: HTTPURLResponse?) {
        guard let statusCodeValue = HTTPResponse?.statusCode else {
            return nil
        }
        self.init(statusCodeValue)
    }
    
    /// This is declared as it's not automatically picked up by the complier for the above init
    private init?(_ rawValue: Int) {
        guard let value = HTTPStatusCode(rawValue: rawValue) else {
            return nil
        }
        self = value
    }
}

extension HTTPURLResponse {
    
    /**
     * Marked internal to expose (as `statusCodeValue`) for Objective-C interoperability only.
     *
     * - returns: the receiver’s HTTP status code.
     */
    @objc(statusCodeValue) var statusCodeEnum: HTTPStatusCode {
        return HTTPStatusCode(HTTPResponse: self)!
    }
    
    /// - returns: the receiver’s HTTP status code.
    var statusCodeValue: HTTPStatusCode? {
        return HTTPStatusCode(HTTPResponse: self)
    }
    
    /**
     * Initializer for NSHTTPURLResponse objects.
     *
     * - parameter url: the URL from which the response was generated.
     * - parameter statusCode: an HTTP status code.
     * - parameter HTTPVersion: the version of the HTTP response as represented by the server.  This is typically represented as "HTTP/1.1".
     * - parameter headerFields: a dictionary representing the header keys and values of the server response.
     *
     * - returns: the instance of the object, or `nil` if an error occurred during initialization.
     */
    @available(iOS, introduced: 7.0)
    @objc(initWithURL:statusCodeValue:HTTPVersion:headerFields:)
    convenience init?(url: URL, statusCode: HTTPStatusCode, httpVersion: String?, headerFields: [String : String]?) {
        self.init(url: url, statusCode: statusCode.rawValue, httpVersion: httpVersion, headerFields: headerFields)
    }
}

// MARK: - Deprecated cases

extension HTTPStatusCode {
    
    /// - deprecated: Renamed to `payloadTooLarge`
    @available(*, deprecated, renamed: "payloadTooLarge")
    static let requestEntityTooLarge = payloadTooLarge
    
    /// - deprecated: Renamed to `uriTooLong`
    @available(*, deprecated, renamed: "uriTooLong")
    static let requestURITooLong = uriTooLong
    
    /// - deprecated: Renamed to `rangeNotSatisfiable`
    @available(*, deprecated, renamed: "rangeNotSatisfiable")
    static let requestedRangeNotSatisfiable = rangeNotSatisfiable
    
    /// - deprecated: Renamed to `iisLoginTimeout`
    @available(*, deprecated, renamed: "iisLoginTimeout")
    static let loginTimeout = iisLoginTimeout
    
    /// - deprecated: Renamed to `iisRetryWith`
    @available(*, deprecated, renamed: "iisRetryWith")
    static let retryWith = iisRetryWith
    
    /// - deprecated: Renamed to `nginxNoResponse`
    @available(*, deprecated, renamed: "nginxNoResponse")
    static let noResponse = nginxNoResponse
    
    /// - deprecated: Renamed to `nginxSSLCertificateError`
    @available(*, deprecated, renamed: "nginxSSLCertificateError")
    static let certError = nginxSSLCertificateError
    
    /// - deprecated: Renamed to `nginxSSLCertificateRequired`
    @available(*, deprecated, renamed: "nginxSSLCertificateRequired")
    static let noCert = nginxSSLCertificateRequired
    
    /// - deprecated: Renamed to `nginxHTTPToHTTPS`
    @available(*, deprecated, renamed: "nginxHTTPToHTTPS")
    static let httpToHTTPS = nginxHTTPToHTTPS
    
    /// - deprecated: Renamed to `nginxClientClosedRequest`
    @available(*, deprecated, renamed: "nginxClientClosedRequest")
    static let clientClosedRequest = nginxClientClosedRequest
    
    /// Returned by version 1 of the Twitter Search and Trends API when the client is being rate limited; versions 1.1 and later use the 429 Too Many Requests (`tooManyRequests`) response code instead.
    ///
    /// - seealso: [Twitter Error Codes & Responses](https://dev.twitter.com/docs/error-codes-responses)
    @available(*, deprecated, renamed: "tooManyRequests")
    static let twitterEnhanceYourCalm = tooManyRequests
}

extension HTTPURLResponse {
    
    /// - deprecated: Renamed to `init(url:statusCode:httpVersion:headerFields)` to correct Swift 3 naming convention.
    @available(*, deprecated, renamed: "init(url:statusCode:httpVersion:headerFields:)", message: "Renamed to correct Swift 3 naming convention")
    @nonobjc
    convenience init?(url: URL, statusCode: HTTPStatusCode, HTTPVersion: String?, headerFields: [String : String]?) {
        self.init(url: url, statusCode: statusCode, httpVersion: HTTPVersion, headerFields: headerFields)
    }
}

// MARK: - Remove cases

/// Declared here for a cleaner API with no `!` types.
private let __Unavailable: HTTPStatusCode! = nil

extension HTTPStatusCode {
    
    /// Switch Proxy: 306
    ///
    /// No longer used. Originally meant "Subsequent requests should use the specified proxy."
    ///
    /// - seealso: [Original draft](https://tools.ietf.org/html/draft-cohen-http-305-306-responses-00)
    @available(*, unavailable, message: "No longer used")
    static let switchProxy = __Unavailable
    
    /// Authentication Timeout: 419
    ///
    /// Removed from Wikipedia page.
    @available(*, unavailable, message: "No longer available")
    static let authenticationTimeout = __Unavailable
    
    /// Method Failure: 419
    ///
    /// A deprecated response used by the Spring Framework when a method has failed.
    ///
    /// - seealso: [Spring Framework: HttpStatus enum documentation - `METHOD_FAILURE`](https://docs.spring.io/spring/docs/current/javadoc-api/org/springframework/http/HttpStatus.html#METHOD_FAILURE)
    @available(*, unavailable, message: "Deprecated")
    static let springFrameworkMethodFailure = __Unavailable
    
    /// Request Header Too Large: 494
    ///
    /// Removed and replaced with `RequestHeaderFieldsTooLarge` - 431
    @available(*, unavailable, renamed: "requestHeaderFieldsTooLarge", message: "Changed to a 431 status code")
    static let requestHeaderTooLarge = __Unavailable
    
    /// Network Timeout Error: 599
    ///
    /// Removed from Wikipedia page.
    @available(*, unavailable, message: "No longer available")
    static let networkTimeoutError = __Unavailable
}
