<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchContextAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| query | Initial search query text used to open the Object Picker window. |
| flags | Search view flags used to open the Object Picker in various states. |
| providerIdsCommaSeparated | A list of Search Provider IDs that will be used to create the search context. |
| instantiableProviders | Search provider concrete types that will be instantiated and assigned to the Object Picker search context. |

### Description

Search context constructor used to add some search context to an object field.

```csharp
const string assetProviders = "adb;asset";
const string objectProviders = "adb,asset,scene";
const SearchViewFlags pickerMinimalUIFlags = SearchViewFlags.Packages |
    SearchViewFlags.IgnoreSavedSearches |
    SearchViewFlags.DisableSavedSearchQuery |
    SearchViewFlags.OpenInBuilderMode |
    SearchViewFlags.DisableBuilderModeToggle |
    SearchViewFlags.IgnoreSavedSearches;

[SearchContext("cub", "adb", SearchViewFlags.ObjectPickerAdvancedUI | SearchViewFlags.ListView | SearchViewFlags.IgnoreSavedSearches)] public MonoScript myProjectScript;
[SearchContext("script", "adb", SearchViewFlags.Packages | SearchViewFlags.CompactView)] public MonoScript myPackageScript;
[SearchContext("t:texture", assetProviders, SearchViewFlags.ObjectPickerAdvancedUI | SearchViewFlags.GridView)] public Texture myTexture;
[SearchContext("t:texture", assetProviders, SearchViewFlags.ObjectPickerAdvancedUI | SearchViewFlags.GridView)] public Texture[] myTextureArray;
[SearchContext("t:texture", assetProviders, SearchViewFlags.ObjectPickerAdvancedUI | SearchViewFlags.GridView)] public List<Texture> myTextureList;
[SearchContext("t:texture", "adb", SearchViewFlags.OpenInspectorPreview)] public Texture myTextureWithInspector;
[SearchContext("non_mobile", SearchViewFlags.Centered)] public UnityEngine.Object myAnyObject;
[SearchContext("non_mobile", SearchViewFlags.Debug)] public UnityEngine.Object myDebugObject;
[SearchContext("t:mesh is:nested mesh", "asset")] public UnityEngine.Object assetMesh;
[SearchContext("h: cube", "scene")] public MeshFilter sceneMesh;
[SearchContext("shader:standard", assetProviders, SearchViewFlags.HideSearchBar)] public Material materialNoSearchBar;
[SearchContext("select{p:t:material, @label, @size}", objectProviders, SearchViewFlags.TableView)] public Material selectMaterial;
[SearchContext("Assets/Queries/textures.asset", assetProviders)] public Texture searchQueryPathTexture;
[SearchContext("3c7f5dff3fb5d724688dfcecfb131b2a", assetProviders)] public Texture searchQueryGuidTexture;
[SearchContext("non_mobile", SearchViewFlags.ObjectPickerAdvancedUI | SearchViewFlags.EnableSearchQuery)] public UnityEngine.Object myObjectWithSearchQueryEnabled;
[SearchContext("non_mobile", SearchViewFlags.ObjectPickerAdvancedUI | SearchViewFlags.DisableInspectorPreview)] public UnityEngine.Object myObjectWithInspectorDisabled;
[SearchContext("p: t:texture", "asset", SearchViewFlags.ObjectPickerAdvancedUI | SearchViewFlags.OpenInBuilderMode)] public Texture myTextureWithBuilder;
[SearchContext("p: t:texture", "asset", SearchViewFlags.OpenInBuilderMode | SearchViewFlags.DisableBuilderModeToggle)] public Texture myTextureWithBuilderNoToggle;
[SearchContext("p: t:texture", "asset", SearchViewFlags.OpenInTextMode | SearchViewFlags.DisableBuilderModeToggle)] public Texture myTextureNoBuilderNoToggle;
[SearchContext("t:currentobject{@type, 'texture'}", "asset")] public UnityEngine.Object myObjectWithContext;

[SearchContext("light")] public UnityEngine.GameObject lightSearch;
[SearchContext("camera", SearchViewFlags.None)] public UnityEngine.GameObject cameraSearch;

public UnityEngine.GameObject noSearchContext;

#if USE_QUERY_BUILDER
[SearchContext("p: t:<$list:Texture2D, [Texture2D, Material, Prefab]$>", "asset", SearchViewFlags.OpenInBuilderMode | SearchViewFlags.DisableBuilderModeToggle)] public UnityEngine.Object myObjectOfConstrainedTypes;
#endif
```
