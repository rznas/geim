<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanPoseHandler-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| avatar | The avatar from which HumanPose will be read or written. The avatar must be a humanoid. |
| root | The top most parent of the skeleton hierarchy defined in the humanoid `avatar`. This must match the `avatar` definition. |
| jointPaths | A list that defines the `avatar` joint paths. Each joint path starts from the node after the root transform and continues down the avatar skeleton hierarchy. The root transform joint path is an empty string. |

### Description

Creates a human pose handler from an `avatar` and a `root` transform and either a list of joint paths.

Specify an `avatar` and a `root` transform to create a human pose from the skeleton hierarchy (avatar). Specify an `avatar` and a list of joint paths to create a human pose handler that is not bound to a skeleton transform hierarchy. You can use a human pose handler created from joint paths to convert a human pose to or from an array of local joint transforms (jointPaths).

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Unity.Collections;public class ExampleClass : MonoBehaviour
{
    public Avatar avatar;
    public Transform avatarRoot;    void ParseAvatarTransformRecursive(Transform t, string parentPath, List<string> jointPaths, List<Transform> transforms)
    {
        string jointPath = parentPath.Length == 0 ? t.gameObject.name : parentPath + "/" + t.gameObject.name;
        jointPaths.Add(jointPath);
        transforms.Add(t);        foreach (Transform child in t)
        {
            ParseAvatarTransformRecursive(t, jointPath, jointPaths, transforms);
        }
    }    void ParseAvatarRootTransform(Transform rootTransform, List<string> jointPaths, List<Transform> transforms)
    {
        jointPaths.Add(""); // root tranform path is the empty string
        transforms.Add(rootTransform);        foreach (Transform t in rootTransform)
        {
            ParseAvatarTransformRecursive(t, "", jointPaths, transforms);
        }
    }    void Start()
    {
        List<string> jointPaths = new List<string>();
        List<Transform> avatarTransforms = new List<Transform>();
        ParseAvatarRootTransform(avatarRoot, jointPaths, avatarTransforms);        HumanPoseHandler humanPoseHandler = new HumanPoseHandler(avatar, jointPaths.ToArray());
        NativeArray<float> avatarPose = new NativeArray<float>(jointPaths.Count * 7, Allocator.Persistent);        for (int i = 0; i < jointPaths.Count; ++i)
        {
            Vector3 position = avatarTransforms[i].localPosition;
            Quaternion rotation = avatarTransforms[i].localRotation;
            avatarPose[7 * i] = position.x;
            avatarPose[7 * i + 1] = position.y;
            avatarPose[7 * i + 2] = position.z;
            avatarPose[7 * i + 3] = rotation.x;
            avatarPose[7 * i + 4] = rotation.y;
            avatarPose[7 * i + 5] = rotation.z;
            avatarPose[7 * i + 6] = rotation.w;
        }        humanPoseHandler.SetInternalAvatarPose(avatarPose);        avatarPose.Dispose();
        humanPoseHandler.Dispose();
    }
}
```

The above example creates a human pose handler from an avatar and a list of avatar joints. The example reads the pose from the avatar root transform and writes the pose to the human pose handler.
