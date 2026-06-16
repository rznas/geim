<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/create-vulkan-device-filtering-asset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a Vulkan Device Filtering Asset

To create a Vulkan Device Filtering asset:

1. In your Unity project, navigate to the main menu.
2. Select **Assets** > **Create** > **Rendering** > **Device Filters** > **Vulkan Device Filter**.

Unity creates the Vulkan Device Filtering Asset in the **Assets** folder with the file extension `.vulkandevicefilter`.

Each asset displays three filter lists in the ****Inspector**** window: **Allow Filter List**, **Deny Filter List**, and **Preferred Graphics Jobs Filter List**. The **Deny Filter List** includes Android device specifications that Unity restricts by default from using the Vulkan API. If your application performs better with these device specifications, you can override those by removing from the list.

## Additional resources

- Introduction to Vulkan Device Filtering Asset
- Configure Vulkan API usage
- Configure graphics jobs mode on Vulkan
