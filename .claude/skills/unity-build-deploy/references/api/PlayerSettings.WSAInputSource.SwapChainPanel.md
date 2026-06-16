<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSAInputSource.SwapChainPanel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that pointer input comes from the SwapChainPanel.

With this option, in a XAML application, Unity's UI thread receives all mouse, pen, and touch events that occur within the SwapChainPanel; Unity does not receive input that occurs outside the SwapChainPanel. This input method is useful when Unity does not occupy the entire window and there are other XAML elements present. In such a case, using this option separates input events to XAML and Unity so they don't interfere with each other. 
Unlike IndependentInputSource, this option still uses the UI thread to process events.
**Note**: D3D applications do not support this option.PlayerSettings.WSASupportedFileType.mem.xml.
