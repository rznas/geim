<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanPoseHandler.SetHumanPose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| humanPose | The human pose to set. In the human pose, the `bodyPosition` and `bodyRotation` are the position and rotation of the approximate center of mass of the humanoid. This is relative to the humanoid root transform and it is normalized: the local position is divided by `avatar` human scale. |

### Description

Stores the specified human pose inside the human pose handler.

If the `HumanPoseHander` was constructed from an `avatar` and a `root`, the human pose is applied to the transform hierarchy representing the humanoid in the scene. If the `HumanPoseHander` was constructed from an `avatar` and `jointPaths`, the human pose is not bound to a transform hierarchy.
