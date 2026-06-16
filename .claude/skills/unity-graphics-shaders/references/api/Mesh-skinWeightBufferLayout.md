<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-skinWeightBufferLayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The dimension of data in the bone weight buffer.

This value describes the layout of data in the mesh's bone weight buffer. It depends on how many bones that affect each vertex in the mesh.

```csharp
using UnityEngine;
public class Example : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        if(mesh.skinWeightBufferLayout == SkinWeights.FourBones)
        {
            Debug.Log("Mesh is using four bones per vertex");
        }
    }
}
```

Additional resources: Mesh.GetBoneWeightBuffer.
