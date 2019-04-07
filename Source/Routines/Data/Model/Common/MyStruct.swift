//  Created by Ivan Goremykin on 07/04/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import Foundation

struct MyStruct: JsonAutoSerializable
{
    // sourcery: key = "id", onNoKey = error, onNotParsed = error
    let id: WebServiceId
    
    // sourcery: key = "title", onNoKey = error, onNotParsed = default("I am default title!")
    let title: String
}
