<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelectorEngineAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class attribute to register ObjectSelector search engines automatically. Search engines with this attribute must implement the IObjectSelectorEngine interface.

The following example creates an ObjectSelector search engine:

```csharp
using System;
using UnityEditor.SearchService;
using Object = UnityEngine.Object;

[ObjectSelectorEngine]
class TestObjectSelectorSearchEngine : IObjectSelectorEngine
{
    public string name => "My Custom Engine";

    public void BeginSession(ISearchContext context)
    {
    }

    public void EndSession(ISearchContext context)
    {
        // EndSession can be called in two ways:
        // 1. Naturally when the onObjectSelectorClosed is called upon closing the window (which you should do in your window).
        // 2. Forcefully when a new session is started before the current one is finished.
        // In the second case, we need to close the window to avoid any issues since the ObjectSelector API does not support concurrent selectors.
        if ((((ObjectSelectorSearchContext)context).endSessionModes & ObjectSelectorSearchEndSessionModes.CloseSelector) != 0 && ObjectSelectorWindow.instance != null)
        {
            ObjectSelectorWindow.instance.Close();
        }
    }

    public void BeginSearch(ISearchContext context, string query)
    {
        // Not called.
    }

    public void EndSearch(ISearchContext context)
    {
        // Not called.
    }

    public bool SelectObject(ISearchContext context, Action<Object, bool> onObjectSelectorClosed, Action<Object> onObjectSelectedUpdated)
    {
        ObjectSelectorWindow.Show((ObjectSelectorSearchContext)context, onObjectSelectedUpdated, onObjectSelectorClosed);
        return true;
    }

    public void SetSearchFilter(ISearchContext context, string searchFilter)
    {
        ObjectSelectorWindow.instance.searchText = searchFilter;
    }
}
```

The following example creates an object selector window that displays returned items as a list of names and paths:

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.SearchService;
using UnityEditor.UIElements;
using UnityEngine.UIElements;
using Object = UnityEngine.Object;

public class ObjectSelectorWindow : EditorWindow
{
    public class ItemInfo
    {
        public int instanceId;
        public string label;
        public bool isAsset;
        public GlobalObjectId globalObjectId;
    }

    static ObjectSelectorSearchContext s_Context;
    static Action<Object> s_OnSelectionChanged;
    static Action<Object, bool> s_OnSelectorClosed;
    public static ObjectSelectorWindow instance { get; private set; }

    List<ItemInfo> m_FilteredItems;
    ToolbarSearchField m_Searchbox;
    ListView m_ListView;
    string m_SearchText;
    ItemInfo m_CurrentItem;
    bool m_Canceled = true;

    public bool initialized { get; private set; } = false;

    public string searchText
    {
        get => m_SearchText;
        set
        {
            m_SearchText = value;
            FilterItems();
        }
    }

    public List<ItemInfo> allItems { get; private set; }

    public static void Show(ObjectSelectorSearchContext context, Action<Object> onSelectionChanged, Action<Object, bool> onSelectorClosed)
    {
        s_Context = context;
        s_OnSelectionChanged = onSelectionChanged;
        s_OnSelectorClosed = onSelectorClosed;

        // Create a window with CreateInstance, and show it.
        var window = CreateInstance<ObjectSelectorWindow>();
        instance = window;
        window.Show();
    }

    void Init()
    {
        m_SearchText = "";
        allItems = new List<ItemInfo>();
        m_FilteredItems = new List<ItemInfo>();

        if ((s_Context.visibleObjects & VisibleObjects.Assets) == VisibleObjects.Assets)
            allItems.AddRange(FetchAllAssets());
        if ((s_Context.visibleObjects & VisibleObjects.Scene) == VisibleObjects.Scene)
            allItems.AddRange(FetchAllGameObjects(s_Context));

        allItems.Sort((item, other) => item.label.CompareTo(other.label));
        m_FilteredItems.AddRange(allItems);
    }

