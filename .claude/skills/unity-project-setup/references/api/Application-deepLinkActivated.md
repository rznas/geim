<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-deepLinkActivated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The deep link URL that activated the application. |

### Description

This event is raised when an application running on Android, iOS, or the Universal Windows Platform (UWP) is activated using a deep link URL.

**Note**: When this delegate is called Application.absoluteURL property is also updated.

**Note**: This event never fires on the Web platform. This is because a Web browser page can't act as an application protocol handler for `unitydl://` links.
