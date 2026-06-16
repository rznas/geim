<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/transformhandle-burst.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Using TransformHandle with Burst

The `TransformHandle` API is fully compatible with the [Burst compiler](http://docs.unity3d.com/Packages/com.unity.burst@latest). This lets you avoid copying data to and from native collections, which is necessary when using managed `Transform` components with Burst-compiled code.

This page demonstrates how `TransformHandle` simplifies Burst workflows compared to the `Transform` API.

## Benefits of using TransformHandle with Burst

When working with Burst-compiled code, `TransformHandle` provides the following advantages:

- **Direct access**: Read and write transform positions, rotations, and other properties directly from Burst-compiled methods.
- **Native array compatibility**: Store `TransformHandle` instances directly in `NativeArray` and other native collections. Avoid the overhead of copying data to and from `NativeArray` buffers, which is necessary when using the `Transform` API. For examples, refer to Example implementation using TransformHandle API compared with Transform API.
- **Simpler code structure**: Perform all operations in a single Burst-compiled pass instead of splitting logic into separate Burst-compatible and non-Burst phases.

## Example implementation using TransformHandle API compared with Transform API

The following examples demonstrate the difference between using `TransformHandle` and `Transform` API when working with Burst compilation. Both examples move 1000 game objects toward randomly selected targets each frame.

### Implementation using TransformHandle API with Burst

The `TransformHandle` API eliminates the need for intermediate buffers and separate copy phases. All position reads and writes occur directly in Burst-compiled code, resulting in simpler, more maintainable code. You can perform all necessary operations in a single Burst-compiled method.

```csharp
using Unity.Burst;
using Unity.Collections;
using Unity.Mathematics;
using UnityEngine;

public class TransformHandleMoveExample : MonoBehaviour
{
    public int SpawnCount = 1000;
    // TransformHandle can be stored in NativeArray and accessed from Burst-compiled code
    public NativeArray<TransformHandle> SpawnedTransforms;
    public Unity.Mathematics.Random Random;

    void Start()
    {
        Random = Unity.Mathematics.Random.CreateFromIndex(0);

        // Allocate native array of handles (no separate float3 buffer needed)
        SpawnedTransforms = new NativeArray<TransformHandle>(SpawnCount, Allocator.Persistent);

        // Create transforms and assign random start positions
        for (int i = 0; i < SpawnedTransforms.Length; i++)
        {
            TransformHandle transformHandle = new GameObject($"Transform{i}").transformHandle;
            SpawnedTransforms[i] = transformHandle;
            transformHandle.position = Random.NextFloat3(new float3(-100f), new float3(100f));
        }
    }

    void OnDestroy()
    {
        if (SpawnedTransforms.IsCreated)
        {
            SpawnedTransforms.Dispose();
        }
    }

    void Update()
    {
        // Single Burst-compiled call: reads positions, computes movement, and writes new positions. No manual copying needed.
        TransformHandleMoveExampleUtils.ComputeAndApplyRandomMovements(ref SpawnedTransforms, ref Random, 1f * Time.deltaTime);
    }
}


[BurstCompile]
public static class TransformHandleMoveExampleUtils
{
    [BurstCompile]
    public static void ComputeAndApplyRandomMovements(ref NativeArray<TransformHandle> transforms,
        ref Unity.Mathematics.Random random, float movementMagnitude)
    {
        for (int i = 0; i < transforms.Length; i++)
        {
            // TransformHandle positions can be read and written directly in Burst-compiled code
            TransformHandle transformHandle = transforms[i];
            float3 movement = math.normalizesafe(transforms[random.NextInt(0, transforms.Length)]
                .position - transformHandle.position) * movementMagnitude;
            transformHandle.position = transformHandle.position + (Vector3)movement;
        }
    }
}
```

### Implementation using Transform API with Burst

With the `Transform` API, you must split the operation into three phases:

1. Copy transform positions from `Transform` components into a `NativeArray` (non-Burst code).
2. Perform calculations on the copied data (Burst-compiled code).
3. Copy the results back to the `Transform` components (non-Burst code).

This approach requires maintaining a separate `NativeArray<float3>` buffer and performing two copy operations every frame, which adds overhead and increases code complexity.

```csharp
using Unity.Burst;
using Unity.Collections;
using Unity.Mathematics;
using UnityEngine;

public class TransformMoveExample : MonoBehaviour
{
    public int SpawnCount = 1000;
    // Transform API cannot be accessed from Burst-compiled code
    public Transform[] SpawnedTransforms;
    // Separate data buffer required to connect Transform and Burst
    public NativeArray<float3> Positions;
    public Unity.Mathematics.Random Random;

    void Start()
    {
        Random = Unity.Mathematics.Random.CreateFromIndex(0);

        // Initialize managed Transform array and native float3 array
        // (extra overhead compared to TransformHandle)
        SpawnedTransforms = new Transform[SpawnCount];
        Positions = new NativeArray<float3>(SpawnCount, Allocator.Persistent);

        // Create transforms and assign random start positions
        for (int i = 0; i < SpawnedTransforms.Length; i++)
        {
            SpawnedTransforms[i] = new GameObject($"Transform{i}").transform;
            SpawnedTransforms[i].position = Random.NextFloat3(new float3(-100f), new float3(100f));
        }
    }

    void OnDestroy()
    {
        if (Positions.IsCreated)
        {
            Positions.Dispose();
        }
    }

    void Update()
    {
        // 1) Copy Transform positions into NativeArray (Transform cannot be accessed in Burst).
        for (int i = 0; i < SpawnedTransforms.Length; i++)
        {
            Positions[i] = SpawnedTransforms[i].position;
        }

        // 2) Burst-compiled compute on the copied data.
        TransformMoveExampleUtils.ComputeRandomMovements(ref Positions, ref Random, 1f * Time.deltaTime);

        // 3) Copy results back to each Transform to update scene state.
        for (int i = 0; i < SpawnedTransforms.Length; i++)
        {
            SpawnedTransforms[i].position = Positions[i];
        }
    }
}

[BurstCompile]
public static class TransformMoveExampleUtils
{
    [BurstCompile]
    public static void ComputeRandomMovements(ref NativeArray<float3> positions, ref Unity.Mathematics.Random random, float movementMagnitude)
    {
        for (int i = 0; i < positions.Length; i++)
        {
            // Calculate movement from copied position data
            float3 movement = math.normalizesafe(positions[random.NextInt(0, positions.Length)] - positions[i]) * movementMagnitude;
            // Updated positions will be copied back to Transforms
            positions[i] += movement;
        }
    }
}
```

## Additional resources

- Introduction to TransformHandle API
- TransformHandle API examples
- [Burst compiler documentation](http://docs.unity3d.com/Packages/com.unity.burst@latest)
