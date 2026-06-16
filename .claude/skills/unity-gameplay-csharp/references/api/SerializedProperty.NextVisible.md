<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.NextVisible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Move to next visible property.

Additional resources: Next, hasVisibleChildren, isExpanded, Reset, HideInInspector.

```csharp
using System;
using System.Text;
using UnityEngine;
using UnityEditor;public class SerializePropertyNextVisible : ScriptableObject
{
    public bool m_SeeMe1;    [HideInInspector]
    public bool m_HideMe1;    [SerializeField]
    private bool m_SeeMe2;    [HideInInspector]
    public bool m_HideMe2;    [MenuItem("Example/SerializedProperty NextVisible Example")]
    static void TestNextOnCyclicGraph()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyNextVisible>();
        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var serializedProperty = serializedObject.GetIterator();            var sb = new StringBuilder();
            sb.AppendLine("Visible Properties:");            // Move from the root to the first visible property
            bool visitChild = true;
            serializedProperty.NextVisible(visitChild);            // Rest of scan stays at same level
            visitChild = false;
            do
            {
                // Note: some properties from the supporting Unity base objects are exposed
                // (and visible in the inspector), for example "m_Script".
                sb.AppendLine(serializedProperty.name);
            }
            while (serializedProperty.NextVisible(visitChild));            /*Expected output
            m_Script
            m_SeeMe1
            m_SeeMe2
            */
            Debug.Log(sb.ToString());
        }
    }
}
```
