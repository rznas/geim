<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSAInputSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the input source from which a XAML application can receive pointer input events.

To receive input, Universal Windows Platform applications subscribe to various events, and with XAML builds you can register input events for alternative sources via the SwapChainPanel API. This only applies to mouse, pen, and touch events. Universal Windows Platform applications always take keyboard input from CoreWindow.
**Note**: These options are only applicable to XAML applications that use the SwapChainPanel; XAML applications that use D3D only support the CoreWindow input source. For more information, see [Microsoft's documentation](https://docs.microsoft.com/en-us/uwp/api/Windows.UI.Xaml.Controls.SwapChainPanel).

### Properties

| Property | Description |
| --- | --- |
| CoreWindow | Indicates that pointer input comes from CoreWindow. This is the default option. |
| IndependentInputSource | Indicates that pointer input comes from SwapChainPanel's core input object. |
| SwapChainPanel | Indicates that pointer input comes from the SwapChainPanel. |
