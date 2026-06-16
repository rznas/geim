<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectReferenceKeyframe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Keyframe to an Object reference.

Use an object reference keyframe to create an array of Object references. An AnimationClip uses an array of Object references to animate properties.

Use the AnimationUtility.SetObjectReferenceCurve and AnimationUtility.SetObjectReferenceCurves methods to assign ObjectReferenceKeyframe arrays of Object reference properties to an AnimationClip. Use the AnimationUtility.GetObjectReferenceCurve method to retrieve an ObjectReferenceKeyframe array for an Object reference property.

Additional resources: AnimationClip AnimationUtility.SetObjectReferenceCurve AnimationUtility.SetObjectReferenceCurves AnimationUtility.GetObjectReferenceCurve.

```csharp
using UnityEditor;
using UnityEngine;

static class AnimationClipWithObjectReferenceKeyframesExample
{
    // This example creates an AnimationClip of a sequence of sprites selected
    // in the project view. The clip is saved as an asset in the project.
    [MenuItem("Example/Create Flip Book Animation Clip From Sprites")]
    static void CreateFlipBookAnimationClipFromSprites()
    {
        var selectedSprites = Selection.GetFiltered<Sprite>(SelectionMode.Unfiltered);
        if (selectedSprites == null || selectedSprites.Length == 0)
        {
            Debug.LogError("Please select sprites in the project view to create a clip for.");
            return;
        }

        AnimationClip clip = new AnimationClip();

        var spriteCurve = new ObjectReferenceKeyframe[selectedSprites.Length];
        for (int i = 0; i < selectedSprites.Length; ++i)
        {
            var sprite = selectedSprites[i];
            spriteCurve[i] = new ObjectReferenceKeyframe
            {
                time = i/clip.frameRate,
                value = sprite
            };
        }

        var spriteBinding = EditorCurveBinding.PPtrCurve("", typeof(SpriteRenderer), "m_Sprite");
        AnimationUtility.SetObjectReferenceCurve(clip, spriteBinding, spriteCurve);

        AssetDatabase.CreateAsset(clip, AssetDatabase.GenerateUniqueAssetPath($"Assets/FlipBookClip.anim"));
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| time | The time of the keyframe. |
| value | The Object reference value of the keyframe. |
