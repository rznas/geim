<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IUnityLinkerProcessor.GenerateAdditionalLinkXmlFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| report | The current built report. |
| data | Information about the current run of UnityLinker. |

### Returns

**string** The file path to the generated link.xml file. If the path is relative, GenerateAdditionalLinkXmlFile combines it with the working directory to make an absolute path.

### Description

Generates additional link.xml files for preserving additional types and their members.
