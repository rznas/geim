<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-boxedValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value of the SerializedProperty, boxed as a System.Object.

This property represents the value of the SerializedProperty as a System.Object which wraps the underlying type.

This property makes it easier to write code that doesn't need the precise type of a SerializedProperty to get or set its value. For example this property can access any numeric type, strings, built-in types like Vector3 and ManagedReference objects with the same syntax. This property can remove the need for switch-case statements or slow alternatives based on .NET Reflection to determine a SerializedProperty's type.

Wrapping a value type as a heap-based System.Object requires a transformation called "boxing", which adds a performance overhead. In cases where performance is important and you know the type ahead of time, use the appropriate type-specific accessors like intValue, stringValue, or managedReferenceValue instead of this property. This removes the performance overhead that this property requires for boxing.

When your application sets this property, Unity attempts to unbox and convert the provided System.Object into the property type of the SerializedProperty. If this fails, Unity throws an InvalidCastException error.

boxedValue has some limitations for properties of type SerializedPropertyType.Generic:

- Structs and objects serialized by-value can be accessed, unless they contain fixed buffers.
- The property cannot be an array or list. But accessing a property that is an element of an array or list is supported.
- Unity built-in Struct types that are categorized in the Generic type cannot be accessed. But built-in types like Vector3 that have a their own entry in the SerializedPropertyType enum do work.

