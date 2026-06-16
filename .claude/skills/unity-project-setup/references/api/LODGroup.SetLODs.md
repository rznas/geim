<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LODGroup.SetLODs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lods | The LODs to use for this group. |

### Description

Set the LODs for the LOD group. This removes any existing LODs configured on the LODGroup.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public LODGroup group;    void Start()
    {
        // Programmatically create a LOD group and add LOD levels.
        // Create a GUI that allows for forcing a specific LOD level.
        group = gameObject.AddComponent<LODGroup>();        // Add 4 LOD levels
        LOD[] lods = new LOD[4];
        for (int i = 0; i < 4; i++)
        {
            PrimitiveType primType = PrimitiveType.Cube;
            switch (i)
            {
                case 1:
                    primType = PrimitiveType.Capsule;
                    break;
                case 2:
                    primType = PrimitiveType.Sphere;
                    break;
                case 3:
                    primType = PrimitiveType.Cylinder;
                    break;
            }
            GameObject go = GameObject.CreatePrimitive(primType);
            go.transform.parent = gameObject.transform;
            Renderer[] renderers = new Renderer[1];
            renderers[0] = go.GetComponent<Renderer>();
            lods[i] = new LOD(1.0F / (i + 2), renderers);
        }
        group.SetLODs(lods);
        group.RecalculateBounds();
    }    void OnGUI()
    {
        if (GUILayout.Button("Enable / Disable"))
            group.enabled = !group.enabled;        if (GUILayout.Button("Default"))
            group.ForceLOD(-1);        if (GUILayout.Button("Force 0"))
            group.ForceLOD(0);        if (GUILayout.Button("Force 1"))
            group.ForceLOD(1);        if (GUILayout.Button("Force 2"))
            group.ForceLOD(2);        if (GUILayout.Button("Force 3"))
            group.ForceLOD(3);        if (GUILayout.Button("Force 4"))
            group.ForceLOD(4);        if (GUILayout.Button("Force 5"))
            group.ForceLOD(5);        if (GUILayout.Button("Force 6"))
            group.ForceLOD(6);
    }
}
```

Additional resources: LOD, GetLODs
