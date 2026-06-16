<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SerializedProperty and SerializedObject are classes for editing properties on objects in a completely generic way that automatically handles undo, multi-object editing and Prefab overrides.

SerializedProperty is primarily used to read or change the value of a property. It can also iterate through the properties of an object using Next. Additional resources: SerializedObject class, Editor class.

```csharp
using UnityEngine;
using UnityEditor;public class MyObject : ScriptableObject
{
    public int myInt = 42;
}public class SerializedPropertyTest : MonoBehaviour
{
    void Start()
    {
        MyObject obj = ScriptableObject.CreateInstance<MyObject>();
        SerializedObject serializedObject = new UnityEditor.SerializedObject(obj);        SerializedProperty serializedPropertyMyInt = serializedObject.FindProperty("myInt");        Debug.Log("myInt " + serializedPropertyMyInt.intValue);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| animationCurveValue | Value of a animation curve property. |
| arrayElementType | Type name of the element in an array property. (Read Only) |
| arraySize | The number of elements in the array. |
| boolValue | Value of a boolean property. |
| boundsIntValue | Value of bounds with integer values property. |
| boundsValue | Value of bounds property. |
| boxedValue | Value of the SerializedProperty, boxed as a System.Object. |
| colorValue | Value of a color property. |
| contentHash | Provides the hash value for the property. (Read Only) |
| depth | Nesting depth of the property. (Read Only) |
| displayName | Nice display name of the property. (Read Only) |
| doubleValue | Value of a float property as a double. |
| editable | Is this property editable? (Read Only) |
| entityIdValue | Value of an EntityId property. |
| enumDisplayNames | Display-friendly names of enumeration of an enum property. |
| enumNames | Names of enumeration of an enum property. |
| enumValueFlag | Int32 representation of an enum property with Mixed Values. |
| enumValueIndex | Enum index of an enum property. |
| exposedReferenceValue | A reference to another Object in the Scene. This reference is resolved in the context of the SerializedObject containing the SerializedProperty. |
| fixedBufferSize | The number of elements in the fixed buffer. (Read Only) |
| floatValue | Value of a float property. |
| gradientValue | Value of a gradient property. |
| guidValue | The value of a GUID property. |
| hasChildren | Does it have child properties? (Read Only) |
| hash128Value | The value of a Hash128 property. |
| hasMultipleDifferentValues | Does this property represent multiple different values due to multi-object editing? (Read Only) |
| hasVisibleChildren | Does it have visible child properties? (Read Only) |
| intValue | Value of an integer property. |
| isArray | Is this property an array? (Read Only) |
| isDefaultOverride | Allows you to check whether his property is a default override.Certain properties on Prefab instances are default overrides.See PrefabUtility.IsDefaultOverride for more information. |
| isExpanded | Is this property expanded in the inspector? |
| isFixedBuffer | Is this property a fixed buffer? (Read Only) |
| isInstantiatedPrefab | Is property part of a Prefab instance? (Read Only) |
| longValue | Value of an integer property as a long. |
| managedReferenceFieldTypename | String corresponding to the value of the managed reference field full type string. |
| managedReferenceFullTypename | String corresponding to the value of the managed reference object (dynamic) full type string. |
| managedReferenceId | Id associated with a managed reference. |
| managedReferenceValue | The object assigned to a field with SerializeReference attribute. |
| minArraySize | The smallest number of elements in the array across all target objects. (Read Only) |
| name | Name of the property. (Read Only) |
| numericType | Return the precise type for Integer and Floating point properties. (Read Only) |
| objectReferenceEntityIdValue |  |
| objectReferenceValue | Value of an object reference property. |
| prefabOverride | Allows you to check whether a property's value is overriden (i.e. different to the Prefab it belongs to). |
| propertyPath | Full path of the property. (Read Only) |
| propertyType | Type of this property (Read Only). |
| quaternionValue | Value of a quaternion property. |
| rectIntValue | Value of a rectangle with integer values property. |
| rectValue | Value of a rectangle property. |
| serializedObject | SerializedObject this property belongs to (Read Only). |
| stringValue | Value of a string property. |
| tooltip | Tooltip of the property. (Read Only) |
| type | Type name of the property. (Read Only) |
| uintValue | Value of an integer property as an unsigned int. |
| ulongValue | Value of an integer property as an unsigned long. |
| vector2IntValue | Value of a 2D integer vector property. |
| vector2Value | Value of a 2D vector property. |
| vector3IntValue | Value of a 3D integer vector property. |
| vector3Value | Value of a 3D vector property. |
| vector4Value | Value of a 4D vector property. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearArray | Remove all elements from the array. |
| Copy | Returns a copy of the SerializedProperty iterator in its current state. |
| CountInProperty | Count visible children of this property, including this property itself. |
| CountRemaining | Count remaining visible properties. |
| DeleteArrayElementAtIndex | Delete the element at the specified index in the array. |
| DeleteCommand | Deletes the array element referenced by the SerializedProperty. |
| DuplicateCommand | Duplicates the array element referenced by the SerializedProperty. |
| FindPropertyRelative | Retrieves the SerializedProperty at a relative path to the current property. |
| GetArrayElementAtIndex | Returns the element at the specified index in the array. |
| GetEndProperty | Retrieves the SerializedProperty that defines the end range of this property. |
| GetEnumerator | Retrieves an iterator for enumerating over the visible child properties of the current property. If the property is an array it will enumerate over the array elements. |
| GetFixedBufferElementAtIndex | Returns the element at the specified index in the fixed buffer. |
| InsertArrayElementAtIndex | Insert an new element at the specified index in the array. |
| MoveArrayElement | Move an array element from srcIndex to dstIndex. |
| Next | Move to next property. |
| NextVisible | Move to next visible property. |
| Reset | Move to first property of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| DataEquals | Compares the data for two SerializedProperties. This method ignores paths and SerializedObjects. |
| EqualContents | See if contained serialized properties are equal. |
