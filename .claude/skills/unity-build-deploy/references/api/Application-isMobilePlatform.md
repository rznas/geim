<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-isMobilePlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Identifies whether the current Runtime platform is a known mobile platform.

Currently this returns true if the application is running on Android, iOS, or WSA. When targeting WebAssembly and running in a web browser, this property might return "true" or "false", depending on whether the current browser is running on a mobile device. Due to privacy and anonymization reasons, this property might not always report accurate information on all web browsers.

**Note**: On Universal Windows Platform, tablets are treated as desktop machines, therefore, this property returns true only when running on phones and IoT device family devices.
