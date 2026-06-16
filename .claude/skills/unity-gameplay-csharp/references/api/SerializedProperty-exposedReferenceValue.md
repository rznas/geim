<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-exposedReferenceValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A reference to another Object in the Scene. This reference is resolved in the context of the SerializedObject containing the SerializedProperty.

Additional resources: ExposedReference<T0>, SerializedPropertyType.ExposedReference, SerializedObject.context.

```csharp
using UnityEngine;
using UnityEditor;public class SerializedPropertyTest : MonoBehaviour
{
    public Object mComponent1;
    public Object mComponent2;    void Start()
    {
        var timeline = Resources.Load("myTimeline");
        var so1 = new SerializedObject(timeline, mComponent1);
        var so2 = new SerializedObject(timeline, mComponent2);        var theCamera = so1.FindProperty("sceneCamera").exposedReferenceValue;
        var anotherCamera = so2.FindProperty("sceneCamera").exposedReferenceValue;
    }
}
```

In this example, the same asset is loaded into two different contexts, `mComponent1` and `mComponent2`. The same object (called “sceneCamera”) in each context resolves to a different reference to a different Camera Object.
