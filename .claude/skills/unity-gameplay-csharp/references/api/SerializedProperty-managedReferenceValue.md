<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-managedReferenceValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The object assigned to a field with SerializeReference attribute.

For use when propertyType is SerializedPropertyType.ManagedReference. 
 


 The value object must be a type that is compatible with the base type of the managed reference field (that is, the managed reference field that the serialized property is referencing).

 Additional resources: SerializeReference, propertyType, SerializedPropertyType.ManagedReference.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using Object = UnityEngine.Object;public class SerializedPropertyManagedReferenceValueExample : ScriptableObject
{
    [Serializable]
    public class Item
    {
        public int m_data = 1;        public int DoCalculation()
        {
            // Could be querying some external data, or other calculation that cannot be
            // made entirely based on the local object state
            m_data++;
            return m_data * 2;
        }
    }    [SerializeReference]
    public Item m_Item;    [MenuItem("Example/SerializedProperty ManagedReferenceValue Example1")]
    static void TestMethod1()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializedPropertyManagedReferenceValueExample>();
        var serializedObject = new SerializedObject(scriptableObject);        // Allocate and assign an object to the m_Item field via managedReferenceValue
        var referenceProperty = serializedObject.FindProperty("m_Item");
        referenceProperty.managedReferenceValue = new Item();        // Change a value of the object's field
        referenceProperty.FindPropertyRelative("m_data").intValue = 99;        // Apply the change back to the "live" object
        serializedObject.ApplyModifiedProperties();        // Will print "Value of m_data: 99"
        Debug.Log("Value of m_data: " + scriptableObject.m_Item.m_data);
    }    [MenuItem("Example/SerializedProperty ManagedReferenceValue Example2")]
    static void TestMethod2()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializedPropertyManagedReferenceValueExample>();
        scriptableObject.m_Item = new Item();        var serializedObject = new SerializedObject(scriptableObject);
        var referenceProperty = serializedObject.FindProperty("m_Item");        // The "live" referenced object can be accessed so we can call a method on it
        (referenceProperty.managedReferenceValue as Item).DoCalculation();        // The serialized state inside the SerializedObject is now out of data with the change
        // of m_data on the live object, but can be brought back in sync by calling Update()
        var serializedDataValue = serializedObject.FindProperty("m_Item.m_data").intValue;
        serializedObject.Update();
        var updatedSerializedDataValue = serializedObject.FindProperty("m_Item.m_data").intValue;        // Will print: "Value of m_data before update: 1 and after update: 2"
        Debug.Log("Value of m_data before update: " + serializedDataValue + " and after update: " + updatedSerializedDataValue);
    }
}
```
