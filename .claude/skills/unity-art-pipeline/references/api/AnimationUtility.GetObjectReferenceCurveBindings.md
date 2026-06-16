<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.GetObjectReferenceCurveBindings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieves the object reference curve bindings stored in the animation clip.

Use this method to find which object reference properties are animatable.

Unity has two types of animation: float curve and object reference curve. A float curve is a classic curve that animates a float property over time. An object reference curve is a construct that animates an object reference property over time.

This method only retrieves the object reference curve bindings. See AnimationUtility.GetCurveBindings for float curves.

```csharp
using UnityEditor;
using UnityEngine;// Editor window for listing all object reference curves in an animation clip
public class ClipInfo : EditorWindow
{
    private AnimationClip clip;    [MenuItem("Window/Clip Info")]
    static void Init()
    {
        GetWindow(typeof(ClipInfo));
    }    public void OnGUI()
    {
        clip = EditorGUILayout.ObjectField("Clip", clip, typeof(AnimationClip), false) as AnimationClip;        EditorGUILayout.LabelField("Object reference curves:");
        if (clip != null)
        {
            foreach (var binding in AnimationUtility.GetObjectReferenceCurveBindings(clip))
            {
                ObjectReferenceKeyframe[] keyframes = AnimationUtility.GetObjectReferenceCurve(clip, binding);
                EditorGUILayout.LabelField(binding.path + "/" + binding.propertyName + ", Keys: " + keyframes.Length);
            }
        }
    }
}
```
