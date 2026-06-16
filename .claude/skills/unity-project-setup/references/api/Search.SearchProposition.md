<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProposition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search propositions are used to display choices to the user to add new filters to a search query.

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

### Properties

| Property | Description |
| --- | --- |
| data | The data field can hold any user data that the user can retrieve later to determine the nature of the proposition. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchProposition | Create a new search proposition. |
