//
//  NSButton+Kingfisher.swift
//  Kingfisher
//
//  Created by Jie Zhang on 14/04/2016.
//
//  Copyright (c) 2018 Wei Wang <onevcat@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import AppKit

// MARK: - Set Images
/**
 *	Set image to use from web.
 */
extension Kingfisher where Base: NSButton {
    /**
     Set an image with a resource, a placeholder image, options, progress handler and completion handler.
     
     - parameter resource:          Resource object contains information such as `cacheKey` and `downloadURL`.
     - parameter placeholder:       A placeholder image when retrieving the image at URL.
     - parameter options:           A dictionary could control some behaviors. See `KingfisherOptionsInfo` for more.
     - parameter progressBlock:     Called when the image downloading progress gets updated.
     - parameter completionHandler: Called when the image retrieved and set.
     
     - returns: A task represents the retrieving process.
     
     - note: Both the `progressBlock` and `completionHandler` will be invoked in main thread.
     The `CallbackDispatchQueue` specified in `optionsInfo` will not be used in callbacks of this method.
     
     If `resource` is `nil`, the `placeholder` image will be set and
     `completionHandler` will be called with both `error` and `image` being `nil`.
     */
    @discardableResult
    public func setImage(with resource: Resource?,
                         placeholder: Image? = nil,
                         options: KingfisherOptionsInfo? = nil,
                         progressBlock: DownloadProgressBlock? = nil,
                         completionHandler: CompletionHandler? = nil) -> RetrieveImageTask
    {
        guard let resource = resource else {
            base.image = placeholder
            setWebURL(nil)
            completionHandler?(nil, nil, .none, nil)
            return .empty
        }
        
        let options = KingfisherManager.shared.defaultOptions + (options ?? KingfisherEmptyOptionsInfo)
        if !options.keepCurrentImageWhileLoading {
            base.image = placeholder
        }
        
        setWebURL(resource.downloadURL)
        let task = KingfisherManager.shared.retrieveImage(
            with: resource,
            options: options,
            progressBlock: { receivedSize, totalSize in
                guard resource.downloadURL == self.webURL else {
                    return
                }
                if let progressBlock = progressBlock {
                    progressBlock(receivedSize, totalSize)
                }
            },
            completionHandler: {[weak base] image, error, cacheType, imageURL in
                DispatchQueue.main.safeAsync {
                    guard let strongBase = base, imageURL == self.webURL else {
                        completionHandler?(image, error, cacheType, imageURL)
                        return
                    }
                    self.setImageTask(nil)
                    
                    if image != nil {
                        strongBase.image = image
                    }
                    completionHandler?(image, error, cacheType, imageURL)
                }
            })
        
        setImageTask(task)
        return task
    }
    
    /**
     Cancel the image download task bounded to the image view if it is running.
     Nothing will happen if the downloading has already finished.
     */
    public func cancelImageDownloadTask() {
        imageTask?.cancel()
    }
    
    /**
     Set an alternateImage with a resource, a placeholder image, options, progress handler and completion handler.
     
     - parameter resource:          Resource object contains information such as `cacheKey` and `downloadURL`.
     - parameter placeholder:       A placeholder image when retrieving the image at URL.
     - parameter options:           A dictionary could control some behaviors. See `KingfisherOptionsInfo` for more.
     - parameter progressBlock:     Called when the image downloading progress gets updated.
     - parameter completionHandler: Called when the image retrieved and set.
     
     - returns: A task represents the retrieving process.
     
     - note: Both the `progressBlock` and `completionHandler` will be invoked in main thread.
     The `CallbackDispatchQueue` specified in `optionsInfo` will not be used in callbacks of this method.
     
     If `resource` is `nil`, the `placeholder` image will be set and
     `completionHandler` will be called with both `error` and `image` being `nil`.
     */
    @discardableResult
    public func setAlternateImage(with resource: Resource?,
                                  placeholder: Image? = nil,
                                  options: KingfisherOptionsInfo? = nil,
                                  progressBlock: DownloadProgressBlock? = nil,
                                  completionHandler: CompletionHandler? = nil) -> RetrieveImageTask
    {
        guard let resource = resource else {
            base.alternateImage = placeholder
            setAlternateWebURL(nil)
            completionHandler?(nil, nil, .none, nil)
            return .empty
        }
        
        let options = KingfisherManager.shared.defaultOptions + (options ?? KingfisherEmptyOptionsInfo)
        if !options.keepCurrentImageWhileLoading {
            base.alternateImage = placeholder
        }
        
        setAlternateWebURL(resource.downloadURL)
        let task = KingfisherManager.shared.retrieveImage(
            with: resource,
            options: options,
            progressBlock: { receivedSize, totalSize in
                guard resource.downloadURL == self.alternateWebURL else {
                    return
                }
                if let progressBlock = progressBlock {
                    progressBlock(receivedSize, totalSize)
                }
            },
            completionHandler: {[weak base] image, error, cacheType, imageURL in
                DispatchQueue.main.safeAsync {
                    guard let strongBase = base, imageURL == self.alternateWebURL else {
                        completionHandler?(image, error, cacheType, imageURL)
                        return
                    }
                    self.setAlternateImageTask(nil)
                    
                    if image != nil {
                        strongBase.alternateImage = image
                    }
                    
                    completionHandler?(image, error, cacheType, imageURL)
                }
            })
        
        setAlternateImageTask(task)
        return task
    }
    
 
    /// Cancel the alternate image download task bounded to the image view if it is running. 
    /// Nothing will happen if the downloading has already finished.
    public func cancelAlternateImageDownloadTask() {
        alternateImageTask?.cancel()
    }
}


// MARK: - Associated Object
private var lastURLKey: Void?
private var imageTaskKey: Void?

private var lastAlternateURLKey: Void?
private var alternateImageTaskKey: Void?

extension Kingfisher where Base: NSButton {
    /// Get the image URL binded to this image view.
    public var webURL: URL? {
        return objc_getAssociatedObject(base, &lastURLKey) as? URL
    }
    
    fileprivate func setWebURL(_ url: URL?) {
        objc_setAssociatedObject(base, &lastURLKey, url, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    fileprivate var imageTask: RetrieveImageTask? {
        return objc_getAssociatedObject(base, &imageTaskKey) as? RetrieveImageTask
    }
    
    fileprivate func setImageTask(_ task: RetrieveImageTask?) {
        objc_setAssociatedObject(base, &imageTaskKey, task, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    /// Get the alternate image URL binded to this button.
    public var alternateWebURL: URL? {
        return objc_getAssociatedObject(base, &lastAlternateURLKey) as? URL
    }
    
    fileprivate func setAlternateWebURL(_ url: URL?) {
        objc_setAssociatedObject(base, &lastAlternateURLKey, url, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    fileprivate var alternateImageTask: RetrieveImageTask? {
        return objc_getAssociatedObject(base, &alternateImageTaskKey) as? RetrieveImageTask
    }
    
    fileprivate func setAlternateImageTask(_ task: RetrieveImageTask?) {
        objc_setAssociatedObject(base, &alternateImageTaskKey, task, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
}
