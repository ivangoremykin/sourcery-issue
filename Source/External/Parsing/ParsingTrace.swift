//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import SwiftyJSON

// Use builder?
struct ParsingTraceBuilder
{
}

enum JsonNodeAccessor
{
    case string(String)
    case int(Int)
    case none
    
    init(_ string: String?)
    {
        if let string = string
        {
            self = .string(string)
        }
        else
        {
            self = .none
        }
    }
    
    init(_ int: Int)
    {
        self = .int(int)
    }
}

enum ParsingNodeStatus
{
    case ok
    case resolvedAsError
    case resolvedAsDefaultValue
    case resolvedAsCustomParseCallback
}

func createParsingNodeStatus<Item>(_ failureResolver: ParsingFailureResolver<Item>) -> ParsingNodeStatus
{
    switch failureResolver
    {
    case .error:
        return .resolvedAsError
        
    case .defaultValue:
        return .resolvedAsDefaultValue
        
    case .customParseCallback:
        return .resolvedAsCustomParseCallback
    }
}

struct ParsingTrace
{
    let parsingNodes: [Either2<ParsingNode, [ParsingTrace]>]
    
    static let Empty = ParsingTrace(parsingNodes: [])
}

extension ParsingTrace: CustomDebugStringConvertible
{
    var debugDescription: String
    {
        // iterate depth first
        var dummy = ""
        return getString(&dummy, self, 0)
        return "\(self)"
    }
    
    func getString(_ accumulator: inout String, _ parsingTrace: ParsingTrace, _ depth: Int) -> String
    {
        for parsingNode in parsingTrace.parsingNodes
        {
            switch parsingNode
            {
            case .item0(let parsingNode):
                accumulate(&accumulator, getString(parsingNode))

            case .item1(let parsingTraces):
                let deeper = depth + 1
                for parsingTrace in parsingTraces
                {
                    accumulate(&accumulator, getString(&accumulator, parsingTrace, deeper))
                }
            }
        }
        
        return accumulator
    }
    
    private func accumulate(_ accumulator: inout String, _ string: String)
    {
        accumulator = accumulator + "\n" + string
    }
    
    private func getString(_ parsingNode: ParsingNode, _ depth: Int) -> String
    {
        return getIndent(forDepth: depth) + getString(parsingNode)
    }

    private func getString(_ parsingNode: ParsingNode) -> String
    {
        switch parsingNode.nodeAccessor
        {
        case .string(let string):
            return string
            
        case .int(let int):
            return "\(int)"
            
        case .none:
            return ""
        }
    }
    
    private func getIndent(forDepth depth: Int) -> String
    {
        return String(repeating: " ", count: depth)
    }
}

struct ParsingNode
{
    let nodeAccessor: JsonNodeAccessor
    let status: ParsingNodeStatus
    
    init(_ nodeAccessor: JsonNodeAccessor)
    {
        self.nodeAccessor = nodeAccessor
        self.status = .ok
    }
    
    init(_ nodeAccessor: JsonNodeAccessor, _ status: ParsingNodeStatus)
    {
        self.nodeAccessor = nodeAccessor
        self.status = status
    }
}

func createParsingTrace(_ parentParsingTrace: ParsingTrace, _ key: String?) -> ParsingTrace
{
    // Found node
        // Either root (key == nil)
        // Or by key (key != nil)
    // Ok, item created
    
    return ParsingTrace(parsingNodes: parentParsingTrace.parsingNodes + [Either2(ParsingNode(JsonNodeAccessor(key)))])
}

func createParsingTrace(_ parentParsingTrace: ParsingTrace, _ index: Int) -> ParsingTrace
{
    // Found node by index
    // Ok, item created
    
    return ParsingTrace(parsingNodes: parentParsingTrace.parsingNodes + [Either2(ParsingNode(JsonNodeAccessor(index)))])
}

func createParsingTrace(_ parentParsingTrace: ParsingTrace, _ key: String?, _ childParsingTrace: ParsingTrace) -> ParsingTrace
{
    // Found node
        // Either root (key == nil)
        // Or by key (key != nil)
    // Error, item not created (description is in childParsingTrace)
    
    return ParsingTrace(parsingNodes: parentParsingTrace.parsingNodes
                                        + [Either2(ParsingNode(JsonNodeAccessor(key)))]
                                        + childParsingTrace.parsingNodes)
}

func createParsingTrace<Item>(_ parentParsingTrace: ParsingTrace, _ key: String?, _ failureResolver: ParsingFailureResolver<Item>) -> ParsingTrace
{
    // Error in node
        // Either root (key == nil)
        // Or by key (key != nil)
    // Failure resolver resolved issue
    
    let nodeAccessor = JsonNodeAccessor(key)
    let parsingNodeStatus = createParsingNodeStatus(failureResolver)
    
    return ParsingTrace(parsingNodes: parentParsingTrace.parsingNodes + [Either2(ParsingNode(nodeAccessor, parsingNodeStatus))])
}

func createParsingTrace(_ childrenParsingTraces: ParsingTrace?...) -> ParsingTrace
{
    // Error in one or more children parsing traces
    // Error, item not created
    // Exclude all not failed childrenParsingTraces (not failed are nil)
    
    return ParsingTrace(parsingNodes: [Either2(Array.excludeNils(childrenParsingTraces))])
}
