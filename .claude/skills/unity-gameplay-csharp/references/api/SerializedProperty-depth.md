<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-depth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Nesting depth of the property. (Read Only)

Additional resources: propertyPath.

```csharp
using System;
using System.Text;
using UnityEngine;
using UnityEditor;public class SerializePropertyDepthExample : ScriptableObject
{
    // Declare fields to demonstrate data at different depths
    public int m_depth0;    [Serializable]
    public struct Nested
    {
        public int m_depth1;        [Serializable]
        public struct NestedInNested
        {
            public int m_depth2;
            public Vector2 m_vectorDepth2; // Contains x,y at depth 3
        };
        public NestedInNested m_Nested1;
    };
    public Nested m_Nested0;
    public bool m_boolDepth0;    [MenuItem("Example/SerializedProperty depth Example")]
    static void DepthExample()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyDepthExample>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var report = new StringBuilder();            var iterator = serializedObject.FindProperty("m_depth0");            const bool visitChildren = true;
            do
            {
                report.AppendLine($"Found {iterator.propertyPath} (depth {iterator.depth})");
            }
            while (iterator.Next(visitChildren));            //Output:
            //Found m_depth0 (depth 0)
            //Found m_Nested0 (depth 0)
            //Found m_Nested0.m_depth1 (depth 1)
            //Found m_Nested0.m_Nested1 (depth 1)
            //Found m_Nested0.m_Nested1.m_depth2 (depth 2)
            //Found m_Nested0.m_Nested1.m_vectorDepth2 (depth 2)
            //Found m_Nested0.m_Nested1.m_vectorDepth2.x (depth 3)
            //Found m_Nested0.m_Nested1.m_vectorDepth2.y (depth 3)
            //Found m_boolDepth0 (depth 0)
            Debug.Log(report.ToString());
        }
    }
}
```
