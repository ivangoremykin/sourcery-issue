//  Created by Ivan Goremykin on 22/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import SwiftyJSON

func createRawValueParser<Item>(_ getItem: @escaping (JSON) -> Item?) -> ParseCallback<Item>
{
    return {
        json in
        
        if let value = getItem(json)
        {
            return Either2(value)
        }
        else
        {
            return Either2(ParsingTrace.Empty)
        }
    }
}
