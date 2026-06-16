<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.PreCheckoutCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| list | The list of Assets that will be passed on to the Checkout command. Assets can be removed from or added to this list in the callback. |
| changesetID | Set this to the ID of an existing changeset to check out the listed Assets in that changeset. If no changeset matching the specified ID is found, the checkout will be blocked and an error message raised. Do not set both this and the changesetDescription parameter - this is not supported and an error will be raised. |
| changesetDescription | To check the Assets out in a new changeset, set this description string. This action creates a new changeset, where the Assets open. Do not set both this description string and the changesetID parameter. Setting both causes an error. |

### Description

Delegate for a user-supplied callback to be called before Version Control Checkout.

A PreCheckoutCallback may be set to enable the following: Permit the check out by returning true from the callback. Prevent the check out by returning false from the callback. Modify the list of Assets to be checked out (you may wish to prevent certain Assets being checked out, or ensure that certain Assets are checked out). Redirect the check out to an existing changeset. Create a new changeset to check the Assets out in.

Notes: The AssetList is absolute - Assets and/or their Meta Files will not be automatically added after this callback returns. Setting both a changesetID and a changesetDescription should ideally allow an existing changeset to be renamed (to change its description) but this is not currently supported. Attempting to set a changesetDescription when the VCS provider does not support changesets will raise an error. Check for support by calling Provider.hasChangelistSupport. You must not call any code inside this callback that results in a further check out operation being created, as this will lead to potentially infinite recursion. Be aware of Domain Reloads. If your Assemblies are reloaded at any point then you need to set Provider.preCheckoutCallback again with your chosen callback.

Additional resources: Provider.preCheckoutCallback, Provider.Checkout, AssetDatabase.MakeEditable.
