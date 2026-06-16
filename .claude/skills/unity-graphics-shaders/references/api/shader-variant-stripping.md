<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-variant-stripping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Reduce shader variants

You can prevent shader variants from being compiled. This is called **stripping**. Stripping unneeded variants can greatly reduce build times, file size, **shader** loading times, and runtime memory usage. In larger projects, or projects with complex shaders, this is a very important consideration.

**Note:** For information about shader keywords in Shader Graph, refer to Introduction to keywords in Shader Graph.

**Important**: When you reduce shader variants, Unity might strip shader variants your built project needs. To check how many shader variants your project has, enable strict shader variant matching, otherwise Unity might replace missing shader variants with others. For more information, refer to Check how many shader variants you have.

## Limit or remove shader variants by keyword

To reduce the number of shader variants Unity compiles, use the Shader Build Settings in the Graphics settings window.

Follow these steps:

1. From the main menu, go to **Edit** > **Project Settings** > **Graphics**.
2. In the **Shader Build Settings** section, select the **Add** (**+**) button.
3. Add the keyword set you want to change.
4. Use spaces to separate keywords in the set, for example `FOG_LINEAR FOG_EXP FOG_EXP2`.
5. Enter all the keywords in the set, including `_` if it exists.

For which keywords Unity uses in prebuilt shaders in the Universal **Render Pipeline**, refer to Strip feature shader variants.

You can then do one of the following:

- To limit the number of shader variants, set **Type Override** to either `shader_feature` or `dynamic_branch`. For more information about choosing a type, refer to How Unity compiles branching shaders.
- To exclude shader code for the keywords in the build, select the foldout (triangle). Unity displays a checkbox for each keyword. To compile shader code for a keyword, enable its checkbox.

Select **Apply** to apply the changes. To remove a keyword set, select the **Remove** (**-**) button.

To customize shader variants for different platforms, use a **build profile**. Each build profile you create has its own **Shader Build Settings** section that overrides the settings in the Graphics settings window. For more information, refer to Override settings with build profiles.

## Reduce shader variants using other settings

You can also do the following to reduce or remove shader variants:

- Strip certain shader variants in the **Shader Stripping** section.
- If you use the Universal Render Pipeline (URP), refer to Reducing shader variants in URP.
- If you use the High Definition Render Pipeline (HDRP), refer to Reduce shader variants in HDRP.
- If you use the Built-In Render Pipeline, ensure your Tier settings are identical unless you need them to be different. For more information, refer to Graphics tiers.

## Reduce shader variants using Editor scripts

For shader variants that you can’t strip in other ways, you can use the following APIs in an Editor script to perform build-time stripping:

- IPreprocessShaders.OnProcessShader: receive a callback before Unity compiles a graphics shader Pass into a build.
- IPreprocessComputeShaders.OnProcessComputeShader: receive a callback before Unity compiles a compute shader into a build.

For more information on this subject, refer to [Stripping scriptable shader variants](https://unity.com/blog/engine-platform/stripping-scriptable-shader-variants)

## Avoid removing shader variants your build uses

If you strip a shader variant that a Material needs at runtime, Unity tries to choose a similar shader variant that’s available. To avoid this, use the following approaches:

- Check what shader variants you have to help you see which shader variants and keyword combinations Materials need at runtime.
- Add shaders to the **Always Included Shaders** list in Graphics settings.
- If you use a `shader_feature` keyword, don’t use the keyword to change which code branch executes at runtime.

## Additional resources

- Troubleshooting shader duplication from AssetBundles
