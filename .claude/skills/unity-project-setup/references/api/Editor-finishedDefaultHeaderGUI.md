<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor-finishedDefaultHeaderGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event raised while drawing the header of the Inspector window, after the default header items have been drawn.

Add an event handler to this event in order to draw additional items in the header for the Editor passed to the event handler method.

The following example script displays an asset's GUID as a copyable label in the header, if the inspected object is a persistent asset and not a Scene object. Copy this example script into a file called EditorHeaderGUID.cs and put it in a folder called Editor.

 *The Inspector header with a custom GUID control added.*

```csharp
using UnityEditor;[InitializeOnLoadAttribute]
static class EditorHeaderGUID
{
    static EditorHeaderGUID()
    {
        Editor.finishedDefaultHeaderGUI += DisplayGUIDIfPersistent;
    }    static void DisplayGUIDIfPersistent(Editor editor)
    {
        if (!EditorUtility.IsPersistent(editor.target))
            return;        var guid = AssetDatabase.AssetPathToGUID(AssetDatabase.GetAssetPath(editor.target));
        var totalRect = EditorGUILayout.GetControlRect();
        var controlRect = EditorGUI.PrefixLabel(totalRect, EditorGUIUtility.TrTempContent("GUID"));
        if (editor.targets.Length > 1)
            EditorGUI.LabelField(controlRect, EditorGUIUtility.TrTempContent("[Multiple objects selected]"));
        else
            EditorGUI.SelectableLabel(controlRect, guid);
    }
}
```
