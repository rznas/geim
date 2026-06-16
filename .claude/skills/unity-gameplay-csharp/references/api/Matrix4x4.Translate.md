<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.Translate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a translation matrix.

```csharp
// Translate, rotate and scale a mesh. Try varying
// the parameters in the inspector while running
// to see the effect they have.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour {
    public Vector3 translation;
    private MeshFilter mf;
    private Vector3[] origVerts;
    private Vector3[] newVerts;    void Start() {
        mf = GetComponent<MeshFilter>();
        origVerts = mf.mesh.vertices;
        newVerts = new Vector3[origVerts.Length];
    }    void Update() {
        Matrix4x4 m = Matrix4x4.Translate(translation);
        int i = 0;
        while (i < origVerts.Length) {
            newVerts[i] = m.MultiplyPoint3x4(origVerts[i]);
            i++;
        }
        mf.mesh.vertices = newVerts;
    }
}
```

Additional resources: TRS, Rotate, Scale, SetTRS functions.
