<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/embedded-linux-deploy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Deploy an Embedded Linux project

On the Embedded Linux player, Unity uses SDL2 to handle keyboard, mouse, and controller input to interact with the Player window. Depending on the graphics API used, it requires SDL to dynamically load `libEGL` and `libGLESv2` for OpenGL ES, or `libvulkan` for Vulkan from the user space.

## Setup for [Wayland](https://wiki.archlinux.org/title/Wayland)

Although this setup assumes that you’re using [Weston](https://gitlab.freedesktop.org/wayland/weston) (the reference Wayland server), you can use the same setup with slight modifications for another compositor.

## Prerequisites

This assumes that you have a Wayland compositor (Weston) running, which exports the Wayland socket in the directory that the environment variable `XDG_RUNTIME_DIR` is linked to.

### Setup on Desktop shell

To deploy your project on desktop shell:

1. Verify that the environment variable `XDG_RUNTIME_DIR` is set to the correct directory. If not, then run `export XDG_RUNTIME_DIR=<dir>` with the correct directory (`/run/user/1000/`is the default for a Weston installation).
2. Run Unity Player.

### Setup on IVI-shell extension

You can deploy your project using IVI-shell extension, which is an alternative shell extension for Weston.

1. Set up IVI Surface IDs that the Unity Player needs to use with the environment variable `UNITY_IVI_SURFACE_IDS`. If this isn’t set, the Unity Player uses ID `4711` and upwards for the newly created surfaces (for example, Unity Display 1 will use 4711, Unity Display 2 will use 4712 etc.).
2. **Note**: The environment variable expects a comma-separated list of IDs. For example, `export UNITY_IVI_SURFACE_IDS=100,200,300 uses ID` `100` for Unity Display 1, `200` for Unity Display 2, etc..
3. If you’re only using a single display output, a single ID is sufficient. For example, export `UNITY_IVI_SURFACE_IDS=100`.
4. Verify that the environment variable `XDG_RUNTIME_DIR`is set to the correct directory. If this isn’t set, run `export XDG_RUNTIME_DIR=<dir>` with the correct directory (`/run/user/1000/` is the default for a Weston installation).
5. Run the Unity Player.
6. Use the following steps to set up an IVI surface for Unity (example, `weston` to `fullscreen map` surface).
  1. Create IVI Layer. `LayerManagerControl create layer 0 <display-width> <display-height>`
  2. Add Layer on Screen. `LayerManagerControl set screen 0 render order 0`
  3. Add Unity Player Surface on Layer. `LayerManagerControl set layer 0 render order <surface-id>`
  4. Add Surface Source Region. `LayerManagerControl set surface <surface-id> source region 0 0 <display-width> <display-height>`
  5. Add Surface Destination Region. `LayerManagerControl set surface <surface-id> destination region 0 0 <display-width> <display-height>`
  6. Add Layer Visibility. `LayerManagerControl set layer 0 visibility 1`
  7. Add Surface Visibility. `LayerManagerControl set surface <surface-id> visibility 1`

Unity Player appears on screen.

## Display configuration using environment variables

When deploying your application on Embedded Linux, you can use the following environment variables to configure the display surface and input regions.

### Configure surface sizes with UNITY_IVI_EXPORT_DISPLAYS

By default, Unity creates surfaces of the same size as the physical displays. If you want to use surfaces other than physical displays, such as for rendering multiple surfaces to one screen, use the environment variable `UNITY_IVI_EXPORT_DISPLAYS`.

For example, `export UNITY_IVI_EXPORT_DISPLAYS=1024x768@60,1920x1080@60`.

This defines the following surface sizes for Unity displays:

- Unity Display 1: `1024x768`
- Unity Display 2: `1920x1080`

Both displays will use a refresh rate of 60 Hz.

**Note**: You can omit `@60` and use `export UNITY_IVI_EXPORT_DISPLAYS=1024x768,1920x1080` because the refresh rate of `60` is automatically assumed.

### Configure input regions with UNITY_SURFACE_INPUT_REGIONS

Use the `UNITY_SURFACE_INPUT_REGIONS` environment variable to define a rectangular input region relative to the Unity application Wayland surface, where (0,0) is the top-left corner of the surface. Only the area defined as the input region receives user inputs, such as touch or mouse clicks. Inputs outside the region pass through to any surface behind the Unity application.

Enter the input for the environment variable in `x<int>y<int>w<int>h<int>` format with no spaces. To define an input region, use the environment variable as follows:

`export UNITY_SURFACE_INPUT_REGIONS=x<int>y<int>w<int>h<int>`

Consider the following behavior when defining the input region:

- Negative input values (For example, `x-100`) are parsed without causing an error, but are treated as invalid. The input region isn’t applied.
- Inputs outside the visible surface region are applied, but a warning appears in the Unity **Player log**.
- Input regions with zero area are applied, but a warning appears in the Unity Player log.

#### Example

`export UNITY_SURFACE_INPUT_REGIONS=x50y50w100h100`

This defines an input region with:

- Top-left corner at (50,50) relative to the Unity Wayland surface (0,0)
- Width: 100
- Height: 100

If your Unity application runs on a `200x200` surface, using `UNITY_SURFACE_INPUT_REGIONS=x50y50w100h100` defines an input region as depicted in the following diagram:

For a Unity application running on multiple displays, define one input region per display by separating the arguments with commas, as follows:

`export UNITY_SURFACE_INPUT_REGIONS=x100y100w200h250,x0y0w500h500`

The first argument applies to Display 1 and the second to Display 2. You can specify additional regions for any other displays, if required.

## Additional resources

- Build and deliver for Embedded Linux
