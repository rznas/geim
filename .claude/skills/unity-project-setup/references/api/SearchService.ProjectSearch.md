<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ProjectSearch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this API to perform searches in the Project. Engines for this type of search implement the IProjectSearchEngine interface.

Registered Project search engines are called during searches in the Project browser. When the default object selector is used, they are also called for Asset searches.

The following example creates a Project search engine:

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.SearchService;
using UnityEngine;
using Object = UnityEngine.Object;[ProjectSearchEngine]
class TestProjectSearchEngine : IProjectSearchEngine
{
    public string name => "My Custom Engine";    public void BeginSession(ISearchContext context)
    {
    }    public void EndSession(ISearchContext context)
    {
    }    public void BeginSearch(ISearchContext context, string query)
    {
    }    public void EndSearch(ISearchContext context)
    {
    }    public IEnumerable<string> Search(ISearchContext context, string query, Action<IEnumerable<string>> asyncItemsReceived)
    {
        var allPaths = AssetDatabase.GetAllAssetPaths();
        var filteredPaths = allPaths.Where(path => !path.StartsWith("Library")).Where(path => path.IndexOf(query, StringComparison.InvariantCultureIgnoreCase) >= 0).ToList();
        return filteredPaths;
    }
}
```

Additional resources: ProjectSearchEngineAttribute, IProjectSearchEngine.

### Static Properties

| Property | Description |
| --- | --- |
| EngineScope | A enum that indicates the search scope for ProjectSearch engines. It is used by ProjectSearchContext. |

### Static Methods

| Method | Description |
| --- | --- |
| RegisterEngine | Registers a Project search engine dynamically. |
| UnregisterEngine | Unregisters a dynamically registered engine. |
