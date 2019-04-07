//  Created by Ivan Goremykin on 18/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import Foundation

enum OneXorBoth<Always, MayBe>
{
    case one(Always)
    case both(Always, MayBe)
    
    init(_ always: Always)
    {
        self = .one(always)
    }
    
    init(_ always: Always, _ mayBe: MayBe)
    {
        self = .both(always, mayBe)
    }
    
    var mayBe: MayBe?
    {
        switch self
        {
        case .one:
            return nil
            
        case .both(_, let mayBe):
            return mayBe
        }
    }
    
    var always: Always
    {
        switch self
        {
        case .one(let always):
            return always
            
        case .both(let always, _):
            return always
        }
    }
    
    var alwaysIfOne: Always?
    {
        switch self
        {
        case .one(let always):
            return always
            
        case .both:
            return nil
        }
    }
    
    var isOne: Bool
    {
        switch self
        {
        case .one:
            return true
            
        case .both:
            return false
        }
    }
    
    var isBoth: Bool
    {
        switch self
        {
        case .one:
            return false
            
        case .both:
            return true
        }
    }
}
