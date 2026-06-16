<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImportAssetOptions.ForceSynchronousImport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Import all assets synchronously.

By default some assets can be imported asynchronously (e.g. scripts can be compiled in the background). In some cases all importing needs to be synchronous; use this flag then. For example, when importing a scripts + prefabs, scripts have to be fully compiled before Prefab is serialized, otherwise it might get old variables.

Additional resources: AssetDatabase.ImportAsset, AssetDatabase.Refresh.
