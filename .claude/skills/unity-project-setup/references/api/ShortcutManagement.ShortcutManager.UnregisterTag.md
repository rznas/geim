<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ShortcutManager.UnregisterTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | Context string identifier. |

### Description

Removes a tag from the custom context list.

```csharp
using UnityEditor;
using UnityEditor.ShortcutManagement;
using UnityEngine;public class MyWindow : EditorWindow
{
    const KeyCode shortcutKey = KeyCode.A;    bool customTag;
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
    }    [Shortcut("Tags/Custom Tag", typeof(MyWindow), nameof(customTag), shortcutKey)]
    static void CustomTagShortcut()
    {
        Debug.Log($"Shortcut for MyWindow with {nameof(customTag)} tag context executed");
    }    [MenuItem("Window/My Window")]
    static void OpenWindow() => EditorWindow.GetWindow(typeof(MyWindow)).Show();    void OnGUI()
    {
        CustomTag = EditorGUILayout.Toggle("Custom Tag", CustomTag);        EditorGUILayout.Space();
        EditorGUILayout.LabelField($"The default binding for window shortcuts is {shortcutKey}");
    }
}
```

Additional resources: RegisterTag.
