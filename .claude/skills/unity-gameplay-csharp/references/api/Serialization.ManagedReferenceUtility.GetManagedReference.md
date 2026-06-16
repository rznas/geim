<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Serialization.ManagedReferenceUtility.GetManagedReference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hostObj | The host object that supports SerializeReference. For example, MonoBehaviour or ScriptableObject. |
| refId | The managed reference Id. |

### Returns

**object** Returns the C# object referenced on the specified host and identified with provided Id. Returns null if no reference object is found.

### Description

Retrieves an object based on its managed reference Id.

Use this method to efficiently retrieve a specific referenced object when, for example, its exact location within an array or graph is unknown.

 Additional resources: GetManagedReferenceIdForObject, SerializeReference.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.Serialization;public class GetManagedReferenceExample : ScriptableObject
{
    [Serializable]
    public class Item
    {
        public char m_data;
    }    [SerializeReference]
    public List<Item> m_items = new List<Item>();    private void InsertNewItem(long id, char data)
    {
        var newItem = new Item() {m_data = data};
        if (ManagedReferenceUtility.SetManagedReferenceIdForObject(this, newItem, id))
            m_items.Add(newItem);
    }    [MenuItem("Example/ManagedReferenceUtility GetManagedReference Example")]
    static void TestMethod()
    {
        var scriptableObject = ScriptableObject.CreateInstance<GetManagedReferenceExample>();        scriptableObject.InsertNewItem(1000, 'a');
        scriptableObject.InsertNewItem(1001, 'b');
        scriptableObject.InsertNewItem(1002, 'c');
        scriptableObject.InsertNewItem(1003, 'd');        // Because 1002 is registered in an earlier call this will log an error and not change the state
        scriptableObject.InsertNewItem(1002, 'e');        // The array may get reordered over time.  One way to find an specific item again would
        // be to look it up based on a known managed reference id
        var item = ManagedReferenceUtility.GetManagedReference(scriptableObject, 1002) as Item;
        Debug.LogFormat("Data on object 1002 is {0}", item.m_data);        var willBeNull = ManagedReferenceUtility.GetManagedReference(scriptableObject, 9999) as Item;
    }
}
```
