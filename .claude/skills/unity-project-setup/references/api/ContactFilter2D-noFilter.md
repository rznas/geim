<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactFilter2D-noFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a new contact filter with a state where it will not filter any contacts.

The returned filter has the following state:

- useTriggers = `true`
- useLayerMask = `false`
- layerMask = Physics2D.AllLayers

- useDepth = `false`
- useOutsideDepth = `false`
- minDepth = -Mathf.Infinity
- maxDepth = Mathf.Infinity

- useNormalAngle = `false`
- useOutsideNormalAngle = `false`
- minNormalAngle = `0.0f`
- maxNormalAngle = ContactFilter2D.NormalAngleUpperLimit.
