//
//  Copyright (c) Raoul Schwagmeier 2023
//  MIT license, see LICENSE file for details
//

import Foundation

public struct EndUserAgreementWriteRequest: Codable, Hashable, Equatable {
    enum CodingKeys: String, CodingKey {
        case maxHistoricalDays = "max_historical_days"
        case accessValidForDays = "access_valid_for_days"
        case accessScope = "access_scope"
        case institutionId = "institution_id"
    }
    
    public let maxHistoricalDays: Int?
    public let accessValidForDays: Int?
    public let accessScope: Set<EndUserAgreement.AccessScope>?
    public let institutionId: String

    public init(maxHistoricalDays: Int?, accessValidForDays: Int?, accessScope: Set<EndUserAgreement.AccessScope>?, institutionId: String) {
        self.maxHistoricalDays = maxHistoricalDays
        self.accessValidForDays = accessValidForDays
        self.accessScope = accessScope
        self.institutionId = institutionId
    }
}
