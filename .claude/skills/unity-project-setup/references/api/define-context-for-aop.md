<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/define-context-for-aop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Define a context for the Advanced Object Picker

To help users populate objects in a component, define a context for the search in the **Advanced Object Picker**. This makes it easier to construct the rest of the search query, and might even narrow the results enough that the user doesn’t need to perform a query. For example, if the object is a material, define a context that filters the **Advanced Object Picker** to show only materials, or specific categories of material.

**Tip:** The filter is a standard search query, so the user can remove or change it to change their search context.

## Define the context

To define the context, in the component’s script:

1. For the field that requires object selection, use the `SearchContextAttribute` to set the object selection to **Advanced Object Picker**.
2. Create a query to filter the objects the **Advanced Object Picker** lists.

For example, this query focuses the **Advanced Object Picker** on the Asset search provider:

```
// You can specify an initial query, a search provider and some SearchViewFlags
[SearchContext("t:texture filtermode=0", "asset", SearchViewFlags.OpenInBuilderMode | SearchViewFlags.GridView)]
public Texture pixelArtTexture;
```

To learn more about scripting components, refer to Create components with scripts.

## Examples of context definitions

The following examples demonstrate the queries you can use with `SearchContext` for different workflows.

### Find all scripts where the object selection window is in list view

This query searches only the Assets (`asset`) search provider.

```
[SearchContext("p:t:script", "asset", SearchViewFlags.ListView)]
public MonoScript myProjectScript;
```

### Find all scripts with the word “overlay” in their name

This query searches the Asset Database (`adb`) for objects in both the `Assets` folder and the project’s packages (SearchViewFlags.Packages).

```
[SearchContext("p:t:script overlay", "adb", SearchViewFlags.Packages | SearchViewFlags.CompactView)]
public MonoScript myPackageScript;
```

### Find all materials with a shader that contains the word “New”

Use `SearchViewFlags.HideSearchBar` to hide the search bar, which limits the user’s ability to modify the context.

```
[SearchContext("p:shader:New", assetProviders, SearchViewFlags.HideSearchBar)]
public Material materialNoSearchBar;
```

### Find shaders or materials by shader name

Use a simple query to find the **shader** itself:

```
[SearchContext("p:t:shader unlit", "asset", SearchViewFlags.OpenInBuilderMode | SearchViewFlags.ListView)]
public Shader unlitShader;
```

Use the `ref:` filter and Search expressions to find all the materials that reference shaders with “unlit” in their name.

```
// Find all material referencing any shader with unlit in its name
[SearchContext("p:t:material ref:{t:shader unlit}", "asset")]
public Material materialWithUnlitShader;
```

### Define a context from a saved search query

Use a saved Search query as a context by referencing either its path or GUID:

```
// Open Picker with a preloaded SearchQueryAsset specified by its path
[SearchContext("Assets/Queries/t_sprite.asset", assetProviders)]
public Sprite searchQueryPathSprite;

// Open Picker with a preloaded SearchQueryAsset specified by its guid
[SearchContext("40060e4225366c64a9e24cd17cc9fdc1", assetProviders)]
public Sprite searchQueryGuidSprite;
```

### Custom Query Builder Types Selector

Use the Visual Query Builder language to limit the **Type** dropdown to three types: 2D texture, material, and shader.

```
[SearchContext("p: t:<$list:Texture2D, [Texture2D, Material, Shader]$>", "asset", SearchViewFlags.OpenInBuilderMode | SearchViewFlags.DisableBuilderModeToggle)]
public UnityEngine.Object myObjectOfConstrainedTypes;
```

## Additional resources

- Use the Advanced Object Picker
- Visual query builder reference
- Textual query references
- Create components with scripts
