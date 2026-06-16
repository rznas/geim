# Mecanim animation: controllers, states, parameters, blend trees + driving from C#

Unity 6 (6000.x). Grounded in the embedded `references/api/` pages; not
compile-tested here (no Editor installed). Snippets are Unity's own example code.

## The model: clip → state → controller → parameter → C#

Source: `references/api/animation-mecanim.md`,
`animation-animator-controller.md`, `AnimationParameters.md`.

- An **AnimationClip** holds keyframed property changes over time (position,
  rotation, blend-shape weights, etc.). Imported FBX/glTF models bring their clips in
  with them; you can also author clips in the Animation window.
  (`references/api/AnimationClip.md`.)
- An **Animator Controller** is a **state machine**: states (each plays a clip or a
  blend tree), transitions between them with conditions, and **parameters**. From
  `animation-animator-controller.md`: "Use an Animator Controller to arrange and
  maintain a set of Animation Clips and associated Animation Transitions for a
  character or an animated GameObject."
- An **Animator** component on the GameObject runs a controller (and, for humanoids,
  an **Avatar**).
- From C# you **set parameters**; the controller's transitions/blend trees decide
  which clip(s) play. **You almost never play a clip directly.**

```
[C# script] --SetFloat/SetBool/SetTrigger--> [Parameters]
                                                  |
                                                  v
                       [Animator Controller: states + transitions + blend trees]
                                                  |
                                                  v
                                          [AnimationClips] --> Animator --> moves the model
```

## Parameters: the four types and the setters

Source: `references/api/AnimationParameters.md`.

| Type | Setter | Use for |
| --- | --- | --- |
| Float | `SetFloat` | continuous input (speed → blend tree) |
| Int | `SetInteger` | discrete state index |
| Bool | `SetBool` | a sustained on/off state (grounded, alive) |
| Trigger | `SetTrigger` / `ResetTrigger` | a one-shot event (jump, attack); auto-resets when a transition consumes it |

> "Parameters can be assigned values from a script using functions in the Animator
> class: SetFloat, SetInteger, SetBool, SetTrigger, and ResetTrigger."

The full multi-parameter example, verbatim:

```csharp
using UnityEngine;
using System.Collections;

public class SimplePlayer : MonoBehaviour {

    Animator animator;

    void Start () {
        animator = GetComponent<Animator>();
    }

    void Update () {
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");
        bool fire = Input.GetButtonDown("Fire1");

        animator.SetFloat("Forward",v);
        animator.SetFloat("Strafe",h);
        animator.SetBool("Fire", fire);
    }

    void OnCollisionEnter(Collision col) {
        if (col.gameObject.CompareTag("Enemy"))
        {
            animator.SetTrigger("Die");
        }
    }
}
```

### SetFloat — and the damped overload (smooth blends)

Source: `references/api/Animator.SetFloat.md`. Parameters: `name`/`id`, `value`,
optional `dampTime` and `deltaTime`. "Send float values to the Animator to affect
transitions… useful in animation cycles such as movement animations where you might
require the character to walk or run depending on the button pressure applied."

```csharp
// Verbatim shape from Animator.SetFloat.md.
m_Animator.SetFloat("horizontalSpeed", Input.GetAxis("Horizontal"));

// Damped overload — easings the value over dampTime seconds so a blend tree
// doesn't pop between idle/walk/run:
m_Animator.SetFloat("Speed", targetSpeed, 0.1f, Time.deltaTime);
```

### SetBool — sustained states

Source: `references/api/Animator.SetBool.md`. "Sets the value of the given
boolean parameter… Use this to trigger transitions between Animator states."

```csharp
m_Animator.SetBool("Jump", true);   // stays true until you set it false
```

### SetTrigger / ResetTrigger — one-shot actions

Source: `references/api/Animator.SetTrigger.md`. "Triggers have a `true` option
which automatically returns back to `false`" once a transition consumes it — perfect
for jump/attack. Reset it if you change your mind before it fires:

