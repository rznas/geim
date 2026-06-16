<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchColumnProviderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The search column provider attribute is used to define new formats for a given column.

Search column formats are equivalent to formats in a spreadsheet application. They define how the data in a column cell is manipulated and displayed.

```csharp
[SearchColumnProvider("Color")]
public static void InitializeColorColumn(SearchColumn column)
{
    column.drawer = args =>
    {
        if (args.value is Color c)
            return EditorGUI.ColorField(args.rect, GUIContent.none, c, showEyedropper: false, showAlpha: true, hdr: false);
        return args.value;
    };
}
```

Here is an example using search column delegates to manipulate the data.

```csharp
[SearchColumnProvider("GameObject/Enabled")]
public static void InitializeObjectReferenceColumn(SearchColumn column)
{
    column.getter = args => GetEnabled(args.item);
    column.drawer = args => DrawEnabled(args);
    column.setter = args => SetEnabled(args);
}
```

### Properties

| Property | Description |
| --- | --- |
| provider | Unique name of the search column provider. |
