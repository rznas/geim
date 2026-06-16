<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1-useScrollView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When drawing the TreeView contents, will it be enclosed within a ScrollView?

When enabled, the contents of the TreeView is culled so that anything outside of the ScrollView is not drawn. If the TreeView is contained within an external ScrollView, such as the Inspector window, then disabling this allows the TreeView to use the external ScrollView to perform its culling.

```csharp
using UnityEngine;public class ExampleBehaviourScript : MonoBehaviour
{
    // This is our example list.
    public string[] exampleList;
}
```

To use the following script, add it to the Editor directory.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.IMGUI.Controls;
using UnityEngine;// Simple TreeView that draws a single list property.
class NewBehaviourScriptEditorTreeView : TreeView<int>
{
    SerializedProperty m_Property;    public NewBehaviourScriptEditorTreeView(SerializedProperty property) :
        base(new TreeViewState<int>())
    {
        m_Property = property;
        showBorder = true;
        showAlternatingRowBackgrounds = true;
        useScrollView = false; // We are using the Inspector ScrollView        MultiColumnHeaderState.Column[] columns = new MultiColumnHeaderState.Column[2];
        for (int i = 0; i < columns.Length; ++i)
        {
            columns[i] = new MultiColumnHeaderState.Column();
            columns[i].minWidth = 50;
            columns[i].width = 100;
            columns[i].headerTextAlignment = TextAlignment.Center;
            columns[i].canSort = false;
        }
        columns[0].headerContent = new GUIContent("Index");
        columns[1].headerContent = new GUIContent("Value");
        var multiColState = new MultiColumnHeaderState(columns);
        multiColumnHeader = new MultiColumnHeader(multiColState);
        multiColumnHeader.ResizeToFit();
        Reload();
    }    protected override TreeViewItem<int> BuildRoot()
    {
        int arraySize = m_Property.arraySize;        var root = new TreeViewItem<int> { id = -1, depth = -1, displayName = "Root" };
        var allItems = new List<TreeViewItem<int>>(arraySize);
        for (int i = 0; i < arraySize; ++i)
        {
            var item = new TreeViewItem<int>(i, 0, i.ToString());
            allItems.Add(item);
        }        SetupParentsAndChildrenFromDepths(root, allItems);
        return root;
    }    protected override void RowGUI(RowGUIArgs args)
    {
        var prop = m_Property.GetArrayElementAtIndex(args.item.id);
        for (int i = 0; i < args.GetNumVisibleColumns(); ++i)
        {
            int col = args.GetColumn(i);
            var rect = args.GetCellRect(i);            if (col == 0)
            {
                GUI.Label(rect, args.row.ToString());
            }
            else
            {
                EditorGUI.PropertyField(rect, prop, GUIContent.none);
            }
        }
    }
}// Shows how we can use a TreeView to draw a large list of items.
[CustomEditor(typeof(ExampleBehaviourScript))]
[CanEditMultipleObjects]
public class NewBehaviourScriptEditor : Editor
{
    NewBehaviourScriptEditorTreeView m_TreeView;
    SerializedProperty m_Size;    void OnEnable()
    {
        var listProperty = serializedObject.FindProperty("exampleList");
        m_Size = serializedObject.FindProperty("exampleList.Array.size");
        m_TreeView = new NewBehaviourScriptEditorTreeView(listProperty);
        Undo.undoRedoPerformed += m_TreeView.Reload;
    }    void OnDisable()
    {
        if (m_TreeView != null)
            Undo.undoRedoPerformed -= m_TreeView.Reload;
    }    public override void OnInspectorGUI()
    {
        serializedObject.Update();
        EditorGUI.BeginChangeCheck();
        int newSize = EditorGUILayout.IntField("Size", m_Size.intValue);
        if (EditorGUI.EndChangeCheck())
        {
            m_Size.intValue = newSize;
            m_TreeView.Reload();
        }        var rect = EditorGUILayout.GetControlRect(false, m_TreeView.totalHeight);
        m_TreeView.OnGUI(rect);
        serializedObject.ApplyModifiedProperties();
    }
}
```
