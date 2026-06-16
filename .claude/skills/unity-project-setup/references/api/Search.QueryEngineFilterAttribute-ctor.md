<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngineFilterAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| token | The identifier of the filter. Typically what precedes the operator in a filter (for example, "id" in "id>=2"). |
| supportedOperators | List of supported operator tokens. This list contains the supported operator tokens. Use null or an empty list to indicate that all operators are supported. |
| options | String comparison options. |
| paramTransformerFunction | Name of the parameter transformer function to use with this filter. Tag the parameter transformer function with the appropriate ParameterTransformer attribute. |

### Description

Create a filter with the corresponding token and supported operators.

### Parameters

| Parameter | Description |
| --- | --- |
| token | The identifier of the filter or regular expression that matches the filters. Typically what precedes the operator in a filter (for example, "id" in "id>=2"). |
| useRegularExpression | Set this flag to true if the token is a regular expression. |
| supportedOperators | List of supported operator tokens. This list contains the supported operator tokens. Use null or an empty list to indicate that all operators are supported. |
| options | String comparison options. |
| paramTransformerFunction | Name of the parameter transformer function to use with this filter. Tag the parameter transformer function with the appropriate ParameterTransformer attribute. |

### Description

Create a filter with the corresponding token and supported operators.

This constructor allows custom filters with regular expressions to be registered with an attribute.

```csharp
// Define a regular expression filter for the property "property".
[MyObjectFilter("#([\\w.]+)", true)]
static Property FilterProperty(MyObjectType myObj, string filterMatch)
{
    if (myObj.property.name == filterMatch)
        return myObj.property;
    return Property.invalid;
}
```
