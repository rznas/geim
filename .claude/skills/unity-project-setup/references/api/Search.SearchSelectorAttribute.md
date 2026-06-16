<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchSelectorAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search selector attribute used to define how a custom value can be selected from a search item.

Here's an example to select the number of line of code of text assets. > select{p: *.cs, @path, @loc}.

```csharp
[SearchSelector("loc", provider: "asset")]
static object SelectLineOfCode(SearchSelectorArgs args)
{
    TextAsset textAsset = args.current.ToObject<TextAsset>();
    if (textAsset)
        return textAsset.text.Split('\n').Length;    return null;
}
```

### Properties

| Property | Description |
| --- | --- |
| cacheable | Set the cacheable property if you do not want the search backend to pull cached values from the property database. |
