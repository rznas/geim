<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.InstantiateAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| original | An existing object that you want to make a copy of. |
| count | The number of new copies to create. |
| parent | The parent that will be assigned to the new object or objects. |
| position | The position for the new object or objects. |
| rotation | The rotation for the new object or objects. |
| positions | The read only span of positions for the new object or objects. The length of the array can be less than `count`, in which case Unity uses position[i % count]. |
| rotations | The read only span of rotations for the new object or objects. The length of the array can be less than `count`, in which case Unity uses rotation[i % count]. |
| parameters | A struct containing all the parameters |

### Returns

**AsyncInstantiateOperation<T>** An asynchronous operation that contains the resulting objects.

### Description

Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation.

The operation is mainly asynchronous, but the last stage involving integration and awake calls is executed on the main thread. The operation can be cancelled, or the integration stage can be delayed using allowSceneActivation. It is possible to yield a return operation or call its WaitForCompletion() method to finish the operation in a synchronized way.

For extra control you can use the overrides that take an InstantiateParameters struct. This includes extra options like deciding between using local or world space, or to specify a target scene for the objects.
