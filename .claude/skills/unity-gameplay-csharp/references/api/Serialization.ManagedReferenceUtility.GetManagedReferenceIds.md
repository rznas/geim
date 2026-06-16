<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Serialization.ManagedReferenceUtility.GetManagedReferenceIds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hostObj | The host object that supports SerializeReference. For example, MonoBehaviour or ScriptableObject. |

### Returns

**long[]** Returns a list of the most recent serialization of the host object, including the most recent call to ManagedReferenceUtility.SetManagedReferenceIdForObject.

 An entry in the list is returned as ManagedReferenceUtility.RefIdNull if its SerialReference field is set to null.

 The returned list excludes objects with missing types since they cannot be deserialized. To retrieve objects with missing types, use SerializationUtility.GetManagedReferencesWithMissingTypes.

### Description

Retrieves a list of managed reference Ids assigned to objects that are referenced using SerializeReference on a specified host.

```csharp
using System;
using System.Collections.Generic;
using System.Text;
using UnityEditor;
using UnityEngine;
using UnityEngine.Serialization;public class GetManagedReferenceIdsExample : ScriptableObject
{
    [Serializable]
    public class Item
    {
        public char m_data;
    }    [SerializeReference]
    public Item m_singleItem;    [SerializeReference]
    public List<Item> m_items;    [SerializeReference]
    public List<Item> m_secondaryList;    void PopulateState()
    {
        m_singleItem = new Item() {m_data = 'a'};        m_items = new List<Item>()
        {
            new Item() {m_data = 'b'},
            new Item() {m_data = 'c'},
            new Item() {m_data = 'd'}
        };        m_secondaryList = new List<Item>()
        {
            new Item() {m_data = 'e'},
            new Item() {m_data = 'f'}
        };        // Add some duplicates entries that point to the same instances
        m_items.Add(m_items[0]);
        m_items.Add(m_items[2]);
        m_items.Add(m_secondaryList[0]);
        m_secondaryList.Add(m_items[1]);
    }    void Serialize()
    {
        // Force a serialization of the ScriptableObject by creating a temporary SerializedObject (similar to viewing the object in the inspector)
        // This ensures that all the managed references get registered and assigned Ids based on the current state.
        // Serialization also happens when a Scene is saved, Undo.RecordObjects() etc
        var serializedObject = new SerializedObject(this);
    }    void FindAllItems()
    {
        // Get the list of Ids (accurate to state the last time this ScriptableObject was serialized).
        // This is a quick way to access all the instances across all fields, without duplicates.
        var allReferencedObjects = ManagedReferenceUtility.GetManagedReferenceIds(this);        var objectListing = new StringBuilder();
        foreach (var id in allReferencedObjects)
        {
            if (id == SerializationUtility.RefIdNull)
                continue;            // Lookup up the object associated with the Id.  If the ScriptableObject contained other types of referenced
            // objects that are not related to "Item" class then null would be expected.
            var retrievedItem = ManagedReferenceUtility.GetManagedReference(this, id) as Item;
            if (retrievedItem == null)
                continue;            objectListing.Append("Found Item object with data " + retrievedItem.m_data + " at Id " + id).AppendLine();
        }
        /*
        Output will be something like this, with the Ids different each time:        Found Item object with data a at id 1757967572722253824
        Found Item object with data b at id 1757967572722253825
        Found Item object with data c at id 1757967572722253826
        Found Item object with data d at id 1757967572722253827
        Found Item object with data e at id 1757967572722253828
        Found Item object with data f at id 1757967572722253829
        */
        Debug.LogFormat(objectListing.ToString());
    }    [MenuItem("Example/ManagedReferenceUtility GetManagedReferenceIds Example")]
    static void TestMethod()
    {
        var scriptableObject = ScriptableObject.CreateInstance<GetManagedReferenceIdsExample>();
        scriptableObject.PopulateState();
        scriptableObject.Serialize();
        scriptableObject.FindAllItems();
    }
}
```
