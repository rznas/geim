<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this API to select objects. Engines for this type of search implement the IObjectSelectorEngine interface.

When a custom ObjectSelector engine is active, the object selector calls registered ObjectSelector engines. When the default ObjectSelector engine is active, the window uses the default object selector, and the internal searches use the active Scene and Project search engines.

The following example creates an ObjectSelector engine:

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.SearchService;
using UnityEngine;
using Object = UnityEngine.Object;
using ObjectSelector = UnityEditor.SearchService.ObjectSelector;[ObjectSelectorEngine]
class TestObjectSelectorSearchEngine : IObjectSelectorEngine
{
    public string name => "My Custom Engine";    public void BeginSession(ISearchContext context)
    {
    }    public void EndSession(ISearchContext context)
    {
    }    public void BeginSearch(ISearchContext context, string query)
    {
    }    public void EndSearch(ISearchContext context)
    {
    }    public bool SelectObject(ISearchContext context, Action<Object, bool> onObjectSelectorClosed, Action<Object> onObjectSelectedUpdated)
    {
        ObjectSelectorWindow.Show((ObjectSelectorSearchContext)context, onObjectSelectedUpdated, onObjectSelectorClosed);
        return true;
    }    public void SetSearchFilter(ISearchContext context, string searchFilter)
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
using ObjectSelector = UnityEditor.SearchService.ObjectSelector;public class ObjectSelectorWindow : EditorWindow
{
    public class ItemInfo
    {
        public int instanceId;
        public string label;
    }    static ObjectSelectorSearchContext s_Context;
    static Action<Object> s_OnSelectionChanged;
    static Action<Object, bool> s_OnSelectorClosed;
    static Func<Object, bool> s_FilterConstraint;
    public static ObjectSelectorWindow instance { get; private set; }    List<ItemInfo> m_FilteredItems;
    ToolbarSearchField m_Searchbox;
    ListView m_ListView;
    string m_SearchText;
    ItemInfo m_CurrentItem;
    bool m_Canceled = true;    public bool initialized { get; private set; } = false;    public string searchText
    {
        get => m_SearchText;
        set
        {
            m_SearchText = value;
            FilterItems();
        }
    }    public List<ItemInfo> allItems { get; private set; }    public static void Show(ObjectSelectorSearchContext context, Action<Object> onSelectionChanged, Action<Object, bool> onSelectorClosed, Func<Object, bool> pickerConstraint = null)
    {
        s_Context = context;
        s_OnSelectionChanged = onSelectionChanged;
        s_OnSelectorClosed = onSelectorClosed;
        s_FilterConstraint = pickerConstraint ?? (o => true);        // Create a window with CreateInstance, and show it with ShowAuxWindow.
        var window = CreateInstance<ObjectSelectorWindow>();
        instance = window;
        window.ShowAuxWindow();
    }    void Init()
    {
        m_SearchText = "";
        allItems = new List<ItemInfo>();
        m_FilteredItems = new List<ItemInfo>();        if ((s_Context.visibleObjects & VisibleObjects.Assets) == VisibleObjects.Assets)
            allItems.AddRange(FetchAllAssets());
        if ((s_Context.visibleObjects & VisibleObjects.Scene) == VisibleObjects.Scene)
            allItems.AddRange(FetchAllGameObjects(s_Context));        allItems.Sort((item, other) => item.label.CompareTo(other.label));
        m_FilteredItems.AddRange(allItems);
    }    void OnEnable()
    {
        Init();        m_Searchbox = new ToolbarSearchField();
        m_Searchbox.RegisterValueChangedCallback(SearchFilterChanged);
        m_Searchbox.style.flexGrow = 1;
        m_Searchbox.style.maxHeight = 16;
        m_Searchbox.style.width = Length.Percent(100f);
        m_Searchbox.style.marginRight = 4;
        rootVisualElement.Add(m_Searchbox);        m_ListView = new ListView(m_FilteredItems, 16, MakeItem, BindItem);
        m_ListView.onSelectionChange += ItemSelectionChanged;
        m_ListView.onItemsChosen += ItemsChosen;
        m_ListView.style.flexGrow = 1;
        rootVisualElement.Add(m_ListView);        // Initialize selection
        if (s_Context.currentObject != null)
        {
            var currentSelectedId = s_Context.currentObject.GetInstanceID();
            var selectedIndex = m_FilteredItems.FindIndex(item => item.instanceId == currentSelectedId);
            if (selectedIndex >= 0)
                m_ListView.selectedIndex = selectedIndex;
        }        FinishInit();
    }    void FinishInit()
    {
        EditorApplication.delayCall += () =>
        {
            m_ListView.Focus();
            initialized = true;
        };
    }    void OnDisable()
    {
        s_OnSelectorClosed?.Invoke(GetCurrentObject(), m_Canceled);
        instance = null;
    }    public void SetSearchFilter(string query)
    {
        m_Searchbox.value = query;
    }    void SearchFilterChanged(ChangeEvent<string> evt)
    {
        searchText = evt.newValue;
    }    void FilterItems()
    {
        m_FilteredItems.Clear();
        m_FilteredItems.AddRange(allItems.Where(item => string.IsNullOrEmpty(searchText) || item.label.IndexOf(searchText, StringComparison.InvariantCultureIgnoreCase) >= 0));        m_ListView.Refresh();
    }    void BindItem(VisualElement listItem, int index)
    {
        if (index < 0 || index >= m_FilteredItems.Count)
            return;        var label = listItem as Label;
        if (label == null)
            return;
        label.text = m_FilteredItems[index].label;
    }    static VisualElement MakeItem()
    {
        return new Label();
    }    void ItemSelectionChanged(IEnumerable<object> selectedItems)
    {
        m_CurrentItem = selectedItems.FirstOrDefault() as ItemInfo;
        s_OnSelectionChanged?.Invoke(GetCurrentObject());
    }    void ItemsChosen(IEnumerable<object> selectedItems)
    {
        m_CurrentItem = selectedItems.FirstOrDefault() as ItemInfo;
        m_Canceled = false;
        Close();
    }    static IEnumerable<ItemInfo> FetchAllAssets()
    {
        var allPaths = AssetDatabase.GetAllAssetPaths();
        if (allPaths == null)
            yield break;        var requiredTypes = s_Context.requiredTypeNames != null ? s_Context.requiredTypeNames.ToList() : new List<string>();
        foreach (var path in allPaths)
        {
            var type = AssetDatabase.GetMainAssetTypeAtPath(path);
            var typeName = type.FullName ?? "";
            if (requiredTypes.Any(requiredType => typeName.Contains(requiredType)))
            {
                var asset = AssetDatabase.LoadMainAssetAtPath(path);
                var matchFilterConstraint = s_FilterConstraint?.Invoke(asset);
                if (matchFilterConstraint.HasValue && !matchFilterConstraint.Value)
                    continue;
                var instanceId = asset?.GetInstanceID() ?? 0;
                yield return new ItemInfo { instanceId = instanceId, label = path };
            }
        }
    }    static IEnumerable<ItemInfo> FetchAllGameObjects(ObjectSelectorSearchContext context)
    {
        var property = new HierarchyProperty(HierarchyType.GameObjects, false);        var requiredTypes = s_Context.requiredTypeNames != null ? s_Context.requiredTypeNames.ToList() : new List<string>();
        while (property.Next(null))
        {
            var objectReferenced = property.pptrValue;
            if (objectReferenced == null)
                continue;
            var matchFilterConstraint = s_FilterConstraint?.Invoke(objectReferenced);
            if (matchFilterConstraint.HasValue && !matchFilterConstraint.Value)
                continue;
            var typeName = objectReferenced.GetType().FullName ?? "";
            if (requiredTypes.Any(requiredType => typeName.Contains(requiredType)))
                yield return new ItemInfo { instanceId = property.instanceID, label = property.name };
        }
    }    Object GetCurrentObject()
    {
        if (m_CurrentItem == null)
            return null;
        return EditorUtility.InstanceIDToObject(m_CurrentItem.instanceId);
    }
}
```

Additional resources: ObjectSelectorEngineAttribute, IObjectSelectorEngine.
