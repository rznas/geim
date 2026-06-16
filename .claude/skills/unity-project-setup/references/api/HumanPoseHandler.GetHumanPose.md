<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanPoseHandler.GetHumanPose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| humanPose | The output human pose. In the human pose, the `bodyPosition` and `bodyRotation` are the position and rotation of the approximate center of mass of the humanoid in world space. `bodyPosition` is normalized: the position is divided by `avatar` human scale. |

### Description

Computes a human pose from the avatar skeleton, stores the pose in the human pose handler, and returns the human pose.

If the human pose handler was constructed with `jointPaths`, it is not bound to a skeleton transform hierarchy. In this case, `GetHumanPose` returns the internally stored human pose as the output.
