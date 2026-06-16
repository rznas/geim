<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.IsPropertyAnimated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The object to determine if it contained the animation. |
| propertyPath | The name of the animation to search for. |

### Returns

**bool** Whether the property search is found or not.

### Description

Checks whether the specified property is in Animation mode and is being animated.

IsPropertyAnimated checks whether a property is being animated. This check requires also the object where the property can be found.
 
`color` is searched for in the following script example . It is part of the `Renderer` object. Note that the example uses a sphere GameObject and an animation file, color.anim. The color animation in color.anim has the color varying from yellow to blue.

```csharp
// Demo showing how IsPropertyAnimated() can be used to determine if a property
// on an object is being animated. In this example the color in a Renderer is
// animated.using UnityEngine;
using UnityEditor;public class ExampleClass : EditorWindow
{
    protected GameObject go;
    protected AnimationClip animationClip;
    protected float time = 0.0f;
    protected bool showColor = false;    [MenuItem("Examples/AnimationMode demo")]
    public static void DoWindow()
    {
        var window = GetWindow<ExampleClass>();
        window.Show();
    }    void OnGUI()
    {
        if (go == null)
        {
            EditorGUILayout.HelpBox("Select a GO", MessageType.Info);
            return;
        }        EditorGUILayout.LabelField("Color slider");        if (animationClip == null)
        {
            AnimationMode.StartAnimationMode();
            animationClip = AssetDatabase.LoadAssetAtPath<AnimationClip>("Assets/color.anim");
        }        if (animationClip != null)
        {
            float startTime = 0.0f;
            float stopTime  = animationClip.length;
            time = EditorGUILayout.Slider(time, startTime, stopTime);
        }        if (showColor)
        {
            EditorGUILayout.LabelField("Red color being animated");
        }
    }    void Update()
    {
        if (go == null)
            return;        if (animationClip == null)
            return;        if (AnimationMode.InAnimationMode())
        {
            Renderer rend = go.GetComponent<Renderer>();            if (AnimationMode.IsPropertyAnimated(rend, "material._Color.r"))
            {
                showColor = true;
            }
            else
            {
                showColor = false;
            }            AnimationMode.BeginSampling();
            AnimationMode.SampleAnimationClip(go, animationClip, time);
            AnimationMode.EndSampling();            SceneView.RepaintAll();
        }
    }    // Has a GameObject been selection?
    public void OnSelectionChange()
    {
        go = Selection.activeGameObject;
        Repaint();
    }    public void OnDestroy()
    {
        Debug.Log("Shutting down");
        AnimationMode.StopAnimationMode();
    }
}
```
