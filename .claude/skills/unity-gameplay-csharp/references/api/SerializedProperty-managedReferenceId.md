<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-managedReferenceId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Id associated with a managed reference.

Available when propertyType is SerializedPropertyType.ManagedReference. If the reference is null then the Id is SerializeUtility.RefIdNull.

 Additional resources: SerializeReference, managedReferenceValue, ManagedReferenceUtility.GetManagedReferenceIdForObject.

```csharp
using System;
using UnityEditor;
using UnityEngine;public class SerializedPropertyManagedReferenceIdExample : ScriptableObject
{
    [Serializable]
    public class Item
    {
        public int m_data = 1;
    }    [SerializeReference]
    public Item m_Item;    [SerializeReference]
    public Item m_Item2;    [MenuItem("Example/SerializedProperty ManagedReferenceId Example")]
    static void TestMethod1()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializedPropertyManagedReferenceIdExample>();
        scriptableObject.m_Item = new Item();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var itemProperty = serializedObject.FindProperty("m_Item");
            var item2Property = serializedObject.FindProperty("m_Item2");            // Set m_Item2 to point to the same object as m_Item
            // Note: managedReferenceValue could also be used here, for the same result
            item2Property.managedReferenceId = itemProperty.managedReferenceId;            serializedObject.ApplyModifiedProperties();
        }        // Check the results back on the live object        //Will print "Value of m_Item2.m_data: 1"
        Debug.Log("Value of m_Item2.m_data: " + scriptableObject.m_Item2.m_data);        // Prove that both fields point to the same object
        scriptableObject.m_Item.m_data = 2;        //Will print "Value of m_Item2.m_data: 2"
        Debug.Log("Value of m_Item2.m_data: " + scriptableObject.m_Item2.m_data);
    }
}
```
