<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings.SetScreenToPanelSpaceFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| screenToPanelSpaceFunction | The translation function. Set to `null` to revert to the default behavior. |

### Description

Sets the function that handles the transformation from screen space to panel space. For overlay panels, this function returns the input value.

If the panel's targetTexture is applied to 3D objects, use a function that raycasts against MeshColliders in the Scene. The function can first check whether the GameObject that the ray hits has a MeshRenderer with a shader that uses this panel's target texture. It can then return the transformed `RaycastHit.textureCoord` in the texture's pixel space. Return a coordinate outside the panel to skip incoming pointer events if the ray doesn't hit a valid target or location.

 If the panel contains elements with 3-D transformations that make them overflow forward or backward out of the panel's surface, use the other PanelSettings.SetScreenToPanelSpaceFunction3D method instead.

```csharp
#if Include_UITextureProjection_Sample
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;namespace Samples.Runtime.Rendering
{
    public class UITextureProjection : MonoBehaviour
    {
        public Camera m_TargetCamera;        /// <summary>
        /// When using a render texture, this camera will be used to translate screencoodinates to the panel's coordinates
        /// </summary>
        /// <remarks>
        /// If none is set, it will be initialized with Camera.main
        /// </remarks>
        public Camera targetCamera
        {
            get
            {
                if (m_TargetCamera == null)
                    m_TargetCamera = Camera.main;
                return m_TargetCamera;
            }
            set => m_TargetCamera = value;
        }        public PanelSettings TargetPanel;        private Func<Vector2, Vector2> m_DefaultRenderTextureScreenTranslation;        void OnEnable()
        {
            if (TargetPanel != null)
            {
                if (m_DefaultRenderTextureScreenTranslation == null)
                {
                    m_DefaultRenderTextureScreenTranslation = (pos) => ScreenCoordinatesToRenderTexture(pos);
                }                TargetPanel.SetScreenToPanelSpaceFunction(m_DefaultRenderTextureScreenTranslation);
            }
        }        void OnDisable()
        {
            //we reset it back to the default behavior
            if (TargetPanel != null)
            {
                TargetPanel.SetScreenToPanelSpaceFunction(null);
            }
        }        /// <summary>
        /// Transforms a screen position to a position relative to render texture used by a MeshRenderer.
        /// </summary>
        /// <param name="screenPosition">The position in screen coordinates.</param>
        /// <param name="currentCamera">Camera used for 3d object picking</param>
        /// <param name="targetTexture">The texture used by the panel</param>
        /// <returns>Returns the coordinates in texel space, or a position containing NaN values if no hit was recorded or if the hit mesh's material is not using the render texture as their mainTexture</returns>
        private Vector2 ScreenCoordinatesToRenderTexture(Vector2 screenPosition)
        {
            var invalidPosition = new Vector2(float.NaN, float.NaN);            screenPosition.y = Screen.height - screenPosition.y;
            var cameraRay = targetCamera.ScreenPointToRay(screenPosition);            RaycastHit hit;
            if (!Physics.Raycast(cameraRay, out hit))
            {
                return invalidPosition;
            }            var targetTexture = TargetPanel.targetTexture;
            MeshRenderer rend = hit.transform.GetComponent<MeshRenderer>();            if (rend == null || rend.sharedMaterial.mainTexture != targetTexture)
            {
                return invalidPosition;
            }            Vector2 pixelUV = hit.textureCoord;            //since y screen coordinates are usually inverted, we need to flip them
            pixelUV.y = 1 - pixelUV.y;            pixelUV.x *= targetTexture.width;
            pixelUV.y *= targetTexture.height;            return pixelUV;
        }
    }
}
#endif
```
