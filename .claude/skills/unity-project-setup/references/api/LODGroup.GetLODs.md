<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LODGroup.GetLODs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**LOD[]** The LOD array.

### Description

Returns the array of LODs.

```csharp
#if UNITY_EDITOR
using UnityEditor;
#endif
using UnityEngine;[ExecuteInEditMode]
public class DisplayLods : MonoBehaviour
{
#if UNITY_EDITOR
    void OnGUI()
    {
        // Display on the Game view top level information of each LOD for the selected LODGroup.
        if (gameObject != Selection.activeGameObject)
            return;        var lodGroup = GetComponent<LODGroup>();        if (lodGroup && gameObject == Selection.activeGameObject)
        {
            LOD[] lods = lodGroup.GetLODs();            GUILayout.BeginVertical(gameObject.name);
            for (int i=0 ; i<lods.Length ; i++)
            {
                LOD lod = lods[i];                GUILayout.Label($"LOD {i} : Renderer count = {lod.renderers.Length}, Fade trans. width = {lod.fadeTransitionWidth}, Screen rel. trans. height = {lod.screenRelativeTransitionHeight}");
            }
            GUILayout.EndVertical();
        }
    }
#endif
}
```

Additional resources: LOD, SetLODs
