<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-contentHash.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides the hash value for the property. (Read Only)

You can use this to track if there has been any changes to the value at the property path (Additional resources: SerializedProperty.propertyPath). 
 
 Please note that: 
 -If the size of the property's content is smaller than or equal to 32 bits, then the content will be returned instead of a hash. 
 -If the property path leads to an array or complex type, the hash will correspond to the entire content. 
 -If the property is a field with [SerializeReference] attribute, or a compound type that contains such a field, then the content hashing doesn't include the content of the referenced object, instead it only hashes the reference id (Additional resources: SerializedProperty.managedReferenceId).

```csharp
using UnityEngine;
using UnityEditor;public class MyObject : ScriptableObject
{
    public string myString = "answer to life the universe and everything";
    public string[] myStringArray = { "answer", "to", "life", "the", "universe", "and", "everything" };
    public int[] myIntArray = { 42, 442, 422, 4242 };    [MenuItem("Example/Output contentHash from SerializedProperty")]
    static void OutputContentHashFromSerializedProperty()
    {
        var scriptableObject = ScriptableObject.CreateInstance<MyObject>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            SerializedProperty serializedPropertyMyString = serializedObject.FindProperty("myString");
            SerializedProperty serializedPropertyMyStringArray = serializedObject.FindProperty("myStringArray");
            SerializedProperty serializedPropertyMyIntArray = serializedObject.FindProperty("myIntArray");            uint myStringHash = serializedPropertyMyString.contentHash;
            uint myStringArrayHash = serializedPropertyMyStringArray.contentHash;
            uint MyIntArrayHash = serializedPropertyMyIntArray.contentHash;            serializedPropertyMyString.stringValue = "new string";
            serializedPropertyMyIntArray.DeleteArrayElementAtIndex(1);            serializedObject.ApplyModifiedPropertiesWithoutUndo();            Debug.Log(string.Format("myString: before={0}, after={1}, changed={2}", myStringHash, serializedPropertyMyString.contentHash, myStringHash == serializedPropertyMyString.contentHash ? "no" : "yes"));
            Debug.Log(string.Format("myStringArrayHash: before={0}, after={1}, changed={2}", myStringArrayHash, serializedPropertyMyStringArray.contentHash, myStringArrayHash == serializedPropertyMyStringArray.contentHash ? "no" : "yes"));
            Debug.Log(string.Format("MyIntArrayHash: before={0}, after={1}, changed={2}", MyIntArrayHash, serializedPropertyMyIntArray.contentHash, MyIntArrayHash == serializedPropertyMyIntArray.contentHash ? "no" : "yes"));
        }
    }
}
```
