// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import SwiftyJSON

class JsonParser
{
	// MARK:- MyStruct
	static func parseMyStruct(json: JSON) -> Either2<ParsingTrace, MyStruct>
	{
	    // MARK: Create traced parsers
	    let idParsingStrategy: ParsingStrategy<WebServiceId> = ParsingStrategy(key: "id", onNoKey: .error, onNotParsed: .error)
		let parseTracedId = createTracedParser(parseString, idParsingStrategy)
	
		let titleParsingStrategy: ParsingStrategy<String> = ParsingStrategy(key: "title", onNoKey: .error, onNotParsed: .defaultValue("I am default title!"))
		let parseTracedTitle = createTracedParser(parseString, titleParsingStrategy)
	
	    // MARK: Parse
	    let idParseResult = parseTracedId(json, ParsingTrace.Empty)
		let titleParseResult = parseTracedTitle(json, ParsingTrace.Empty)
	
	    // MARK: Validate
	    if let id = idParseResult.mayBe, let title = titleParseResult.mayBe
	    {
	        // MARK: Success
	        return Either2(MyStruct(id: id, title: title))
	    }
	    else
	    {
	        // MARK: Failure
	        return Either2(createParsingTrace(idParseResult.alwaysIfOne, titleParseResult.alwaysIfOne))
	    }
	}
}

// Sometimes changes are not reflected in the generated .swift file.
