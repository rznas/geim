<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanPoseHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to create, read, and write the HumanPose for a humanoid avatar skeleton hierarchy or an avatar pose.

### Constructors

| Constructor | Description |
| --- | --- |
| HumanPoseHandler | Creates a human pose handler from an avatar and a root transform and either a list of joint paths. |

### Public Methods

| Method | Description |
| --- | --- |
| GetHumanPose | Computes a human pose from the avatar skeleton, stores the pose in the human pose handler, and returns the human pose. |
| GetInternalAvatarPose | Gets the internal human pose stored in the human pose handler and converts it to an avatar pose. |
| GetInternalHumanPose | Gets the internal human pose stored in the human pose handler. |
| SetHumanPose | Stores the specified human pose inside the human pose handler. |
| SetInternalAvatarPose | Converts an avatar pose to a human pose and stores it as the internal human pose inside the human pose handler. |
| SetInternalHumanPose | Stores the specified human pose as the internal human pose inside the human pose handler. |
