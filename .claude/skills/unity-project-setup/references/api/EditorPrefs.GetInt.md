<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorPrefs.GetInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | Name of key to read integer from. |
| defaultValue | Integer value to return if the key is not in the storage. |

### Returns

**int** The value stored in the preference file.

### Description

Returns the value corresponding to `key` in the preference file if it exists.

If the value doesn't already exist in the preference file the function will return `defaultValue`.

Additional resources: SetInt.

```csharp
// A small editor window that allows an integer value to be
// read and written to the EditorPrefs online storage.
//
// SetIntExample is the name of the int to read/write.using UnityEngine;
using UnityEditor;public class ExampleClass : EditorWindow
{
    int intValue = 42;    [MenuItem("Examples/Prefs.GetInt Example")]
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
