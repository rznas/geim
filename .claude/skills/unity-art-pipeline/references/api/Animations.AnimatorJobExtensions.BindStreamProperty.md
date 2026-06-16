<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorJobExtensions.BindStreamProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator instance that calls this method. |
| transform | The Transform to target. |
| type | The Component type. |
| property | The property to bind. |
| isObjectReference | isObjectReference need to be set to true if the property to bind does animate an Object like SpriteRenderer.sprite. |

### Returns

**PropertyStreamHandle** Returns the PropertyStreamHandle that represents the new binding.

### Description

Create a PropertyStreamHandle representing the new binding on the Component property of a Transform already bound to the Animator.

You can bind a property that doesn't exist yet. For example you can bind a property on a MonoBehaviour that will be added later dynamically. In this case, you need to manually resolve the handle after adding the MonoBehaviour on the GameObject, using ResolveAllStreamHandles.
