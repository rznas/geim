<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanPoseHandler.SetInternalHumanPose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| humanPose | The human pose to set. In the human pose, the `bodyPosition` and `bodyRotation` are the position and rotation of the approximate center of mass of the humanoid. This is relative to the humanoid root transform and it is normalized: the local position is divided by `avatar` human scale. |

### Description

Stores the specified human pose as the internal human pose inside the human pose handler.

If the human pose handler is not bound to a transform hierarchy representing a humanoid in the scene, the humanoids's root transform is considered to be the identity transform.
