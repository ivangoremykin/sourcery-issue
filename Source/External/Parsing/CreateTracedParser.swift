//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import SwiftyJSON

func createTracedParser<Item>(_ parse: @escaping ParseCallback<Item>,
                              _ parsingStrategy: ParsingStrategy<Item>) -> ParseTracingCallback<Item>
{
    return {
        json, parentParsingTrace in
        
        let jsonToBeParsed = getJsonToBeParsed(json, parsingStrategy.key)
        
        if jsonToBeParsed.exists() || parsingStrategy.key == nil
        {
            switch parse(jsonToBeParsed)
            {
            case .item0(let childParsingTrace):
                return resolveFailure(json, parsingStrategy.key, parentParsingTrace, childParsingTrace, parsingStrategy.onNotParsed)
                
            case .item1(let item):
                return OneXorBoth(createParsingTrace(parentParsingTrace, parsingStrategy.key), item)
            }
        }
        else
        {
            return resolveFailure(json, parsingStrategy.key, parentParsingTrace, nil, parsingStrategy.onNoKey)
        }
    }
}

private func resolveFailure<Item>(_ json: JSON, _ key: String?, _ parentParsingTrace: ParsingTrace, _ childParsingTrace: ParsingTrace?, _ parsingFailureResolver: ParsingFailureResolver<Item>) -> OneXorBoth<ParsingTrace, Item>
{
    switch parsingFailureResolver
    {
    case .error:
        let parsingTrace = childParsingTrace == nil
            ? createParsingTrace(parentParsingTrace, key, parsingFailureResolver)
            : createParsingTrace(parentParsingTrace, key, childParsingTrace!)
        
        return OneXorBoth(parsingTrace)
        
    case .defaultValue(let item):
        let parsingTrace = createParsingTrace(parentParsingTrace, key, parsingFailureResolver)
        
        return OneXorBoth(parsingTrace, item)
        
    case .customParseCallback(let callback):
        let customParse = createTracedParser(callback, createErrorParsingStrategy(key: nil))
        
        return customParse(getJsonToBeParsed(json, key), parentParsingTrace)
    }
}

private func getJsonToBeParsed(_ json: JSON, _ key: String?) -> JSON
{
    return key == nil ? json : json[key!]
}
