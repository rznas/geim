<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.Vector4Field.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Label to display above the field. |
| value | The value to edit. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**Vector4** The value entered by the user.

### Description

Make an X, Y, Z & W field for entering a Vector4.

*Modify X,Y,Z and W values directly of a GameObject.*

```csharp
using UnityEngine;
using UnityEditor;public class ModifyQuaternionDirectly : UnityEditor.EditorWindow
{
    Quaternion quat;
    public Vector4 value;    [MenuItem("Examples/Modify internal Quaternion")]
    static void Init()
    {
        ModifyQuaternionDirectly window = (ModifyQuaternionDirectly)EditorWindow.GetWindow(typeof(ModifyQuaternionDirectly), true, "My Empty Window");
        window.Show();
    }    void OnGUI()
    {
        value = EditorGUILayout.Vector4Field("Components:", value);
        if (GUILayout.Button("Capture Rotation"))
            value = QuaternionToVector4(Selection.activeTransform.rotation);        if (GUILayout.Button("Close"))
            this.Close();
    }    static Vector4 QuaternionToVector4(Quaternion rot)
    {
        return new Vector4(rot.x, rot.y, rot.z, rot.w);
    }
}
```
