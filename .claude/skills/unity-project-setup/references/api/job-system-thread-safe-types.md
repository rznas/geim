<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/job-system-thread-safe-types.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Thread safe types

The job system works best when you use it with the [Burst compiler](https://docs.unity3d.com/Packages/com.unity.burst@latest/). Because Burst doesn’t support managed objects, you need to use unmanaged types to access the data in jobs. You can do this with [blittable types](https://learn.microsoft.com/en-us/dotnet/framework/interop/blittable-and-non-blittable-types), or use Unity’s built-in `NativeContainer` objects.

| **Topic** | **Description** |
| --- | --- |
| Introduction to NativeContainer | Understand Unity’s custom thread-safe type, `NativeContainer`. |
| Implement a custom NativeContainer | Implement custom native containers. |
| Copying NativeContainer structures | Copy and reference multiple native containers. |
| Custom NativeContainer example | Use a real world custom NativeContainer example. |

## Additional resources

- [Burst compiler](https://docs.unity3d.com/Packages/com.unity.burst@latest/)
- [Collections](https://docs.unity3d.com/Packages/com.unity.collections@latest)
