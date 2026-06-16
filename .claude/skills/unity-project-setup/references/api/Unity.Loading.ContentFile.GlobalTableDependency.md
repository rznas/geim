<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentFile.GlobalTableDependency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This ContentFile can be passed as a dependency to ContentLoadInterface.LoadContentFileAsync or ContentLoadInterface.LoadSceneAsync to indicate that the external file dependencies should be resolved through the global PersistentManager table. For example, this could be used when the ContentFile references a file loaded through the PersistentManager such as "unity default resources".
