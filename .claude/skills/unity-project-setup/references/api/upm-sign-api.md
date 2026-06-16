<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-sign-api.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Sign a package using the scripting API

Pack and sign your Unity Package Manager (UPM) package so it’s ready for distribution and compatible with Unity’s package signature ecosystem.

If you use the scripting API to process packages, you can use the `Client.Pack` method to create a signed package. For other methods, refer to Methods for signing packages.

One of `Client.Pack` method’s parameters is the ID of the organization that owns the package.

Follow these steps to get the organization ID and call the `Client.Pack` method:

1. Go to the [Unity Cloud Dashboard](https://cloud.unity.com/account/my-organizations) and select the organization you want to use to sign your package. You can also select the link for your account in the top right corner of the dashboard and select **Switch organization** for the intended organization, then open the menu again and select **Manage organization**.  **Note**: For large projects whose contributors span multiple organizations, be sure to select the wider organization (or company-wide organization). If that organization doesn’t exist yet, refer to Considerations for companies with multiple organizations.
2. From the **My organizations** page (or the **Organization Settings** page), locate the **Organization ID** field.
3. Copy the **Organization ID** value.
4. Make sure you’re signed into the Unity Editor as a member of the organization from the previous step.
5. Call the Client.Pack method and include organization ID that you copied in a previous step.

## Additional resources

- Introduction to package signatures
- Package creation
- Methods for signing packages
