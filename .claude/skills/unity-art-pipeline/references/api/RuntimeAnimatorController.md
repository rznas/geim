<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimeAnimatorController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A representation of the Animator Controller, optimized for runtime.

At runtime, Unity replaces the AnimatorController class with this optimized runtime class. Access to Editor functions, such as modifying the structure of an Animator Controller, are restricted.

This optimized class provides the following different ways to access and modify an Animator Controller at runtime:

- Store the reference of an Animator Controller so you can replace the Animator Controller of an Animator. This is useful for modifiying the structure of an Animator Controller at runtime. Use Animator.runtimeAnimatorController to access the controller to be replaced.
- Create an AnimatorOverrideController that you can use to override the Animation Clips associated with an Animator Controller. This is more efficient than replacing a controller because only the clips are updated. The Animator Override Controller is based on the Runtime Animator Controller that initializes it. Additional resources: AnimatorOverrideController.runtimeAnimatorController.

The following example demonstrates how to spawn GameObjects at runtime. Each GameObject is animated with different Animator Controllers.

```csharp
// This script spawns random zombie prefabs at runtime. The Animator component for
// each zombie is assigned a different Animator Controller based on the zombie type.

using UnityEngine;

public class RandomZombieSpawner : MonoBehaviour
{
    // The prefab of the zombie Game Object containing an Animator component.
    public GameObject zombiePrefab;

    // Store the references to the Animator Controllers for the different zombie types that can be spawned
    public RuntimeAnimatorController standardZombieAnimator;
    public RuntimeAnimatorController bigZombieAnimator;
    public RuntimeAnimatorController smallZombieAnimator;

    void Start()
    {
        for (var i = 0; i < 10; i++)
        {
            SpawnZombie();
        }
    }

    public void SpawnZombie()
    {
        // Instantiate a new zombie Game Object at a random position
        GameObject zombie = Instantiate(zombiePrefab, new Vector3(Random.Range(0f, 10f), 0, Random.Range(0f, 10f)), Quaternion.identity);
        Animator animator = zombie.GetComponent<Animator>();

        // Randomly determine the type of zombie and assign its Animator with its corresponding Animator Controller.
        var randomValue = Random.Range(0f, 1f);
        if (randomValue <= 0.3f)
        {
            animator.runtimeAnimatorController = bigZombieAnimator;
            zombie.transform.localScale = new Vector3(1.5f, 1.5f, 1.5f);
        }
        else if (randomValue <= 0.6f)
        {
            animator.runtimeAnimatorController = smallZombieAnimator;
            zombie.transform.localScale = new Vector3(0.75f, 0.75f, 0.75f);
        }
        else
        {
            animator.runtimeAnimatorController = standardZombieAnimator;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| animationClips | Retrieves all AnimationClip used by the controller. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
