<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-entityIdValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value of an EntityId property.

Contains a valid value when propertyType is SerializedPropertyType.EntityId.

 Additional resources: intValue, uintValue, longValue, propertyType, SerializedPropertyType.Integer.

```csharp
using System;
using UnityEditor;
using UnityEngine;public class EntityIdTypeExample : ScriptableObject
{
    public EntityId m_EntityId = EntityId.None;    [MenuItem("Example/SerializedProperty EntityId Access APIs")]
    static void TestMethod()
    {
        // This example demonstrates how to access an EntityId via SerializedProperty        EntityIdTypeExample obj = ScriptableObject.CreateInstance<EntityIdTypeExample>();
        SerializedObject sObj = new SerializedObject(obj);        Debug.Log($"m_EntityId  : {sObj.FindProperty("m_EntityId").entityIdValue}");
    }
}
```
