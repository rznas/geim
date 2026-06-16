<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchList.Fetch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<SearchItem>** List of search items. Items can be null and must be discarded.

### Description

Yields search items until the search query is finished.

Nullified items can be returned while the search request is pending.

```csharp
[MenuItem("Examples/SearchService/Request List")]
public static void RequestList()
{
    ISearchList results = SearchService.Request("*.cs");

    // It is important to note that when you request some search results,
    // that you need to enumerate them asynchronously using the returned search list.
    AsyncResultEnumerator.Fetch(results, item => Debug.Log(item));
}

class AsyncResultEnumerator
{
    private Action<SearchItem> m_OnEnumerate;
    private IEnumerator<SearchItem> m_Iterator;

    public static AsyncResultEnumerator Fetch(ISearchList results, Action<SearchItem> onEnumerate)
    {
        return new AsyncResultEnumerator(results, onEnumerate);
    }

    public AsyncResultEnumerator(ISearchList results, Action<SearchItem> onEnumerate)
    {
        m_OnEnumerate = onEnumerate;
        m_Iterator = results.GetEnumerator();
        EditorApplication.update += EnumerateResults;
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
```
