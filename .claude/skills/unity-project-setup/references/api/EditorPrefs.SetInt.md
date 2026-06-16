<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorPrefs.SetInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | Name of key to write integer to. |
| value | Value of the integer to write into the storage. |

### Description

Sets the value of the preference identified by key as an integer.

Sets the value of the preference identified by `key` as an integer.

Additional resources: GetInt.

```csharp
// A small editor window that allows an integer value to be
// read and written to the EditorPrefs online storage.
//
// SetIntExample is the name of the int to read/write.using UnityEngine;
using UnityEditor;public class ExampleClass : EditorWindow
{
    int intValue = 42;    [MenuItem("Examples/Prefs.SetInt Example")]
    static void Init()
    {
        ExampleClass window = (ExampleClass)EditorWindow.GetWindow(typeof(ExampleClass));
        window.Show();
    }    void OnGUI()
    {
        int temp;
        temp = EditorPrefs.GetInt("SetIntExample", -1);
        EditorGUILayout.LabelField("Current stored value: " + temp.ToString());
        intValue = EditorGUILayout.IntField("Value to write to Prefs: ", intValue);
        if (GUILayout.Button("Save value: " + intValue.ToString()))
        {
            EditorPrefs.SetInt("SetIntExample", intValue);
            Debug.Log("SetInt: " + intValue);
        }
    }
}
```
