<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanPoseHandler.SetInternalAvatarPose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| avatarPose | The input avatar pose. The avatar pose is expressed as an array of floats. The floats represent the translation and rotation of the joints as local transforms. Each joint local transform is represented by 3 floats for the translation and 4 floats for the rotation (expressed as a quaternion). The joint transform is stored in the array in the same order as the joint paths in the `jointPaths` parameter used to construct the human pose handler. For example, if the human pose handler was constructed with 20 joint paths, the `avatarPose` parameter should be an array of 140 floats. |

### Description

Converts an avatar pose to a human pose and stores it as the internal human pose inside the human pose handler.

If the human pose handler was constructed with a skeleton root transform, this method does nothing.
