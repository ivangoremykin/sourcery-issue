//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import Foundation

struct ParsingStrategy<Item>
{
    let key: String?
    
    let onNoKey:     ParsingFailureResolver<Item>
    let onNotParsed: ParsingFailureResolver<Item>
}

struct ArrayParsingStrategy<Item>
{
    let key: String?
    
    let onNoKey:         ParsingFailureResolver<[Item]>
    let onNotParsed:     ParsingFailureResolver<[Item]>
    
    let onItemNotParsed: ArrayItemParsingFailureResolver
}

func createParsingStrategy<Item>(_ arrayParsingStrategy: ArrayParsingStrategy<Item>) -> ParsingStrategy<[Item]>
{
    return ParsingStrategy(key: arrayParsingStrategy.key, onNoKey: arrayParsingStrategy.onNoKey, onNotParsed: arrayParsingStrategy.onNotParsed)
}

func createErrorParsingStrategy<Item>(key: String?) -> ParsingStrategy<Item>
{
    return ParsingStrategy(key: key, onNoKey: .error, onNotParsed: .error)
}
