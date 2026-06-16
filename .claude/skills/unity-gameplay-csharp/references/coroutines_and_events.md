# Coroutines, the Inspector & events

Unity 6 (6000.x). Doc-sourced from the embedded Manual/ScriptReference in
`references/api/`; not compile-tested here (no Editor installed).

Three things that make gameplay code react over time and across objects:
coroutines (do something over several frames), the Inspector serialization story
(`[SerializeField]`), and events (decoupled notifications).

---

## Coroutines

A coroutine is a method that can **suspend and resume across frames**. Source:
`api/Coroutines.md`. A normal method runs to completion inside one frame; a
coroutine can spread work over many (a fade, a timed sequence, polling, waiting
on a load).

> **Not a thread.** `api/Coroutines.md`: *"Don't confuse coroutines with threads.
> Synchronous operations that run within a coroutine still execute on the main
> thread."* A blocking call inside a coroutine still freezes the frame.

### Shape: `IEnumerator` + `yield return`

A coroutine returns `IEnumerator` and has at least one `yield return`. Execution
suspends at each `yield`. Verbatim from `api/Coroutines.md`:

```csharp
IEnumerator Fade()
{
    Color c = renderer.material.color;
    for (float alpha = 1f; alpha >= 0; alpha -= 0.1f)
    {
        c.a = alpha;
        renderer.material.color = c;
        yield return null;   // resume next frame
    }
}
```

`yield return null` resumes on the **next frame**. Other yield instructions:

- `yield return new WaitForSeconds(0.1f)` — resume after a delay (scaled by
  `Time.timeScale`).
- `yield return new WaitForSecondsRealtime(...)` — unscaled wall-clock wait
  (`api/WaitForSecondsRealtime.md`).
- `yield return StartCoroutine(Other())` — wait until another coroutine finishes
  (`api/MonoBehaviour.StartCoroutine.md`).

### Starting — a coroutine that is never started does NOTHING

This is the #1 coroutine mistake. Calling `Fade()` just creates the iterator; it
does not run. You must hand it to `StartCoroutine` (`api/Coroutines.md`):

```csharp
void Update()
{
    if (Input.GetKeyDown("f"))
    {
        StartCoroutine(Fade());
    }
}
```

`api/MonoBehaviour.StartCoroutine.md`: *"`StartCoroutine` returns upon the first
`yield return`."* So code after the `StartCoroutine(...)` call keeps running in
parallel.

### Stopping & gotchas

`api/Coroutines.md`:
- Stop explicitly with `StopCoroutine` / `StopAllCoroutines`.
- A coroutine also stops if the GameObject's `activeSelf` becomes `false`, or the
  MonoBehaviour is `Destroy`ed.
- **Disabling** the MonoBehaviour (`enabled = false`) does **not** stop coroutines.
- Performance: `yield return null` doesn't allocate, but `new WaitForSeconds(...)`
  does — cache reused wait objects; prefer one long-lived coroutine looping on
  `yield return null` over starting many short ones.

`Start` may itself be a coroutine (`IEnumerator Start()`) — see
`api/MonoBehaviour.Start.md`.

> Modern alternative: Unity also supports `async`/`await` via `Awaitable`
> (`api/Coroutines.md`). Coroutines remain the most common gameplay tool; reach
> for `Awaitable`/jobs only when you specifically need them.

---

## The Inspector & `[SerializeField]`

The Inspector shows/edits a component's **serialized fields**. The rule
(`api/SerializeField.md`): **Unity serializes `public` fields by default; to
serialize (and thus expose) a `private` field, add `[SerializeField]`.**

Verbatim from `api/SerializeField.md`:

```csharp
using UnityEngine;
public class SomePerson : MonoBehaviour
{
    //This field gets serialized because it is public.
    public string firstName = "John";

    //This field does not get serialized because it is private.
    private int age = 40;

    //This field gets serialized even though it is private
    //because it has the SerializeField attribute applied.
    [SerializeField]
    private bool hasHealthPotion = true;
}
```

**Why prefer `[SerializeField] private` over `public`:** you get the Inspector
slot (designers can tune it, prefab references can be wired) without exposing the
field to every other class for writing. Encapsulation + tunability. Use it for
prefab references, tuning values, scene object links.

Notes from `api/SerializeField.md`: this uses Unity's own serialization, not
.NET serialization; see "Serialization rules" for what's serializable (public &
`[SerializeField]` fields of supported types; not properties, not `static`, not
`readonly`). For polymorphic/interface references see `api/SerializeReference.md`.

---

## Events — decoupling who-fires from who-listens

Three mechanisms, from most-Unity to most-C#:

### 1. UnityEvent (wireable in the Inspector)

`UnityEvent` is a serializable event you can hook up **in the Inspector** (great
for designers / UI buttons) and also from code. `api/Events.UnityEvent_1.md`
(verbatim, one-arg generic form):

```csharp
using UnityEngine;
using UnityEngine.Events;
public class ExampleClass : MonoBehaviour
{
    UnityEvent<int> m_MyEvent;

    void Start()
    {
        if (m_MyEvent == null)
            m_MyEvent = new UnityEvent<int>();
        m_MyEvent.AddListener(DoSomething);
    }

    void Update()
    {
        if (Input.anyKeyDown && m_MyEvent != null)
            m_MyEvent.Invoke(5);
    }

    void DoSomething(int i)
    {
        Debug.Log("Callback called " + i);
    }
}
```

Add/remove listeners with `AddListener` / `RemoveAllListeners`
(`api/Events.UnityEvent_1.md`). Declare a `[SerializeField] public UnityEvent
onDeath;` field to expose the wiring slot in the Inspector.

### 2. Plain C# events / `Action` (code-to-code, fastest)

For pure-code decoupling (no Inspector wiring), use a standard C# event or
`Action`. This is ordinary C#, not a Unity API — fastest and allocation-light:

```csharp
using System;
public class Health : MonoBehaviour
{
    public event Action<int> Damaged;      // subscribers: Damaged += OnDamaged;

    public void Take(int amount)
    {
        Damaged?.Invoke(amount);           // null-safe: no subscribers => no-op
    }
}
```

> **Always unsubscribe** (`-=`) in `OnDisable`/`OnDestroy` for events on objects
> that outlive the subscriber, or you leak references and call into destroyed
> objects.

### 3. `SendMessage` / `BroadcastMessage` (avoid)

`api/MonoBehaviour.md` lists `SendMessage`/`BroadcastMessage` (call a method by
**string name** on a GameObject / its children). They are reflection-based, slow,
and not refactor-safe — prefer `GetComponent<T>()` + a direct call, a UnityEvent,
or a C# event.

### Invoke / InvokeRepeating (timed call by name)

`api/MonoBehaviour.md` also exposes `Invoke`, `InvokeRepeating`, `CancelInvoke`
(call a named method after a delay / repeatedly). They take a **string method
name**, so a coroutine or a `Timer` is usually clearer and refactor-safe.

---

## Hand-offs

- Lifecycle (`OnEnable`/`OnDisable` for subscribe/unsubscribe) →
  `lifecycle_and_components.md`.
- Wiring a `UnityEvent` to a UI Button → the `unity-ui-csharp` skill.
- Prefab references via `[SerializeField]` → `prefabs_and_scriptableobjects.md`.
