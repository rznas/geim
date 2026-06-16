<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.FadeGroupScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Begins a group that can be be hidden/shown and the transition will be animated.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AnimatedValues;
using UnityEngine.Events;public class MyWindow : EditorWindow
{
    AnimBool m_ShowExtraFields;
    string m_String;
    Color m_Color = Color.white;
    int m_Number = 0;    [MenuItem("Window/My Window")]
    static void Init()
    {
        MyWindow window = (MyWindow)EditorWindow.GetWindow(typeof(MyWindow));
        window.Show();
    }    void OnEnable()
    {
        m_ShowExtraFields = new AnimBool(true);
        m_ShowExtraFields.valueChanged.AddListener(new UnityAction(base.Repaint));
    }    void OnGUI()
    {
        m_ShowExtraFields.target = EditorGUILayout.ToggleLeft("Show extra fields", m_ShowExtraFields.target);        //Extra block that can be toggled on and off.
        using (var group = new EditorGUILayout.FadeGroupScope(m_ShowExtraFields.faded))
        {
            if (group.visible)
            {
                EditorGUI.indentLevel++;
                EditorGUILayout.PrefixLabel("Color");
                m_Color = EditorGUILayout.ColorField(m_Color);
                EditorGUILayout.PrefixLabel("Text");
                m_String = EditorGUILayout.TextField(m_String);
                EditorGUILayout.PrefixLabel("Number");
                m_Number = EditorGUILayout.IntSlider(m_Number, 0, 10);
                EditorGUI.indentLevel--;
            }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| visible | Whether the group is visible. |

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUILayout.FadeGroupScope | Create a new FadeGroupScope and begin the corresponding group. |
