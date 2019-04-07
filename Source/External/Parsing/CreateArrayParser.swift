//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import SwiftyJSON

func createArrayParser<Item>(_ parseTracedItem: @escaping ParseTracingCallback<Item>, _ arrayParsingStrategy: ArrayParsingStrategy<Item>) -> ParseCallback<[Item]>
{
    return {
        json in
        
        if let jsonArray = json.array
        {
            return parseJsonArray(jsonArray, parseTracedItem, arrayParsingStrategy)
        }
        else
        {
            return Either2(ParsingTrace.Empty)
        }
    }
}

private func parseJsonArray<Item>(_ jsonArray: [JSON], _ parseTracedItem: @escaping ParseTracingCallback<Item>, _ arrayParsingStrategy: ArrayParsingStrategy<Item>) -> Either2<ParsingTrace, [Item]>
{
    var items: [Item] = []
    items.reserveCapacity(jsonArray.count)
    
    for (index, jsonItem) in jsonArray.enumerated()
    {
        switch parseTracedItem(jsonItem, createParsingTrace(ParsingTrace.Empty, index))
        {
        case .both(_, let item):
            items.append(item)
            
        case .one(let fullParsingTrace):
            switch arrayParsingStrategy.onItemNotParsed
            {
            case .skipFailed:
                break
                
            case .failWholeArray:
                return Either2(fullParsingTrace)
            }
        }
    }
    
    return Either2(items)
}
