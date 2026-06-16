<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/building-blocks-vivox-prerequisites.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Vivox Building Block prerequisites

To use the Vivox Building Block, set up the following in your project:

- A [Unity project](https://docs.unity.com/en-us/hub/project-create) (6.0 LTS or later is recommended).
- Access to the [Unity Dashboard](https://cloud.unity.com/) and a [Unity Organization](https://docs.unity.com/en-us/cloud/organizations).
- Editor sign-in with a user that has [access to the organization and project](https://support.unity.com/hc/en-us/articles/29991845748884-How-can-I-manage-users-access-to-projects-in-my-Unity-organization#:~:text=Cause:,that%20require%20this%20specific%20role.).
- The Vivox service is enabled in the Unity Dashboard for your project.
- Network access to [Unity Services](https://services.docs.unity.com/docs/) endpoints.
- Basic familiarity with UI Toolkit and Prefabs (optional, but helpful).

## How the Vivox Building Block works

The Vivox Building Block is designed for flexible, modular integration of voice and text communication into your Unity project.

### Service initialization

Before any Vivox features can function make sure the following steps are already completed:

- Unity Services Core must be initialized
- The player must be authenticated
- The Vivox SDK must be initialized.

The Building Block includes a `VivoxServiceInitializer` prefab under **Assets** > **Blocks** > **Vivox** > **Prefabs** that handles all three steps in one drop-in GameObject.

The prefab contains the following components:

- `ServicesInitialization`: Initializes Unity Services Core on start.
- `PlayerAuthentication`: Signs the player in anonymously once Core is ready.
- `VivoxServiceInitializer`: Waits for Core to finish, then initializes the Vivox SDK.

Add the VivoxServiceInitializer prefab to your **scene** for a zero-configuration setup. If your project already handles service initialization and authentication through its own flow, you can omit the prefab. The Vivox UI components will work with any initialization approach as long as all three steps complete before a channel is joined. The included scenes all leverage the VivoxServiceInitializer prefab.

### Implementation: C# scripts, visual elements, and data separation

A key architectural principle of the Building Block is the clear separation between visual representation and underlying data and logic.

- VisualElement **scripts**: Extend VisualElement or its derivatives and are responsible for rendering the UI components that players interact with. They expose a UxmlAttribute for a `ChannelSettings` reference that is propagated to the data class.
- Data scripts: Manage the actual Vivox state, interact with the Vivox SDK through a `VivoxObserver`, and handle logic related to channel and participant events.

### ChannelSettings ScriptableObject and UXML binding

Channel behaviour is configured through a ChannelSettings ScriptableObject, which controls the channel type (Group or Echo) and chat capability (AudioOnly, TextOnly, or TextAndAudio). Two presets are included under **Assets** > **Blocks** > **Vivox** > **Settings**: `ChatSettings_Group` for standard multiplayer voice and text, and `ChatSettings_Echo` for loopback testing. To create a custom preset, right-click in the **Project** window and select **Create** > **Services** > **Blocks** > **Vivox** > **ChannelSettings**.

**Note**: Positional (3D) channels are not currently supported by this Building Block. Positional audio requires additional configuration through the Vivox SDK directly.

The preset is connected to your scene through UI Toolkit’s data binding system. In the UI Builder, select the root VisualElement of your scene’s UXML and set its Data Source to your chosen ChannelSettings asset. The settings propagate automatically to the JoinChannel component from there, no code changes needed.

## Using Multiplayer Play Mode with your Building Blocks

You can use Unity’s Multiplayer Play Mode (MPPM) to test multiplayer games with multiple **virtual players**.

### Install Multiplayer Play Mode

To begin testing your multiplayer functionality, install the Multiplayer Play Mode package as follows:

1. From the main menu, select **Window** > **Package Management** > **Package Manager**.
2. Select **Unity Registry**.
3. Search for the Multiplayer Play Mode package, then select **Install**.

Unity’s Play mode uses the **Main Editor Player** to test your gameplay. By adding the Multiplayer Play Mode package, you can enable up to three additional Editor instances for a total of four players to test projects with multiple players.

You must enable virtual players before you enter Play mode.

### Enable additional Editor instances

To enable additional Editor instances for Play mode, do the following:

1. If you haven’t done so already, create your Play Mode Scenario.
2. Select the scenario that you’ve created, or one that already exists.
3. Editor and additional Editor instances are displayed on the right-hand side of the window.
4. If none are showing, ensure that the checkbox next to Editor is selected.
5. To add more additional Editor instances, click the + button under Additional Editor Instances.

## Additional resources

- [Vivox Unity SDK documentation](https://docs.unity.com/vivox-unity)
- UI Toolkit
- [Unity Authentication](https://docs.unity.com/authentication/get-started)
- [Multiplayer Play Mode](https://docs.unity3d.com/Packages/com.unity.multiplayer.playmode@latest)
