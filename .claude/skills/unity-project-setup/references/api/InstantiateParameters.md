<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InstantiateParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Parameters for Object.Instantiate and Object.InstantiateAsync.

This structure is used in Object.Instantiate and Object.InstantiateAsync in order to provide maximum flexibility in the parameters you provide. It has the added benefit of unifying the meaning of the parameters in both methods.

The behaviour of the different parameter combinations is:

- **Default**: The instance will have the same local position and rotation as the original, it won't have a parent and it will be in the active scene.
- `worldSpace`: The instance will have the same world position and rotation as the original.
- **Default, method takes position and rotation**: Sets those values to the transform of the instance in local space.
- `worldSpace` **, method takes position and rotation**: Sets those values to the transform of the instance in world space.
- `parent`: The instance will be a child of `parent` and will have the same local position and rotation as the original.
- `parent` **and** `worldSpace`: The instance will be a child of `parent` and will have the same world position and rotation as the original.
- `parent` **, method takes position and rotation**: The instance will be a child of `parent` and the values will be set as local.
- `parent` **and** `worldSpace`**, method takes position and rotation**: The instance will be a child of `parent` and the values will be set as world space.
- `scene` **and any combination of position, rotation and** `worldSpace`: The same behaviour as that combination, but the instance will be in `scene`.
- `scene` **and** `parent`: `scene` will be ignored because child objects are always in the same scene as the `parent`.

### Properties

| Property | Description |
| --- | --- |
| originalImmutable | It tells the InstantiateAsync if it's safe to do the serialization step async. |
| parent | The desired parent. |
| scene | The desired scene. |
| worldSpace | Choose between world space or local space. |
