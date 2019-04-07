# Parsing

## Annotations

### Type Annotations

- key **[Mandatory]** 
    - example: ```// sourcery: key = "id"```
- onNoKey **[Mandatory]** — _what we do if key was not found_
    - treat as an error: ```// sourcery: onNoKey = error```
    - set default value: ```// sourcery: onNoKey = default(nil)```
    - try another parser: ```// sourcery: onNoKey = "customParser(parseDateFix)"```
- onNotParsed **[Mandatory]** — _what we do if key was found but value could not be parsed_
    - treat as an error: ```// sourcery: onNotParsed = error```
    - set default value: ```// sourcery: onNotParsed = default(nil)```
    - try another parser: ```// sourcery: onNotParsed = "customParser(parseDateFix)"```
- parser **[Optional]** — _force using this parser_
    - example: ```// sourcery: parser = parseUnixDate```

### Array

- key **[Mandatory]**
- onNoKey **[Mandatory]**
- onNotParsed **[Mandatory]**
- onElementNotParsed **[Mandatory]** — _what we do if an array element is not parsed_
    - treat element failure as array failure: ```// sourcery: onElementNotParsed = failWholeArray```
    - skip failed elements: ```// sourcery: onElementNotParsed = skipFailed```

### Full Example

```swift
struct Starship: JsonAutoSerializable
{
// sourcery: key = "id", onNoKey = error, onNotParsed = error
let id: WebServiceId

// sourcery: key = "title", onNoKey = error, onNotParsed = default(nil)
let title: String?

// sourcery: parser = parseColor, key = "color", onNoKey = default(.white), onNotParsed = default(.white)
let color: UIColor?

// sourcery: parser = parseUnixDate, key = "creationDate", onNoKey = error, onNotParsed = customParser(parseDateFix)
let creationDate: Date

// sourcery: key = "crew", onNoKey = error, onNotParsed = default([]), onElementNotParsed = skipFailed
let crew: [Person]
}
```

## Cache

Clear Sourcery cache at ```~/Library/Caches/Sourcery```