    void OnEnable()
    {
        Init();

        m_Searchbox = new ToolbarSearchField();
        m_Searchbox.RegisterValueChangedCallback(SearchFilterChanged);
        m_Searchbox.style.flexGrow = 1;
        m_Searchbox.style.maxHeight = 16;
        m_Searchbox.style.width = Length.Percent(100f);
        m_Searchbox.style.marginRight = 4;
        rootVisualElement.Add(m_Searchbox);

        m_ListView = new ListView(m_FilteredItems, 16, MakeItem, BindItem);
        m_ListView.selectionChanged += ItemSelectionChanged;
        m_ListView.itemsChosen += ItemsChosen;
        m_ListView.style.flexGrow = 1;
        rootVisualElement.Add(m_ListView);

        // Initialize selection
        if (s_Context.currentObject != null)
        {
            var currentSelectedId = s_Context.currentObject.GetInstanceID();
            var selectedIndex = m_FilteredItems.FindIndex(item => item.instanceId == currentSelectedId);
            if (selectedIndex >= 0)
                m_ListView.selectedIndex = selectedIndex;
        }

        FinishInit();
    }

    void FinishInit()
    {
        EditorApplication.delayCall += () =>
        {
            m_ListView.Focus();
            initialized = true;
        };
    }

    void OnDisable()
    {
        // Call the onSelectorClosed callback when the window is closing.
        s_OnSelectorClosed?.Invoke(GetCurrentObject(), m_Canceled);
        instance = null;
    }

    void SearchFilterChanged(ChangeEvent<string> evt)
    {
        searchText = evt.newValue;
    }

    void FilterItems()
    {
        m_FilteredItems.Clear();
        m_FilteredItems.AddRange(allItems.Where(item => string.IsNullOrEmpty(searchText) || item.label.IndexOf(searchText, StringComparison.InvariantCultureIgnoreCase) >= 0));

        m_ListView.Rebuild();
    }

    void BindItem(VisualElement listItem, int index)
    {
        if (index < 0 || index >= m_FilteredItems.Count)
            return;

        var label = listItem as Label;
        if (label == null)
            return;
        label.text = m_FilteredItems[index].label;
    }

    static VisualElement MakeItem()
    {
        return new Label();
    }

    void ItemSelectionChanged(IEnumerable<object> selectedItems)
    {
        m_CurrentItem = selectedItems.FirstOrDefault() as ItemInfo;
        s_OnSelectionChanged?.Invoke(GetCurrentObject());
    }

    void ItemsChosen(IEnumerable<object> selectedItems)
    {
        m_CurrentItem = selectedItems.FirstOrDefault() as ItemInfo;
        m_Canceled = false;
        Close();
    }

    static IEnumerable<ItemInfo> FetchAllAssets()
    {
        var allPaths = AssetDatabase.GetAllAssetPaths();
        if (allPaths == null)
            yield break;

        var requiredTypes = s_Context.requiredTypeNames != null ? s_Context.requiredTypeNames.ToList() : new List<string>();
        foreach (var path in allPaths)
        {
            var type = AssetDatabase.GetMainAssetTypeAtPath(path);
            var typeName = type.FullName ?? "";
            if (requiredTypes.Any(requiredType => typeName.Contains(requiredType)))
            {
                var asset = AssetDatabase.LoadMainAssetAtPath(path);
                var globalObjectId = GlobalObjectId.GetGlobalObjectIdSlow(asset);
                var instanceId = asset?.GetInstanceID() ?? 0;
                yield return new ItemInfo { instanceId = instanceId, label = path, isAsset = true, globalObjectId = globalObjectId };
            }
        }
    }

    static IEnumerable<ItemInfo> FetchAllGameObjects(ObjectSelectorSearchContext context)
    {
        var property = new HierarchyIterator(HierarchyType.GameObjects, false);

        var requiredTypes = s_Context.requiredTypeNames != null ? s_Context.requiredTypeNames.ToList() : new List<string>();
        while (property.Next(null))
        {
            var objectReferenced = property.pptrValue;
            if (objectReferenced == null)
                continue;
            var globalObjectId = GlobalObjectId.GetGlobalObjectIdSlow(property.entityId);
            var typeName = objectReferenced.GetType().FullName ?? "";
            if (requiredTypes.Any(requiredType => typeName.Contains(requiredType)))
                yield return new ItemInfo { instanceId = property.entityId, label = property.name, isAsset = false, globalObjectId = globalObjectId };
        }
    }

    Object GetCurrentObject()
    {
        if (m_CurrentItem == null)
            return null;
        var currentInstanceId = m_CurrentItem.instanceId;
        if (m_CurrentItem.isAsset)
        {
            var asset = AssetDatabase.LoadMainAssetAtPath(m_CurrentItem.label);
            currentInstanceId = asset.GetInstanceID();
        }
        return EditorUtility.InstanceIDToObject(currentInstanceId);
    }
}
```
