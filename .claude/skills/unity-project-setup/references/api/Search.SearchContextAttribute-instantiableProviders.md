<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchContextAttribute-instantiableProviders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search provider concrete types that will be instantiated and assigned to the Object Picker search context.

```csharp
[SearchContext("my search", new[] { typeof(MyTextureProvider) })] public Texture2D mySpecialTexture2D;

class MyTextureProvider : SearchProvider
{
    static string ProviderId = "myTexture";

    public MyTextureProvider()
        : base(ProviderId)
    {
        fetchItems = (context, items, provider) => SearchItems(context, provider);
        fetchLabel = (item, context) =>
        {
            var assetPath = AssetDatabase.GUIDToAssetPath((string)item.data);
            return GetNameFromPath(assetPath);
        };
        fetchThumbnail = (item, context) =>
        {
            var obj = toObject(item, typeof(Texture2D));
            return AssetPreview.GetAssetPreview(obj);
        };
        toObject = (item, type) =>
        {
            var assetPath = AssetDatabase.GUIDToAssetPath((string)item.data);
            return AssetDatabase.LoadAssetAtPath(assetPath, type);
        };
    }

    static IEnumerator SearchItems(SearchContext context, SearchProvider provider)
    {
        foreach (var texture2DGuid in GetMyTextures())
        {
            yield return provider.CreateItem(context, texture2DGuid, texture2DGuid.GetHashCode(), null, null, null, texture2DGuid);
        }
    }

    static IEnumerable<string> GetMyTextures()
    {
        return AssetDatabase.FindAssets("t:texture2d");
    }

    static string GetNameFromPath(string path)
    {
        var lastSep = path.LastIndexOf('/');
        if (lastSep == -1)
            return path;

        return path.Substring(lastSep + 1);
    }
}
```
