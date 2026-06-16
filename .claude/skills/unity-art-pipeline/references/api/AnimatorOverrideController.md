<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorOverrideController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface to control Animator Override Controller.

Animator Override Controller is used to override Animation Clips from a controller to specialize animations for a given Avatar. Swapping Animator.runtimeAnimatorController with an AnimatorOverrideController based on the same AnimatorController at runtime doesn't reset state machine's current state.

There are three ways to use the Animator Override Controller.
 **1. Create an Animator Override Controller in the Editor.**
 **2. Change one Animation Clip per frame at runtime (Basic use case).**
 In this case the indexer operator AnimatorOverrideController.this[string] could be used, but be careful as each call will trigger a reallocation of the animator's clip bindings.

```csharp
using UnityEngine;public class SwapWeapon : MonoBehaviour
{
    public AnimationClip[] weaponAnimationClip;    protected Animator animator;
    protected AnimatorOverrideController animatorOverrideController;    protected int weaponIndex;    public void Start()
    {
        animator = GetComponent<Animator>();
        weaponIndex = 0;        animatorOverrideController = new AnimatorOverrideController(animator.runtimeAnimatorController);
        animator.runtimeAnimatorController = animatorOverrideController;
    }    public void Update()
    {
        if (Input.GetButtonDown("NextWeapon"))
        {
            weaponIndex = (weaponIndex + 1) % weaponAnimationClip.Length;
            animatorOverrideController["shot"] = weaponAnimationClip[weaponIndex];
        }
    }
}
```

**3. Changing many Animation Clips per frame at runtime (Advanced use case).** 
 The AnimatorOverrideController.ApplyOverrides method is well suited for this case as it reduce the number of animator's clips bindings reallocation to only one per call.

```csharp
using UnityEngine;
using System.Collections.Generic;public class AnimationClipOverrides : List<KeyValuePair<AnimationClip, AnimationClip>>
{
    public AnimationClipOverrides(int capacity) : base(capacity) {}    public AnimationClip this[string name]
    {
        get { return this.Find(x => x.Key.name.Equals(name)).Value; }
        set
        {
            int index = this.FindIndex(x => x.Key.name.Equals(name));
            if (index != -1)
                this[index] = new KeyValuePair<AnimationClip, AnimationClip>(this[index].Key, value);
        }
    }
}public class Weapon
{
    public AnimationClip singleAttack;
    public AnimationClip comboAttack;
    public AnimationClip dashAttack;
    public AnimationClip smashAttack;
}public class SwapWeapon : MonoBehaviour
{
    public Weapon[] weapons;    protected Animator animator;
    protected AnimatorOverrideController animatorOverrideController;    protected int weaponIndex;    protected AnimationClipOverrides clipOverrides;
    public void Start()
    {
        animator = GetComponent<Animator>();
        weaponIndex = 0;        animatorOverrideController = new AnimatorOverrideController(animator.runtimeAnimatorController);
        animator.runtimeAnimatorController = animatorOverrideController;        clipOverrides = new AnimationClipOverrides(animatorOverrideController.overridesCount);
        animatorOverrideController.GetOverrides(clipOverrides);
    }    public void Update()
    {
        if (Input.GetButtonDown("NextWeapon"))
        {
            weaponIndex = (weaponIndex + 1) % weapons.Length;
            clipOverrides["SingleAttack"] = weapons[weaponIndex].singleAttack;
            clipOverrides["ComboAttack"] = weapons[weaponIndex].comboAttack;
            clipOverrides["DashAttack"] = weapons[weaponIndex].dashAttack;
            clipOverrides["SmashAttack"] = weapons[weaponIndex].smashAttack;
            animatorOverrideController.ApplyOverrides(clipOverrides);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| overridesCount | Returns the count of overrides. |
| runtimeAnimatorController | The Runtime Animator Controller that the Animator Override Controller overrides. |
| this[string] | Returns either the overriding Animation Clip if set or the original Animation Clip named name. |

### Constructors

| Constructor | Description |
| --- | --- |
| AnimatorOverrideController | Creates an empty Animator Override Controller. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyOverrides | Applies the list of overrides on this Animator Override Controller. |
| GetOverrides | Gets the list of Animation Clip overrides currently defined in this Animator Override Controller. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |
| animationClips | Retrieves all AnimationClip used by the controller. |

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
