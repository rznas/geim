<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-TransformHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to TransformHandle API

The `TransformHandle` API is an alternative to the `Transform` API. Unlike the `Transform` component (a managed class), `TransformHandle` is an unmanaged `struct`, which makes it fully compatible with the [Burst](http://docs.unity3d.com/Packages/com.unity.burst@latest) compiler.

While the `TransformHandle` API covers the same core operations as the `Transform` API, its design introduces several key differences described on this page. The `TransformHandle` API ensures compatibility with future entity and **GameObject** interactions.

## Differences with Transform API

The `TransformHandle` API functionality is equivalent to the `Transform` API, the key differences are in the way you access it, and in the implementation details. The `TransformHandle` API works alongside the `Transform` API in Unity 6.

| **Transform API** (Unity 6.2 and earlier) | **TransformHandle API** (Unity 6.3 and later) |
| --- | --- |
| You access the transform using the `GameObject.transform` property. | You access the transform using `gameObject.transformHandle` or `transform.GetTransformHandle` (where `transform` is the `Transform` component). |
| Returns a `Transform` component reference (managed type). | Returns a `TransformHandle` struct (unmanaged type). |
| The API is managed and not compatible with the [Burst](http://docs.unity3d.com/Packages/com.unity.burst@latest) compiler. | Is compatible with the [Burst](http://docs.unity3d.com/Packages/com.unity.burst@latest) compiler and can be used in Burst-compiled jobs. For more information, refer to the Using TransformHandle with Burst section. |
| Editor and runtime API. | Runtime-only API. |

### Transform APIs that are not available in the TransformHandle API

The following methods and properties from `Transform` APIs are not available in `TransformHandle` API:

- `GetSiblingIndex` / `SetSiblingIndex`
- `Find`
- `hasChanged` property

### TransformHandle API without an equivalent in the Transform API

The following `TransformHandle` API elements don’t have an equivalent in the `Transform` API.

- `TransformHandle.DirectChildrenEnumerable` represents an enumerable of the direct children of a transformHandle, and this enumerable returns a DirectChildrenEnumerator when enumerated.
- `TransformHandle.DirectChildrenEnumerator` is an enumerator that goes through the direct children of a transform.
- `TransformHandle.DirectChildren` returns a DirectChildrenEnumerable of this transform, which you can use to iterate over direct children with a foreach loop.
- `TransformHandle.GetDirectChildrenEnumerator` returns a DirectChildrenEnumerator of this transform, which you can use to manually iterate over direct children.

### Differences in common operations

The following common operations have a different implementation in `TransformHandle` API.

Check if a transform is valid:

- **Transform**: `transform != null`
- **TransformHandle**: `TransformHandle.IsValid`

Iterate the direct children of the transform:

- **Transform**: `foreach (Transform t in transform)`
- **TransformHandle**: `foreach (TransformHandle t in handle.DirectChildren)`

Set a parent of a transform to `None`:

- **Transform**: `transform.SetParent(null)`
- **TransformHandle**: `transformHandle.SetParent(TransformHandle.None)`  Alternative declaration: `TransformHandle h = transformHandle; h.parent = TransformHandle.None;`

For specific examples on how to use the API, refer to TransformHandle API examples.

### Methods with different argument or return types

The following methods are functionally equivalent, but have different argument types or return types (`Transform`, or `TransformHandle` depending on the API they are called from).

Different argument types:

- `IsChildOf`
- `LookAt`
- `SetParent`
- `Translate` (overload)

Different return types:

- `GetChild`
- `parent`
- `root`

## Additional resources

- TransformHandle API examples
- Using TransformHandle with Burst
