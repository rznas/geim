<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.PreSubmitCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| list | The list of Assets that will be passed on to the Checkout command. Assets can be removed from or added to this list in the callback. |
| changesetID | Set this to the ID of an existing changeset to submit the listed Assets in that changeset. If no changeset matching the specified ID is found, the submission will be blocked and an error message raised. |
| changesetDescription | If you wish to submit the Assets out in a new changeset, set this description string and a new changeset will be created and the Assets submitted there. |

### Description

Delegate for a user-supplied callback to be called before Version Control Submit.

A PreSubmitCallback may be set to enable the following: Permit the submission by returning true from the callback. Prevent the submission by returning false from the callback. Modify the list of Assets to be submitted (you may wish to prevent certain Assets being submitted, or ensure that certain Assets are submitted). Redirect the submission to an existing changeset. Create a new changeset to submit the Assets out in.

Notes: The AssetList is absolute - Assets and/or their Meta Files will not be automatically added after this callback returns but may be filtered out if they are not in the correct state to be submitted. You must not call any code inside this callback that results in a further submit operation being created, as this will lead to potentially infinite recursion. Setting both changesetID and changesetDescription will cause the changeset description of an existing changeset to be changed during submission. Please be aware of Domain Reloads. If your Assemblies are reloaded at any point then Provider.preSubmitCallback will need to be set again with your chosen callback.
