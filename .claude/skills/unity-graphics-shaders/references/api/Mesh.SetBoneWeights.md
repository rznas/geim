<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetBoneWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bonesPerVertex | Bone count for each vertex in the Mesh. |
| weights | BoneWeight1 structs for each vertex, sorted by vertex index. |

### Description

Sets the bone weights for the Mesh.

Supports up to 255 bone weights per vertex. The bone weights for each vertex must be sorted with the most significant weights first. Zero weights will be ignored.

The weights may be stored with less precision than the floating point values passed in, so do not expect to get the exact same values back using Mesh.GetAllBoneWeights. The minimum precision used is currently 16-bit normalized integers.

Additional resources: Mesh.GetAllBoneWeights, Mesh.GetBonesPerVertex, Mesh.boneWeights, Mesh.GetBoneWeights ModelImporter.maxBonesPerVertex, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.

```csharp
using UnityEngine;
using Unity.Collections;public class MeshSetBoneWeights : MonoBehaviour
{
    void Start()
    {
        Animation animation = gameObject.AddComponent<Animation>();
        SkinnedMeshRenderer renderer = gameObject.AddComponent<SkinnedMeshRenderer>();        // Build a rectangular mesh using four vertices and two triangles, and assign a material to the renderer
        Mesh mesh = new Mesh();
        mesh.vertices = new Vector3[] { new Vector3(0, 0, 0), new Vector3(5, 0, 0), new Vector3(0, 5, 0), new Vector3(5, 5, 0) };
        mesh.triangles = new int[] { 0, 1, 2, 1, 3, 2 };
        mesh.RecalculateNormals();
        renderer.material = new Material(Shader.Find("Standard"));        // Create a Transform and bind pose for two bones
        Transform[] bones = new Transform[2];
        Matrix4x4[] bindPoses = new Matrix4x4[2];        // Create a bottom-left bone as a child of this GameObject
        bones[0] = new GameObject("BottomLeftBone").transform;
        bones[0].parent = transform;
        bones[0].localRotation = Quaternion.identity;
        bones[0].localPosition = Vector3.zero;
        // Set the bind pose to the bone's inverse transformation matrix, relative to the root
        bindPoses[0] = bones[0].worldToLocalMatrix * transform.localToWorldMatrix;        // Create a top-right bone
        bones[1] = new GameObject("TopRightBone").transform;
        bones[1].parent = transform;
        bones[1].localRotation = Quaternion.identity;
        bones[1].localPosition = new Vector3(5, 5, 0);
        bindPoses[1] = bones[1].worldToLocalMatrix * transform.localToWorldMatrix;        // Create an array that describes the number of bone weights per vertex
        // The array assigns 1 bone weight to vertex 0, 2 bone weights to vertex 1, and so on.
        byte[] bonesPerVertex = new byte[4] { 1, 2, 2, 1 };        // Create a array with one BoneWeight1 struct for each of the 6 bone weights
        BoneWeight1[] weights = new BoneWeight1[6];        // Assign the bottom-left bone to vertex 0 (the bottom-left corner)
        weights[0].boneIndex = 0;
        weights[0].weight = 1;        // Assign both bones to vertex 1 (the bottom-right corner)
        weights[1].boneIndex = 0;
        weights[1].weight = 0.5f;        weights[2].boneIndex = 1;
        weights[2].weight = 0.5f;        // Assign both bones to vertex 2 (the top-left corner)
        weights[3].boneIndex = 0;
        weights[3].weight = 0.5f;        weights[4].boneIndex = 1;
        weights[4].weight = 0.5f;        // Assign the top-right bone to vertex 3 (the top-right corner)
        weights[5].boneIndex = 1;
        weights[5].weight = 1;        // Create NativeArray versions of the two arrays
        var bonesPerVertexArray = new NativeArray<byte>(bonesPerVertex, Allocator.Temp);
        var weightsArray = new NativeArray<BoneWeight1>(weights, Allocator.Temp);        // Set the bone weights on the mesh
        mesh.SetBoneWeights(bonesPerVertexArray, weightsArray);
        bonesPerVertexArray.Dispose();
        weightsArray.Dispose();        // Assign the bind poses to the mesh
        mesh.bindposes = bindPoses;        // Assign the bones and the mesh to the renderer
        renderer.bones = bones;
        renderer.sharedMesh = mesh;        // Assign a simple back-and-forth animation to the bottom-left bone, and play the animation
        // Vertex 0 moves directly with the bone
        // Vertex 1 and 2 also move, but there's less movement because the vertices are also weighted to the top-right bone
        // Vertex 3 doesn't move, because the top-right bone doesn't move
        AnimationCurve curve = new AnimationCurve();
        curve.keys = new Keyframe[] { new Keyframe(0f, 0f, 0f, 0f), new Keyframe(1f, 3f, 0f, 0f), new Keyframe(2f, 0f, 0f, 0f) };
        AnimationClip clip = new AnimationClip();
        clip.legacy = true;
        clip.SetCurve("BottomLeftBone", typeof(Transform), "m_LocalPosition.z", curve);
        clip.wrapMode = WrapMode.Loop;
        animation.AddClip(clip, "test");
        animation.Play("test");    }
}
```