```csharp
// Verbatim shape from Animator.SetTrigger.md
if (Input.GetKey(KeyCode.UpArrow))
{
    m_Animator.ResetTrigger("Crouch");
    m_Animator.SetTrigger("Jump");
}
```

Read parameters back with `GetFloat` / `GetBool` (`references/api/Animator.GetBool.md`).

## Bypassing the parameters: Play / CrossFade (use sparingly)

You *can* jump straight to a state, but you give up the transition graph.

`Animator.Play(stateName/hash, layer, normalizedTime)` —
`references/api/Animator.Play.md`. Note the state name **includes the layer**:
`"Base Layer.Bounce"`. Cache the hash with `StringToHash`:

```csharp
// Verbatim from Animator.Play.md
[RequireComponent(typeof(Animator))]
public class AnimatorPlayExample : MonoBehaviour
{
    Animator m_Animator;
    int m_BounceStateHash;

    void Start()
    {
        m_Animator = GetComponent<Animator>();
        m_BounceStateHash = Animator.StringToHash("Base Layer.Bounce");
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
            m_Animator.Play(m_BounceStateHash, 0, 0.25f);  // start 25% in
    }
}
```

`Animator.CrossFade(stateName, normalizedTransitionDuration, layer, ...)` —
`references/api/Animator.CrossFade.md` — blends from the current state into the
named state over a normalized duration (use `CrossFadeInFixedTime` for seconds).
Same "include the layer name" rule. Prefer parameters + authored transitions for
locomotion; reach for `CrossFade`/`Play` for scripted one-offs.

## Querying current state

`Animator.GetCurrentAnimatorStateInfo(layerIndex)` returns an `AnimatorStateInfo`;
`.IsName("Jump")` tests it, `.speed`/`.length`/`.normalizedTime` read it
(`references/api/Animator.GetCurrentAnimatorStateInfo.md`,
`AnimatorStateInfo.IsName.md`):

```csharp
// Verbatim shape from Animator.GetCurrentAnimatorStateInfo.md
if (m_Animator.GetCurrentAnimatorStateInfo(0).IsName("Jump"))
    Debug.Log("Jumping");
```

## Blend trees (walk ↔ run, 8-way locomotion)

Source: `references/api/animation-blend-trees.md`. A blend tree is a single state
that blends several similar clips by parameter value:

- **1D blend** — one parameter (e.g. `Speed`: 0=idle, 0.5=walk, 1=run). The damped
  `SetFloat` overload above is what feeds it smoothly.
- **2D blend** — two parameters (e.g. `Forward`/`Strafe` for 8-direction movement),
  directional or cartesian.
- **Direct blend** — map parameters straight to child motion weights.

You drive a blend tree exactly like any other parameter — `SetFloat("Speed", v)`.
"a script can set a parameter to control a Blend Tree." (`AnimationParameters.md`.)

## Humanoid Avatar & retargeting

Source: `references/api/AvatarCreationandSetup.md`, `FBXImporter-Rig.md`.

The **Avatar** is how Unity identifies a model as humanoid and maps its bones to a
standard skeleton (head/arms/legs/body). "Because of the similarity in bone structure
between different humanoid characters, it is possible to map animations from one
humanoid character to another" — that's **retargeting**: configure each model's Avatar
(Rig tab → Humanoid), and one set of humanoid clips drives many models. Generic rigs
have no Avatar — they need only a Root node. (Import details in
`import_pipeline_and_meta.md`.)

## Reuse one controller across characters: Animator Override Controller

`AnimatorOverrideController` (`references/api/AnimatorOverrideController.md`) keeps
one state machine and swaps the *clips* per character variant — so all your enemies
share one controller graph but each plays its own attack/walk clips.

## Scaffold

`scripts/new_animator_driver.sh <ClassName> [dir]` writes the idiomatic
parameter-driven locomotion MonoBehaviour (Float `Speed` via the damped overload, Bool
`Grounded`, Trigger `Jump`, hashes cached with `StringToHash`). The parameter names in
the generated file must match the ones you create in the Animator Controller exactly.
