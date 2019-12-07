//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Azhar Islam on 06/12/2019.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

enum DarkSkyError: Error{
    case requestFailed
    case responseUnsuccesful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
}
