<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/physics-remove-backend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Disable and strip the physics integration from your project

Disable and strip the physics integration SDK from your project to meet specific performance or feature requirements.

Unity supports a number of versatile and performant physics engine integrations. However, if your project doesn’t require physics simulation, you can disable and even remove the physics integration entirely from your project. This can result in a smaller build size for certain build platforms and more optimized resource usage. When you do, all physics-related functionality, such as physics APIs and components, no longer work in your project.

If you enabled **Strip Engine Code** in **Project settings**, you must set ****GameObject** SDK** in the **Physics** Project Settings **None** to strip the code of all built-in physics integrations alongside other engine code.

To strip the physics integration from your project:

1. Select **Edit > Project Settings** to open the Project Settings window.
2. Select the **Physics** tab.
3. In the **GameObject SDK** dropdown, select **None**.
4. Restart the Editor for your change to take effect.

## Additional resources

- Physics
- Physics integrations in Unity
- Physics project settings
