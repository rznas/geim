<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.Providers.SceneQueryEngineFilterAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| token | The identifier of the filter. Typically what precedes the operator in a filter (i.e. "id" in "id>=2"). |
| supportedOperators | List of supported operator tokens. Null for all operators. |
| options | String comparison options. |
| paramTransformerFunction | Name of the parameter transformer function to use with this filter. Tag the parameter transformer function with the appropriate ParameterTransformer attribute. See SceneQueryEngineParameterTransformer for more information. |

### Description

Create a filter with the corresponding token and supported operators.

The following example adds a new filter function `dist` that returns the distance between an object and a point. This filter needs a parameter transformer to transform the text into a point. Also, it doesn't support the operator "contains" (`:`).

```csharp
[SceneQueryEngineFilter("dist", "DistanceParamHandler", new[] {"=", "!=", "<", ">", "<=", ">="})]
static float DistanceHandler(GameObject go, Vector3 p)
{
    return (go.transform.position - p).magnitude;
}
```
