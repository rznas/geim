<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.Scene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this API to perform searches in the Scene. Engines for this type of search implement the ISceneSearchEngine interface.

Registered Scene engines are called during searches in the Scene hierarchy. When the default object selector is used, they are also called for GameObject searches.

The following example creates a Scene engine:

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.SearchService;
using UnityEngine;
using Object = UnityEngine.Object;[SceneSearchEngine]
class TestSceneFilterEngine : ISceneSearchEngine
{
    public string name => "My Custom Engine";    public void BeginSession(ISearchContext context)
    {
    }    public void EndSession(ISearchContext context)
    {
    }    public void BeginSearch(ISearchContext context, string query)
    {
    }    public void EndSearch(ISearchContext context)
    {
    }    public bool Filter(ISearchContext context, string query, HierarchyProperty objectToFilter)
    {
        var instanceId = objectToFilter.instanceID;
        var obj = Object.FindObjectsOfType<GameObject>().FirstOrDefault(o => o.GetInstanceID() == instanceId);
        return obj != null && obj.name.IndexOf(query, StringComparison.InvariantCultureIgnoreCase) >= 0;
    }
}
```

Additional resources: SceneSearchEngineAttribute, ISceneSearchEngine.
