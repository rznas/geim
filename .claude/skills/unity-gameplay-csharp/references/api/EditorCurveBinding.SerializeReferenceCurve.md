<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorCurveBinding.SerializeReferenceCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inPath | The transform path to the object to animate. |
| inType | The type of the MonoBehaviour managing the SerializeReference instance to animate. |
| refID | The reference id of the SerializeReference instance to animate. Additional resources: ManagedReferenceUtility.GetManagedReferenceIdForObject. |
| inPropertyName | The name of the property to animate on the object. |
| isPPtr | If true, the binding represents an object reference curve. |
| isDiscrete | If true, the binding represents a discrete value curve. Enabled by default if %%isPPtr%% is true. |

### Returns

**EditorCurveBinding** The new EditorCurveBinding.

### Description

Creates a preconfigured binding for a curve that points to a SerializeReference instance field.

Fields on objects referenced with SerializeReference can be animated when the host object is derived from MonoBehaviour. The animation binding to the referenced object will be based on the reference id instead of the property path, which makes it possible to correctly resolve the animation even when there are changes in the path leading to the referenced object. For example, if the object is referenced from within an array, the animation is retained even if the position of the object within the array changes.
