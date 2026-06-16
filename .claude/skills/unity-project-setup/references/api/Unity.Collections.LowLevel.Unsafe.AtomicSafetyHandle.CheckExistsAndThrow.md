<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckExistsAndThrow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Description

Check if an AtomicSafetyHandle is valid.

Throws an exception if the AtomicSafetyHandle is already destroyed. An `AtomicSafetyHandle` is invalid under the following conditions:

* The version number it stores no longer matches the version number of the associated entry in the safety system. * AtomicSafetyHandle.Release is called on the `AtomicSafetyHandle`, or on another `AtomicSafetyHandle` that references the same memory region. * The secondary version number it stores no longer matches the secondary version number of the associated entry in the safety system. This situation happens when AtomicSafetyHandle.CheckWriteAndBumpSecondaryVersion or AtomicSafetyHandle.SetBumpSecondaryVersionOnSchedule are called on the `AtomicSafetyHandle`. 

For more information about container version numbers, refer to Copying NativeContainer structures.

CheckExistsAndThrow is identical in behavior to AtomicSafetyHandle.IsHandleValid, except that it throws an exception when the handle isn't valid, rather than returning `false`.

Additional resources: AtomicSafetyHandle.IsHandleValid
