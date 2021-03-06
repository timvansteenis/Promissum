//
//  AVFoundation+Promise.swift
//  PromissumExtensions
//
//  Created by Tom Lokhorst on 2015-08-22.
//  Copyright (c) 2015 Tom Lokhorst. All rights reserved.
//

import AVFoundation


extension AVCaptureDevice {
  public static func requestAccess(forMediaType mediaType: String) -> Promise<Bool, NoError> {
    let source = PromiseSource<Bool, NoError>()

    self.requestAccess(forMediaType: mediaType) { granted in
      source.resolve(granted)
    }

    return source.promise
  }

  @available(*, unavailable, renamed: "requestAccess(forMediaType:)")
  public static func requestAccessForMediaTypePromise(_ mediaType: String) -> Promise<Bool, NoError> {
    fatalError()
  }
}
