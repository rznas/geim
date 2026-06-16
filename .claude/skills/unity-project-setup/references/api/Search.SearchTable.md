<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchTable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A search table configuration is used to define the columns when search results are displayed in table view.

See DisplayMode.Table.

```csharp
static SearchTable CreateDecalsTableConfiguration()
{
    var materialIcon = EditorGUIUtility.Load("Material Icon") as Texture;
    var shaderIcon = EditorGUIUtility.Load("Shader Icon") as Texture;
    return new SearchTable("decals", new SearchColumn[]
    {
        new SearchColumn("DecalsName0", "label", "name", new GUIContent("Name", materialIcon)) { width = 160 },
        new SearchColumn("DecalsShader1", "#shader", "name", new GUIContent("Shader", shaderIcon)) { width = 150 },
        new SearchColumn("DecalsBaseColor1", "#_BaseColor", "color", new GUIContent("Color", shaderIcon)) { width = 130 },
    });
}
```

The previous example can be used when creating a SearchViewState.

```csharp
var selectHandler = args.selectorClosedHandler;
var trackingHandler = args.trackingHandler;

var query = SearchService.CreateContext(CreateDecalProvider(), $"a={dbName} t={selectContext.requiredTypeNames.First()} shader=Decal");
var viewState = SearchViewState.CreatePickerState("decals",
    query,
    selectHandler: (item, canceled) => selectHandler(item?.ToObject(), canceled),
    trackingHandler: (item) => trackingHandler(item?.ToObject()), null,
    SearchViewFlags.TableView
    );
viewState.tableConfig = CreateDecalsTableConfiguration();
var materialIcon = EditorGUIUtility.Load("Material Icon") as Texture;
viewState.windowTitle = new GUIContent("Material Decals", materialIcon);
viewState.hideAllGroup = true;
viewState.position = SearchUtils.GetMainWindowCenteredPosition(new Vector2(600, 400));
s_SearchView = SearchService.ShowPicker(viewState);
```

### Properties

| Property | Description |
| --- | --- |
| columns | Search columns displayed in table view. |
| id | Unique id of the search table used for persistance. |
| itemHeight | Setup the fixed height of all items in the table. |
| name | Display name of the search table used for serialization. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchTable | Creates a new search table configuration. |

### Public Methods

| Method | Description |
| --- | --- |
| Assign | Assign from a SeachTable. Will copy (and clone) every member from the source SearchTable. |
| Clone | Creates a copy of the search table configuration. |
| InitFunctors | Initialize all search columns functors based on their format provider. |

### Static Methods

| Method | Description |
| --- | --- |
| LoadFromFile | Load a search table configuraiton from a JSON file. |
