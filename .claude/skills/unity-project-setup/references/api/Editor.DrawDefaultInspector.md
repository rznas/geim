<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.DrawDefaultInspector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if any GUI controls in the default Inspector changed the value of the input data, otherwise returns false.

### Description

Draws the built-in Inspector.

Call this method, within the OnInspectorGUI method, to automatically draw the Inspector. This is useful if you want to add a few buttons without having to redo the entire Inspector. Additional resources: OnInspectorGUI.

```csharp
// This example shows a custom inspector for an
// object "MyPlayer", which has a variable speed.
using UnityEngine;
using UnityEditor;class MyPlayer : MonoBehaviour
{
    // Hide this field so that it is not shown twice when drawing the default Inspector.
    [HideInInspector]
    public float speed;    public int gear;
}[CustomEditor(typeof(MyPlayer))]
public class Example : Editor
{
    public override void OnInspectorGUI()
    {
        MyPlayer targetPlayer = (MyPlayer)target;
        EditorGUILayout.LabelField ("Some help", "Some other text");        targetPlayer.speed = EditorGUILayout.Slider ("Speed", targetPlayer.speed, 0, 100);        // Show default inspector property editor
        if(DrawDefaultInspector())
            Debug.Log("Gear was changed!");
    }
}
```
