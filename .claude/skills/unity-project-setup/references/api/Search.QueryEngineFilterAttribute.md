<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngineFilterAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base attribute class used to define a custom filter on a QueryEngine. All filter types supported by QueryEngine.AddFilter are supported by this attribute.

For a usage example, see QueryEngine.AddFiltersFromAttribute.

### Properties

| Property | Description |
| --- | --- |
| comparisonOptions | String comparison options. |
| overridesStringComparison | Flag indicating if the filter overrides the global string comparison options. Set to true when the comparisonOptions are used. |
| paramTransformerFunction | Name of the parameter transformer function to use with this filter. Tag the parameter transformer function with the appropriate ParameterTransformer attribute. |
| supportedOperators | List of supported operator tokens. Null for all operators. |
| token | The identifier of the filter. Typically what precedes the operator in a filter (i.e. "id" in "id>=2"). |
| useParamTransformer | Flag indicating if this filter uses a parameter transformer function. Set to true when paramTransformerFunction is used. |
| useRegularExpressionToken | Indicates if the filter uses a regular expression token or not. |

### Constructors

| Constructor | Description |
| --- | --- |
| QueryEngineFilterAttribute | Create a filter with the corresponding token and supported operators. |
