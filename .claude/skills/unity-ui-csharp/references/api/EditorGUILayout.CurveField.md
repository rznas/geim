<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.CurveField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label to display in front of the field. |
| value | The curve to edit. |
| color | The color to show the curve with. |
| ranges | Optional rectangle that the curve is restrained within. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**AnimationCurve** The curve edited by the user.

### Description

Make a field for editing an AnimationCurve.

*Create an animation on the different axis and assign it to a GameObject.*

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class FollowCurve : EditorWindow
{
    AnimationCurve curveX = AnimationCurve.Linear(0, 0, 10, 10);
    AnimationCurve curveY = AnimationCurve.Linear(0, 0, 10, 10);
    AnimationCurve curveZ = AnimationCurve.Linear(0, 0, 10, 10);    [MenuItem("Examples/Create Curve For Object")]
    static void Init()
    {
        FollowCurve window = (FollowCurve)EditorWindow.GetWindow(typeof(FollowCurve));
        window.Show();
    }    void OnGUI()
    {
        curveX = EditorGUILayout.CurveField("Animation on X", curveX);
        curveY = EditorGUILayout.CurveField("Animation on Y", curveY);
        curveZ = EditorGUILayout.CurveField("Animation on Z", curveZ);        if (GUILayout.Button("Generate Curve"))
            AddCurveToSelectedGameObject();
    }    void  AddCurveToSelectedGameObject()
    {
        if (Selection.activeGameObject)
        {
            FollowAnimationCurve comp =
                Selection.activeGameObject.AddComponent<FollowAnimationCurve>();            comp.SetCurves(curveX, curveY, curveZ);
        }
        else
        {
            Debug.LogError("No Game Object selected for adding an animation curve");
        }
    }
}
```

And the script that works with the example:

```csharp
using UnityEngine;
using System.Collections;public class FollowAnimationCurve : MonoBehaviour
{
    public AnimationCurve curveX;
    public AnimationCurve curveY;
    public AnimationCurve curveZ;    public void SetCurves(AnimationCurve xC, AnimationCurve yC, AnimationCurve zC)
    {
        curveX = xC;
        curveY = yC;
        curveZ = zC;
    }    void Update()
    {
        transform.position = new Vector3(curveX.Evaluate(Time.time), curveY.Evaluate(Time.time), curveZ.Evaluate(Time.time));
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| property | The curve to edit. |
| color | The color to show the curve with. |
| ranges | Optional rectangle that the curve is restrained within. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |
| label | Optional label to display in front of the field. Pass [[GUIContent.none] to hide the label. |

### Description

Make a field for editing an AnimationCurve.
