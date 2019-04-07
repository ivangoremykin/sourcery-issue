//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import SwiftyJSON

func createOptionalParser<Item>(_ parse: @escaping ParseCallback<Item>) -> ParseCallback<Item?>
{
    return {
        json in
        
        if json.isNull
        {
            return Either2(nil)
        }
        else
        {
            switch parse(json)
            {
            case .item0(let parsingTrace):
                return Either2(parsingTrace)
                
            case .item1(let item):
                return Either2(item)
            }
        }
    }
}
