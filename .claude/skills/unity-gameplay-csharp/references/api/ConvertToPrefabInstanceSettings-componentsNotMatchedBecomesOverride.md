<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ConvertToPrefabInstanceSettings-componentsNotMatchedBecomesOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If a Component is not matched up then it can become an added Component on the new Prefab instance. This property is only used when used together with ObjectMatchMode.ByHierarchy.

If this property is false then the Component will be deleted if it doesn't match a Component on the PrefabAsset. Additional resources: gameObjectsNotMatchedBecomesOverride, recordPropertyOverridesOfMatches.
