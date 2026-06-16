<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/transformhandle-landing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Using unmanaged API for transform operations

The `TransformHandle` API is an alternative to the `Transform` API. Unlike the `Transform` component (a managed class), `TransformHandle` is an unmanaged `struct`, which makes it fully compatible with the [Burst](http://docs.unity3d.com/Packages/com.unity.burst@latest) compiler.

| **Page** | **Description** |
| --- | --- |
| Introduction to TransformHandle API | Introduction to the `TransformHandle` API and the key differences from the `Transform` API. |
| TransformHandle API code examples | Code examples that demonstrate the difference between `Transform` and `TransformHandle` API. |
| Using TransformHandle with Burst | The `TransformHandle` API is fully compatible with the [Burst compiler](http://docs.unity3d.com/Packages/com.unity.burst@latest), which lets you optimize your code. |

## Additional resources

- Transforms
