<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ShortcutManager.UnregisterContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The custom context to remove from the shortcut context list. |

### Description

Removes a IShortcutContext from the shortcut context list.

Additional resources: ShortcutManager.RegisterContext.

```csharp
using UnityEditor;
using UnityEditor.ShortcutManagement;
using UnityEngine;

public class ShortcutContextSample : EditorWindow
{
    public class CustomShortcutContext : IShortcutContext
    {
        public bool active
        {
            get
            {
                if (!(focusedWindow is ShortcutContextSample view))
                    return false;

                return view.toggleValue;
            }
        }
    }

    [Shortcut("Custom Shortcut Context/Sample Shortcut", typeof(CustomShortcutContext), KeyCode.Mouse1)]
    static void SampleShortcut(ShortcutArguments args)
    {
        Debug.Log("The sample shortcut was called.");
    }

    bool m_ToggleValue = false;
    public bool toggleValue => m_ToggleValue;

    CustomShortcutContext m_ShortcutContext = new CustomShortcutContext();

    [MenuItem("Window/Custom Editor Window")]
    public static void ShowWindow()
    {
        ShortcutContextSample wnd = GetWindow<ShortcutContextSample>();
        wnd.titleContent = new GUIContent("Custom Editor Window");
    }

    void OnGUI()
    {
        var content = new GUIContent("Toggle", "Toggle to activate the shortcut context.");
        m_ToggleValue = EditorGUILayout.Toggle(content, m_ToggleValue);
    }

    private void OnEnable()
    {
        ShortcutManager.RegisterContext(m_ShortcutContext);
    }

    private void OnDisable()
    {
        ShortcutManager.UnregisterContext(m_ShortcutContext);
    }
}
```
