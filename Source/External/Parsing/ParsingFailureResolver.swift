//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import Foundation

enum ParsingFailureResolver<Item>
{
    case error
    case defaultValue(Item)
    case customParseCallback(ParseCallback<Item>)
}

enum ArrayItemParsingFailureResolver
{
    case failWholeArray
    case skipFailed
}
