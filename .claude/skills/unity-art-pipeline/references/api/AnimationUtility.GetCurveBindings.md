<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.GetCurveBindings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieves the float curve bindings in an animation clip.

Unity has two types of animation: float curve and object reference curve. A float curve is a classic curve that animates a float property over time. An object reference curve is a construct that animates an object reference property over time.

This method returns the float curve bindings. See AnimationUtility.GetObjectReferenceCurveBindings for object reference curves.

```csharp
using UnityEditor;
using UnityEngine;// Editor window for listing all float curves in an animation clip
public class ClipInfo : EditorWindow
{
    private AnimationClip clip;    [MenuItem("Window/Clip Info")]
    static void Init()
    {
        GetWindow(typeof(ClipInfo));
    }    public void OnGUI()
    {
        clip = EditorGUILayout.ObjectField("Clip", clip, typeof(AnimationClip), false) as AnimationClip;        EditorGUILayout.LabelField("Curves:");
        if (clip != null)
        {
            foreach (var binding in AnimationUtility.GetCurveBindings(clip))
            {
                AnimationCurve curve = AnimationUtility.GetEditorCurve(clip, binding);
                EditorGUILayout.LabelField(binding.path + "/" + binding.propertyName + ", Keys: " + curve.keys.Length);
            }
        }
    }
}
```
