<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryListBlockAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This attribute can be used on a class deriving from QueryListBlock to display in query builder mode a special block that will propose a fixed set of values when clicked.

The following example shows how to display a custom list block for the `shader` filter block.

```csharp
[QueryListBlock("Decal", "Shader", "shader")]
class ShaderDecalBlockList : QueryListBlock
{
    public ShaderDecalBlockList(IQuerySource source, string id, string value, QueryListBlockAttribute attr)
        : base(source, id, value, attr)
    {
    }

    public override IEnumerable<SearchProposition> GetPropositions(SearchPropositionFlags flags = SearchPropositionFlags.None)
    {
        var shaderIcon = EditorGUIUtility.Load("Shader Icon") as Texture2D;
        yield return new SearchProposition(category: null, "HDRP Decal", "Decal", icon: shaderIcon);
        yield return new SearchProposition(category: null, "URP Decal", "DecalURP", icon: shaderIcon);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| category | Category. |
| id | Filter id of the block. |
| ids | A set of IDs for which the list block will be displayed. |
| name | Displayed name of the block. |
| op | Default operator assigned to the filter when the value changes. |
| type | The list block type is used to get the the icon to be displayed instead of the block name. |

### Constructors

| Constructor | Description |
| --- | --- |
| QueryListBlockAttribute | Register a list block for a given filter. |
