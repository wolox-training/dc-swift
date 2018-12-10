//
//  RepositoryBuilder.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 21/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking

class RepositoryBuilder {
    static var DefaultNetworkingConfiguration: NetworkingConfiguration {
        var config = NetworkingConfiguration()
        config.domainURL = "private-anon-915851985e-wbooksbackend.apiary-mock.com"
        config.useSecureConnection = true
        config.usePinningCertificate = false
        return config
    }
    
}
