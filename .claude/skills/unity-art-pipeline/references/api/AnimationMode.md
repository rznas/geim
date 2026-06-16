<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AnimationMode is used by the AnimationWindow to store properties modified by the AnimationClip playback.

When exiting AnimationMode all properties are reverted to their default state. Animated properties are also highlighted by the inspector. Use StartAnimationMode to enter Animation mode. In Animation mode the editor is tinted to show that it is animating. Properties can be animated via SampleAnimationClip.
 
 The following script example shows how a GameObject can be animated. AnimationMode has functions which support this. The demo can be launched from the "Examples/AnimationMode demo" menu. Once this demo starts it requires a GameObject to be selected in the Scene window. (This example requires the game to not be running in the Game view.) After a GameObject has been selected the example window will change. Choose a created animation clip for the chosen GameObject. Once the animation clip has been loaded the animation can be applied to the GameObject. Clicking the Animate button adds a slider to the window. Using the slider will apply the animation to the selected GameObject. The Lock button prevents the animation to be applied to a different GameObject.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleClass : EditorWindow
{
    protected GameObject go;
    protected AnimationClip animationClip;
    protected float time = 0.0f;
    protected bool lockSelection = false;
    protected bool animationMode = false;    [MenuItem("Examples/AnimationMode demo", false, 2000)]
    public static void DoWindow()
    {
        var window = GetWindowWithRect<ExampleClass>(new Rect(0, 0, 300, 80));
        window.Show();
    }    // Has a GameObject been selection?
    public void OnSelectionChange()
    {
        if (!lockSelection)
        {
            go = Selection.activeGameObject;
            Repaint();
        }
    }    // Main editor window
    public void OnGUI()
    {
        // Wait for user to select a GameObject
        if (go == null)
        {
            EditorGUILayout.HelpBox("Please select a GameObject", MessageType.Info);
            return;
        }        // Animate and Lock buttons.  Check if Animate has changed
        GUILayout.BeginHorizontal();
        EditorGUI.BeginChangeCheck();
        GUILayout.Toggle(AnimationMode.InAnimationMode(), "Animate");
        if (EditorGUI.EndChangeCheck())
            ToggleAnimationMode();        GUILayout.FlexibleSpace();
        lockSelection = GUILayout.Toggle(lockSelection, "Lock");
        GUILayout.EndHorizontal();        // Slider to use when Animate has been ticked
        EditorGUILayout.BeginVertical();
        animationClip = EditorGUILayout.ObjectField(animationClip, typeof(AnimationClip), false) as AnimationClip;
        if (animationClip != null)
        {
            float startTime = 0.0f;
            float stopTime  = animationClip.length;
            time = EditorGUILayout.Slider(time, startTime, stopTime);
        }
        else if (AnimationMode.InAnimationMode())
            AnimationMode.StopAnimationMode();
        EditorGUILayout.EndVertical();
    }    void Update()
    {
        if (go == null)
            return;        if (animationClip == null)
            return;        // Animate the GameObject
        if (!EditorApplication.isPlaying && AnimationMode.InAnimationMode())
        {
            AnimationMode.BeginSampling();
            AnimationMode.SampleAnimationClip(go, animationClip, time);
            AnimationMode.EndSampling();            SceneView.RepaintAll();
        }
    }    void ToggleAnimationMode()
    {
        if (AnimationMode.InAnimationMode())
            AnimationMode.StopAnimationMode();
        else
            AnimationMode.StartAnimationMode();
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| animatedPropertyColor | The color used to show that a property is currently being animated. |
| candidatePropertyColor | The color used to show that an animated property has been modified. |
| recordedPropertyColor | The color used to show that an animated property automatically records changes in the animation clip. |

### Static Methods

| Method | Description |
| --- | --- |
| AddEditorCurveBinding | Marks a property defined by an EditorCurveBinding as currently being animated. |
| AddPropertyModification | Marks a property as currently being animated. |
| BeginSampling | Initialise the start of the animation clip sampling. |
| EndSampling | Finish the sampling of the animation clip. |
| InAnimationMode | Checks whether the Editor is in Animation mode. |
| IsPropertyAnimated | Checks whether the specified property is in Animation mode and is being animated. |
| SampleAnimationClip | Samples the AnimationClip for the GameObject and also records modified properties when in Animation mode. |
| SamplePlayableGraph | Samples the specified output index of a PlayableGraph and also records modified properties when in Animation mode. |
| StartAnimationMode | Starts the Animation mode. |
| StopAnimationMode | Stops the Animation mode and reverts any properties that were animated while in Animation mode. |
