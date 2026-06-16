<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings-serializeInlineMappingsOnOneLine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Forces Unity to write references and similar YAML structures on one line, which reduces version control noise.

When Unity reaches a line length of 80 characters it attempts to split the YAML data over multiple lines. To avoid unwanted version control changes, this setting forces Unity to ignore the 80 character check. Note: The Project Setting menu refers to this setting as **Reduce version control noise**.

 **Without setting**
 `m_MySerializedAssetReference: {fileID: 10304, guid: a2eb3ee376dd24a4f9221a30765d895b,`
 `type: 3}`

 **With setting**
 `m_MySerializedAssetReference: {fileID: 10304, guid: a2eb3ee376dd24a4f9221a30765d895b, type: 3}`
