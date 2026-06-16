<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.Providers.SceneQueryEngineParameterTransformerAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute class that defines a custom parameter transformer function applied for a query running in a scene provider defined by a scene custom filter using SceneQueryEngineFilterAttribute.

```csharp
[SceneQueryEngineParameterTransformer]
static Vector3 DistanceParamHandler(string param)
{
    if (param == "selection")
    {
        var centerPoint = Selection.gameObjects.Select(go => go.transform.position).Aggregate((v1, v2) => v1 + v2);
        centerPoint /= Selection.gameObjects.Length;
        return centerPoint;
    }

    if (param.StartsWith("[") && param.EndsWith("]"))
    {
        param = param.Trim('[', ']');
        var vectorTokens = param.Split(',');
        var vectorValues = vectorTokens.Select(token => float.Parse(token, CultureInfo.InvariantCulture.NumberFormat)).ToList();
        while (vectorValues.Count < 3)
            vectorValues.Add(0f);
        return new Vector3(vectorValues[0], vectorValues[1], vectorValues[2]);
    }

    var obj = GameObject.Find(param);
    if (!obj)
        return Vector3.zero;
    return obj.transform.position;
}
```

Used with

```csharp
[SceneQueryEngineFilter("dist", "DistanceParamHandler", new[] {"=", "!=", "<", ">", "<=", ">="})]
static float DistanceHandler(GameObject go, Vector3 p)
{
    return (go.transform.position - p).magnitude;
}
```

### Inherited Members
