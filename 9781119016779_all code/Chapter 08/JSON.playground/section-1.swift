enum JSONValue {
    case JObject([String: JSONValue])
    case JArray([JSONValue])
    case JString(String)
    case JNumber(Double)
    case JBoolean(Bool)
    case JNull
}

func JSONToString(object: JSONValue) -> String {
    switch object {
    case let .JObject(obj):
        var elements: [String] = []
        for (key, val) in obj {
            let jval = JSONToString(val)
            elements.append("\(key): \(jval)")
        }
        return "{" + ", ".join(elements) + "}"
    case let .JArray(vals):
        let strings = vals.map { JSONToString($0) }
        return ", ".join(strings)
    case let .JString(val):
        return val
    case let .JNumber(val):
        return "\(val)"
    case let .JBoolean(val):
        return val ? "true" : "false"
    case .JNull:
        return "null"
    }
}

let jsonPerson = JSONValue.JObject([
    "firstName": JSONValue.JString("Jane"),
    "lastName": JSONValue.JString("Doe"),
    "age": JSONValue.JNumber(39),
    "isAwesomeSwiftProgrammer": JSONValue.JBoolean(true),
    "address": JSONValue.JNull,
    "favoriteColors": JSONValue.JArray([JSONValue.JString("red"), JSONValue.JString("purple")]),
])

JSONToString(jsonPerson)
