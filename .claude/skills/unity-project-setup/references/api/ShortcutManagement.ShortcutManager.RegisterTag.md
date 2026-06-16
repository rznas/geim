<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ShortcutManager.RegisterTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | Context string identifier. |
| e | Context enum identifier. |

### Description

Registers the tag as a custom context used to filter shortcuts after a window context is determined.

Use this method to define contexts that span across Editor windows, or encompass certain window states and GUI controls.

```csharp
using UnityEditor;
using UnityEditor.ShortcutManagement;
using UnityEngine;public class MyWindow : EditorWindow
{
    const KeyCode shortcutKey = KeyCode.A;    public enum MyTool
    {
        EmptyTool,
        ShortcutTool
    }    MyTool tool;
    MyTool Tool
    {
        get => tool;
        set
        {
            if (tool == value) return;            ShortcutManager.RegisterTag(tool = value);
            Debug.Log($"{tool} tool registered");
        }
    }    bool customTag;
    bool CustomTag
    {
        get => customTag;
        set
        {
            if (customTag == value) return;            customTag = value;
            var tag = nameof(customTag);            if (customTag)
            {
                ShortcutManager.RegisterTag(tag);
                Debug.Log($"{tag} enabled");
            }
            else
            {
                ShortcutManager.UnregisterTag(tag);
                Debug.Log($"{tag} disabled");
            }
        }
    }    [Shortcut("Tags/No Tag", typeof(MyWindow), shortcutKey)]
    static void NoTagShortcut()
    {
        Debug.Log($"Shortcut for MyWindow without tag context executed");
    }    [Shortcut("Tags/Shortcut Tool", typeof(MyWindow), "MyTool.ShortcutTool", shortcutKey)]
    static void ShortcutToolShortcut()
    {
        Debug.Log($"Shortcut for MyWindow with 'MyTool.ShortcutTool' tag context executed");
    }    [Shortcut("Tags/Custom Tag", typeof(MyWindow), nameof(customTag), shortcutKey)]
    static void CustomTagShortcut()
    {
        Debug.Log($"Shortcut for MyWindow with {nameof(customTag)} tag context executed");
    }    [MenuItem("Window/My Window")]
    static void OpenWindow() => EditorWindow.GetWindow(typeof(MyWindow)).Show();    void OnGUI()
    {
        EditorGUILayout.LabelField("Tools");
        Tool = (MyTool)EditorGUILayout.EnumPopup("Custom Tool", Tool);
        CustomTag = EditorGUILayout.Toggle("Custom Tag", CustomTag);        EditorGUILayout.Space();
        EditorGUILayout.LabelField($"The default binding for window shortcuts is {shortcutKey}");
    }
}
```

When you use these tags, be careful not to leave outdated tags registered. Doing so can result in multiple available shortcuts, which opens a shortcut conflict window. Use UnregisterTag to unregister tags.

If you use an enum overload, Unity automatically clears tags from previous values of that enum.

Unity also provides built-in support for certain enums. For example, UnityEditor.Tool and UnityEditor.ViewTool.

Additional resources: UnregisterTag.
