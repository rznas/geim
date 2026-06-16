<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchPropositionFlags.QueryBuilder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the search propositions are fetched for the query block selector.

```csharp
static IEnumerable<SearchProposition> EnumerateDecalPropositions(SearchContext context, SearchPropositionOptions options)
{
    if (!options.flags.HasAny(SearchPropositionFlags.QueryBuilder))
        yield break;

    var shaderIcon = EditorGUIUtility.Load("Shader Icon") as Texture2D;
    yield return new SearchProposition(category: "Affects", label: "Base Color", replacement: "affectalbedo=1", icon: shaderIcon);
    yield return new SearchProposition(category: "Affects", label: "Normal", replacement: "affectnormal=1", icon: shaderIcon);
    yield return new SearchProposition(category: "Affects", label: "Metal", replacement: "affectmetal=1", icon: shaderIcon);
    yield return new SearchProposition(category: "Affects", label: "Ambient Occlusion", replacement: "affectao=1", icon: shaderIcon);
    yield return new SearchProposition(category: "Affects", label: "Smoothness", replacement: "affectsmoothness=1", icon: shaderIcon);
    yield return new SearchProposition(category: "Affects", label: "Emission", replacement: "affectemission=1", icon: shaderIcon);
}
```
