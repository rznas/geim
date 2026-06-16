<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.SearchEngineScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An enumeration that contains the available search engine scopes.

A search engine scope identifies where a search comes from. This is useful when implementing a single entry point for the base engine functions:

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.SearchService;

class BaseEngine : ISearchEngineBase
{
    public virtual void BeginSession(ISearchContext context)
    {
        if (context.engineScope == ObjectSelectorSearch.EngineScope || context.engineScope == ProjectSearch.EngineScope)
        {
            // Cache Assets.
        }
        if (context.engineScope == ObjectSelectorSearch.EngineScope || context.engineScope == SceneSearch.EngineScope)
        {
            // Cache Scene objects.
        }
    }

    public virtual void EndSession(ISearchContext context)
    {
        // Flush any cached data.
    }

    public virtual void BeginSearch(ISearchContext context, string query)
    {
    }

    public virtual void EndSearch(ISearchContext context)
    {
    }

    public string name => "My Engine Service";
}

[SceneSearchEngine]
class SampleSceneFilterEngine : BaseEngine, ISceneSearchEngineV2
{
    public bool Filter(ISearchContext context, string query, HierarchyIterator objectToFilter)
    {
        // Use cached Scene objects.
        // ...
        return true;
    }
}

[ProjectSearchEngine]
class SampleProjectSearchEngine : BaseEngine, IProjectSearchEngine
{
    public IEnumerable<string> Search(ISearchContext context, string query, Action<IEnumerable<string>> asyncItemsReceived)
    {
        // Use cached Assets.
        // ...
        return new List<string>();
    }
}

[ObjectSelectorEngine]
class SampleObjectSelectorEngine : BaseEngine, IObjectSelectorEngine
{
    public bool SelectObject(ISearchContext context, Action<UnityEngine.Object, bool> onObjectSelectorClosed, Action<UnityEngine.Object> onObjectSelectedUpdated)
    {
        // Use cached Assets and Scene objects.
        return true;
    }

    public void SetSearchFilter(ISearchContext context, string searchFilter)
    {}
}
```

### Properties

| Property | Description |
| --- | --- |
| Scene | Identifies a search for Scene engines. |
| Project | Identifies a search for Project engines. |
| ObjectSelector | Identifies a search for ObjectSelector engines. |