Additional resources: propertyType.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections.Generic;// To try this example save it as a script called BoxedValueStructExample.cs,
// then create an asset file from the Project Window context menu, then inspect it[System.Serializable]
public struct Element
{
    public int m_IntData;
    public Color m_ColorData;
    public Rect m_Rect;    public void Change()
    {
        ++m_IntData;
        m_ColorData = new Color(Random.Range(0f, 1f), Random.Range(0f, 1f), Random.Range(0f, 1f), 1);
        m_Rect = new Rect(Random.Range(0, 100), Random.Range(0, 100),
            Random.Range(0, 100), Random.Range(0, 100));
    }
};[CreateAssetMenu]
public class BoxedValueStructExample : ScriptableObject
{
    public Element m_NewItem = new Element();
    public List<Element> m_ItemList = new List<Element>();
}[CustomEditor(typeof(BoxedValueStructExample)), CanEditMultipleObjects]
public class BoxedValueStructExampleEditor : Editor
{
    SerializedProperty m_NewItemProp;
    SerializedProperty m_ListProp;    public void OnEnable()
    {
        m_NewItemProp = serializedObject.FindProperty("m_NewItem");
        m_ListProp = serializedObject.FindProperty("m_ItemList");
    }    public override void OnInspectorGUI()
    {
        EditorGUILayout.PropertyField(m_NewItemProp);        GUILayout.Space(30);        if (GUILayout.Button("Add New Item to List"))
        {
            // Read full Element struct
            Element newItem = (Element)m_NewItemProp.boxedValue;            // Append a new item to list and set it to the same values as m_NewItem
            m_ListProp.arraySize++;
            m_ListProp.GetArrayElementAtIndex(m_ListProp.arraySize - 1).boxedValue = newItem;            // Update NewItem to some new values
            newItem.Change();
            m_NewItemProp.boxedValue = newItem;            // Because boxedValue is used, the code above does not need to deal with fields inside the struct,
            // and it would not need to change as fields are added and removed to Element
        }        GUILayout.Space(30);
        EditorGUILayout.PropertyField(m_ListProp);        serializedObject.ApplyModifiedProperties();
    }
}
```

```csharp
using System.Text;
using UnityEditor;
using UnityEngine;public class BoxedValueExample
{
    [MenuItem("Example/Log Property Values")]
    static void MenuCallback()
    {
        var log = new StringBuilder();
        var obj = Selection.activeGameObject;
        {
            log.AppendLine($"Contents of {obj.name}");
            LogProperties(obj, log);
        }        foreach (var comp in obj.GetComponents<Component>())
        {
            log.AppendLine();
            log.AppendLine($"Component {comp.GetType().ToString()}");
            LogProperties(comp, log);
        }        Debug.Log(log.ToString());
    }    static void LogProperties(UnityEngine.Object obj, StringBuilder log)
    {
        using (var so = new SerializedObject(obj))
        {
            var iterator = so.GetIterator();
            iterator.Next(true); // Move past root property            // Printing top level propertise only
            do
            {
                log.Append(iterator.name);
                log.Append(" type: ");
                log.Append(iterator.propertyType);
                LogValue(iterator, log);
                log.AppendLine();
            }
            while (iterator.Next(false));
        }
    }    static void LogValue(SerializedProperty serializedProperty, StringBuilder log)
    {
        // Don't attempt to print these types as strings
        if (serializedProperty.propertyType == SerializedPropertyType.Generic ||
            serializedProperty.propertyType == SerializedPropertyType.ObjectReference ||
            serializedProperty.propertyType == SerializedPropertyType.ManagedReference)
        {
            return;
        }        log.Append($" value: {serializedProperty.boxedValue}");
    }    [MenuItem("Example/Log Property Values", true)]
    static bool MenuValidation()
    {
        return Selection.activeGameObject != null;
    }
}
```

This is a recursive version of the example, with more information and formatting, but still relying on boxedValue.

```csharp
using System.Collections.Generic;
using System.Text;
using UnityEditor;
using UnityEngine;public class RecursivePropertyLogExample
{
    [MenuItem("Example/Log Property Values (Recursive)")]
    static void MenuCallback()
    {
        var obj = Selection.activeGameObject;
        {
            var log = new StringBuilder();
            log.AppendLine($"Contents of {obj.name}");
            LogProperties(obj, log);            // Log separately to avoid reaching the individual message size limit
            Debug.Log(log.ToString());
        }        foreach (var comp in obj.GetComponents<Component>())
        {
            var log = new StringBuilder();
            log.AppendLine($"Component {comp.GetType().ToString()} of {obj.name}");
            LogProperties(comp, log);
            Debug.Log(log.ToString());
        }
    }    static void LogProperties(UnityEngine.Object obj, StringBuilder log)
    {
        using (var so = new SerializedObject(obj))
        {
            var iterator = so.GetIterator();
            iterator.Next(true); // Move past root property            // Prevent endless loops if SerializeReference instances form cyclical graphs
            var visitedManagedReferences = new HashSet<long>();            bool visitChild;
            do
            {
                visitChild = false;                if (iterator.propertyType == SerializedPropertyType.Generic)
                {
                    visitChild = true;
                }
                else if (iterator.propertyType == SerializedPropertyType.ManagedReference)
                {
                    long refId = iterator.managedReferenceId;
                    if (visitedManagedReferences.Add(refId))
                        visitChild = true; // First time seeing node, so visit it
                }                for (int i = 0; i < iterator.depth; i++)
                    log.Append("  ");                if (iterator.name == "data")
                {
                    // If this is an array element then it is more informative to use the name exposed by
                    // propertyPath, e.g. "data[7]" instead of "data".
                    var stringPos = iterator.propertyPath.LastIndexOf('.');
                    if (stringPos > 0)
                        log.Append(iterator.propertyPath.Substring(stringPos + 1));
                    else
                        log.Append(iterator.name);
                }
                else
                    log.Append(iterator.name);                LogType(iterator, log);
                LogValue(iterator, log);
                log.AppendLine();                // Skip past the "Array" child inside each property of type array
                if (iterator.isArray)
                    iterator.Next(true);
            }
            while (iterator.Next(visitChild));
        }
    }    static void LogType(SerializedProperty serializedProperty, StringBuilder log)
    {
        log.Append(" type: ");
        if (serializedProperty.propertyType == SerializedPropertyType.Integer ||
            serializedProperty.propertyType == SerializedPropertyType.Float)
            log.Append(serializedProperty.numericType);
        else if (serializedProperty.propertyType == SerializedPropertyType.Generic && serializedProperty.isArray)
            log.Append("Array");
        else
            log.Append(serializedProperty.propertyType);
    }    static void LogValue(SerializedProperty serializedProperty, StringBuilder log)
    {
        // use boxedValue to get and print the value as a string
        // There are a few special cases to improve the quality of the output        if (serializedProperty.propertyType == SerializedPropertyType.Generic ||
            serializedProperty.propertyType == SerializedPropertyType.AnimationCurve ||
            serializedProperty.propertyType == SerializedPropertyType.Gradient ||
            serializedProperty.propertyType == SerializedPropertyType.LayerMask)
        {
            return;
        }        if (serializedProperty.propertyType == SerializedPropertyType.ObjectReference)
        {
            if (ReferenceEquals(serializedProperty.objectReferenceValue, null))
                log.Append($" value: null");
            else
                log.Append($" instanceID: {serializedProperty.objectReferenceValue.GetInstanceID()}");
        }
        else if (serializedProperty.propertyType == SerializedPropertyType.ManagedReference)
        {
            if (ReferenceEquals(serializedProperty.managedReferenceValue, null))
                log.Append($" value: null");
            else
                log.Append($" refId: {serializedProperty.managedReferenceId} ({serializedProperty.managedReferenceFullTypename})");
        }
        else
        {
            log.Append($" value: {serializedProperty.boxedValue.ToString()}");
        }
    }    [MenuItem("Example/Log Property Values (Recursive)", true)]
    static bool ValidateMenuItem()
    {
        return Selection.activeGameObject != null;
    }
}
```
