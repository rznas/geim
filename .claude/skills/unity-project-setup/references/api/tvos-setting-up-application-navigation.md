<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/tvos-setting-up-application-navigation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Setting up app navigation from the Unity UI

You must provide custom visual resources to the Apple Game Center for its native leaderboard **UI**. Here’s how to set them up in Xcode:

1. Open the Input window in the Unity Editor. Find the first occurrence of the **Submit** virtual input, expand it, and change its **Alt Positive Button** to **joystick button 14**.
2. Select the EventSystem appObject in your ****Scene****. In the ****Inspector****, find the EventSystem component, and set a reference to the UI appObject that should receive initial focus in the **First Selected** property. You might need to enable the **Force input module** property in the **Standalone Input Module** component.#

**Note**: Apple TV Remote navigation doesn’t work while your app is running in the TV Simulator.
