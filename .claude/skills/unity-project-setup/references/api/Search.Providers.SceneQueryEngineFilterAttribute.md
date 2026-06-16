<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.Providers.SceneQueryEngineFilterAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Custom attribute is used to customize the search engine used by the scene search provider.

This sample shows to use the `SceneQueryEngineFilter` attribute to customize the search engine used by the scene search provider.

The scene search provider allows the user to search for scene objects using custom filters, such as `is:prefab prefab:modified`, etc.

The following example shows how you can add a property filter `lights>=1` to search meshes that are affected but one or more lights.

```csharp
[SceneQueryEngineFilter("lights", new[] { "=", "!=", "<", ">", "<=", ">=" })]
internal static int? MeshRendererAffectedByLightsSceneFilter(GameObject go)
{
    if (!go.TryGetComponent<MeshRenderer>(out var meshRenderer))
        return null;

    if (!meshRenderer.isVisible)
        return null;

    var lightEffectCount = 0;
    var gp = go.transform.position;
    foreach (var light in Object.FindObjectsByType<Light>())
    {
        if (!light.isActiveAndEnabled)
            continue;

        var lp = light.transform.position;

        var distance = Vector3.Distance(gp, lp);
        if (distance > light.range)
            continue;

        if (light.type == UnityEngine.LightType.Spot)
        {
            var da = Vector3.Dot(light.transform.forward, lp - gp);
            if (da > Mathf.Deg2Rad * light.spotAngle)
                continue;
        }

        lightEffectCount++;
    }

    return lightEffectCount;
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| SceneQueryEngineFilterAttribute | Create a filter with the corresponding token and supported operators. |

### Inherited Members

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
