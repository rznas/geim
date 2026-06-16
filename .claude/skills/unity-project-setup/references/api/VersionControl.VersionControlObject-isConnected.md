<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlObject-isConnected.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tests whether the VersionControlObject is connected to an underlying version control system.

There are various reasons why your VersionControlObject may not be connected. For example:

- Your VCS might need to be configured before establishing connection.
- OnActivate might start a background thread that takes some time to connect.
- The connection might get broken because of network issues.

In all these cases this property will return **false**.

```csharp
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject, ISettingsInspectorExtension
{
    bool m_Active;
    bool m_IsConnected;    public override bool isConnected => m_IsConnected;    public void OnEnable()
    {
        // m_Active will be false if CustomVersionControlObject has just been activated.
        // It will be true if OnEnable was called after domain reload. In that case we want to reestablish connection.
        if (m_Active)
            Connect();
    }    public void OnDisable()
    {
        // Let's assume that domain reload kills connection to underlying VCS.
        Disconnect();
    }    public override void OnActivate()
    {
        m_Active = true;
        // Let's try to automatically establish connection to underlying VCS.
        // It will not work the first time CustomVersionControlObject is activated because username is not configured yet.
        // However it will work on subsequent Unity startup.
        Connect();
    }    public override void OnDeactivate()
    {
        m_Active = false;
        Disconnect();
    }    public void OnInspectorGUI()
    {
        var oldUsername = EditorUserSettings.GetConfigValue("vcCustomUsername");
        var newUsername = EditorGUILayout.TextField("Username (hint: TestUser):", oldUsername);
        if (newUsername != oldUsername)
            EditorUserSettings.SetConfigValue("vcCustomUsername", newUsername);        EditorGUILayout.LabelField("Connected:", m_IsConnected ? "Yes" : "No");        if (GUILayout.Button("Connect"))
            Connect();
    }    void Connect()
    {
        var username = EditorUserSettings.GetConfigValue("vcCustomUsername");
        m_IsConnected = username == "TestUser";
    }    void Disconnect()
    {
        m_IsConnected = false;
    }
}
```

Additional resources: VersionControlObject, ISettingsInspectorExtension.
