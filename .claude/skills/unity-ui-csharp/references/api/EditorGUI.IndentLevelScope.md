<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.IndentLevelScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scope for managing the indent level of the field labels.

See EditorGUI.indentLevel.

```csharp
using UnityEditor;
using UnityEngine;class EditorGUIIndent : EditorWindow
{
    [MenuItem("Examples/Indent usage")]
    static void Init()
    {
        var window = GetWindow<EditorGUIIndent>();
        window.position = new Rect(0, 0, 100, 100);
        window.Show();
    }    void OnGUI()
    {
        var obj = Selection.activeTransform;
        EditorGUILayout.LabelField("Name:", obj ? obj.name : "Select an Object");
        if (obj)
        {
            // Indent block
            using (new EditorGUI.IndentLevelScope())
            {
                EditorGUILayout.LabelField("Position:", obj.position.ToString());
                EditorGUILayout.LabelField("Rotation:", obj.rotation.eulerAngles.ToString());
                // Indent inner block even more
                using (new EditorGUI.IndentLevelScope())
                {
                    EditorGUILayout.LabelField("X:", obj.rotation.x.ToString());
                    EditorGUILayout.LabelField("Y:", obj.rotation.y.ToString());
                    EditorGUILayout.LabelField("Z:", obj.rotation.z.ToString());
                    EditorGUILayout.LabelField("W:", obj.rotation.w.ToString());
                }
                EditorGUILayout.LabelField("Scale:", obj.localScale.ToString());
            }
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUI.IndentLevelScope | Creates an IndentLevelScope and increases the EditorGUI indent level. |
