<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchFlags.Sorted.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Fetched items are sorted by the search service.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

public class SearchFlags_Sorted
{
    [MenuItem("Examples/SearchFlags/Sorted")]
    public static void RequestAll()
    {
        ISearchList results = SearchService.Request("p: t:Script", SearchFlags.Sorted);
        AsyncResultEnumerator.Fetch(results, item => Debug.Log(item));
    }

    class AsyncResultEnumerator
    {
        private Action<SearchItem> m_OnEnumerate;
        private IEnumerator<SearchItem> m_Iterator;
        private ISearchList m_SearchList;

        public static AsyncResultEnumerator Fetch(ISearchList results, Action<SearchItem> onEnumerate)
        {
            return new AsyncResultEnumerator(results, onEnumerate);
        }

        public AsyncResultEnumerator(ISearchList results, Action<SearchItem> onEnumerate)
        {
            m_OnEnumerate = onEnumerate;
            m_SearchList = results;
            m_Iterator = results.GetEnumerator();
            EditorApplication.update += WaitForSearchCompleted;
        }

        private void WaitForSearchCompleted()
        {
            // Wait for the search to complete, otherwise it will not yield sorted items.
            if (!m_SearchList.pending)
            {
                EditorApplication.update -= WaitForSearchCompleted;
                EditorApplication.update += EnumerateResults;
            }
        }

        private void EnumerateResults()
        {
            if (m_Iterator == null || !m_Iterator.MoveNext())
            {
                m_Iterator = null;
                EditorApplication.update -= EnumerateResults;
            }
            else if (m_Iterator.Current != null)
                m_OnEnumerate(m_Iterator.Current);
        }
    }
}
```
