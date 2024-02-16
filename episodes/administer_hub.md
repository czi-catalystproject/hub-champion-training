(episode-admin)=
# Administering your hub

teaching: 0
exercises: 0

:::::{card} 
OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
Questions

- Who has control over access to a hub?
- What cloud computing resources can be acquired?
- What's happening in the cloud when running a server?

:::

:::{grid-item}
Objectives

- Control user access to a hub via GitHub Organisations and Teams
- Select the appropriate server resources for computational work (CPU, RAM)
- Stop and restart a server

:::

:::::

## Accessing the hub

Hub Champions can control access to the hub by adding users to their {ref}`GitHub Organization <glossary:github-org>` and {ref}`Team<glossary:github-team>`. Each hub user needs to [sign up](https://github.com/signup) for an individual account on GitHub.

A Hub Champion should have Owner permissions for their GitHub Organization in order to invite non-members to it. This does not automatically grant the user access to a hub. A member of a GitHub Organization can be added to a GitHub Team associated with the hub in order to log into the hub with their GitHub credentials.

:::{note}
Your GitHub Team is defined and specially linked to your hub when the hub was initally deployed. This information should be known to Hub Champions. If not, please contact your community representative who deployed the hub.
:::

Follow the guidance below to practise granting user access to the [Community Showcase Hub](https://showcase.2i2c.cloud/), specifically

- *adding* (but *not* removing for now) users to a GitHub Organization
- adding and removing users to and from a GitHub Team.

:::{danger}
Please refrain from removing other users from the GitHub Organization during the training! The steps in {ref}`Removing members from the organization <org-remove>` are for completeness when it comes to administering your own hub outside of the training.

:::

### Managing your GitHub Organization

- View a list of all of the GitHub Organizations that you are a member of by visiting [https://github.com/settings/organizations](https://github.com/settings/organizations).

:::{figure} ../media/episodes/administer_hub/gh-org-1.png
:width: 100%
:alt: Screenshot showing a list of GitHub Organizations on https://github.com/settings/organizations.

Screenshot showing an example list of GitHub Organizations on [https://github.com/settings/organizations](https://github.com/settings/organizations).
:::

- Click on the link to the [2i2c-community-showcase](https://github.com/2i2c-community-showcase) GitHub Organization (if you cannot see this link then please contact your instructor for access).

- Click on the *People* menu tab to view a list of current Organization members.

:::{figure} ../media/episodes/administer_hub/gh-org-2.png
:name: gh-org-people
:width: 100%
:alt: Screenshot showing a list of members of the 2i2c-community-showcase GitHub Organization.

Screenshot showing a list of [2i2c-community-showcase](https://github.com/orgs/2i2c-community-showcase/people) GitHub Organization members. The *People* tab menu is located at the top; the green *Invite member* button is located in the top right; the *Failed invitations* tab is located in the left sidebar and the *Member settings* ![member settings button](../media/episodes/administer_hub/gh-org-3.png) icon is located next to each member account.

:::

#### Invite non-members to the organization

Check that you have *Owner* permissions for this organization to invite non-members to it. If not, contact an owner of the organization who can give you *Owner* permissions.

- Invite a non-member to the organization by clicking the green *Invite member* button and searching by username, full name or email address.

  :::{tip}
  We recommend searching for and adding the `jnywong-test` username for the purposes of this training.
  
  :::

- The invited user will receive an email and GitHub notification inviting them to join the GitHub Organization.

  :::{warning}
  Invitations to join a GitHub Organization will expire after 7 days, after which you can retry or cancel the invitation by clicking the *Failed invitations* tab in the left sidebar (see screenshot above).
  
  :::

- Once the user has accepted, they will become visible in the list of Organization members in the *People* menu tab.

::::{dropdown} Removing members from the organization

:::{danger} 
Please refrain from removing other users from the GitHub Organization during the training! The steps in this section are for completeness when it comes to administering your own hub outside of the training.

:::

Members can be removed from the organization by going to the *People* menu tab (see {ref}`screenshot <gh-org-people>`).

- Click the ![member settings button](../media/episodes/administer_hub/gh-org-3.png) icon next to the member account you wish to remove.

- Select the *Remove from organization...* option.

  :::{figure} ../media/episodes/administer_hub/gh-org-4.png
  :name: org-remove
  :width: 40%
  :alt: Screenshot showing the *Remove from organization...* option.
  
  Screenshot showing the *Remove from organization...* option.
  
  :::

- Confirm removal by clicking the *Remove members* button.

  :::{figure} ../media/episodes/administer_hub/gh-org-5.png
  :width: 80%
  :alt: Screenshot showing the confirmation to *Remove members*.
  
  Screenshot showing the confirmation to *Remove members*.
  
  :::
::::
  
### Managing your GitHub Team

Add members to the GitHub Team associated with the hub so that users can log into the hub with their GitHub credentials.

- From the 2i2c-community-showcase [GitHub Organization page](https://github.com/2i2c-community-showcase/), click on the *Teams* menu tab.
- The GitHub Team that authorises access to the Community Showcase Hub is called [access-2i2c-showcase](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase). Click on it to see a list of members.

  :::{figure} ../media/episodes/administer_hub/gh-team-1.png
  :width: 100%
  :alt: Screenshot showing a list of members of the access-2i2c-showcase GitHub Team.
  
  Screenshot showing a list of [access-2i2c-showcase](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase) GitHub Team members.
  
  :::
  
- Invite a member of the organization to join the team by clicking the green *Add a member* button and searching by username, full name or email address.

  :::{tip}
  We recommend searching for and adding the `jmunroe-testuser` username for the purposes of this training. If they are already a member of the team, remove the account by following the steps in {ref}`Removing members from the team<team-remove>` and then add `jmunroe-testuser` back into the team again.
  
  :::
  
- The account will instantly appear in the list of team members and the user does not need to accept an invitation to join. The user may choose to leave the team by clicking the ![Leave team](../media/episodes/administer_hub/gh-team-2.png) button on the same page.

- The user can now log into the [Community Showcase Hub](https://showcase.2i2c.cloud) using their GitHub credentials 🎉

(team-remove)=
### Removing members from the team

Hub Champions can remove user access to a hub by removing their account from the GitHub Team.

  :::{figure} ../media/episodes/administer_hub/gh-team-3.png
  :width: 100%
  :alt: Screenshot showing how to remove a member from the access-2i2c-showcase GitHub Team.
  
  Screenshot showing how to remove a member from the [access-2i2c-showcase](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase) GitHub Team.
  
  :::

- From the [access-2i2c-showcase](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase) teams page, check the box next to the member account you wish to remove (in this case, `jmunroe-testuser` for the purposes of this training).
- Click the tab at the top of the list labelled *1 member selected*.
- Select *Remove from team* from the dropdown menu.
- Confirm your choice in the pop up by clicking *Remove members*.
- The account will instantly disappear in the list of team members and the user will not be notified.

## Exercises

::::{dropdown} GitHub Organizations and Teams
:open:

Fill in the blanks with the following words: *organization, team, owners, non-members, existing members* (you may use one word more than once).

"___s are groups of ___ members that reflect your group's structure and controls access permissions. ___ have permission to invite ___ to the organisation and invite ___ of the organisation to a ___."

:::{dropdown} Solution
"**Team**s are groups of **organization** members that reflect your group's structure and controls access permissions. **Owners** have permission to invite **non-members** to the organization and invite **existing members** of the organisation to a **team**."

:::

::::

::::{dropdown} Optimize server resources for your work
:open:

In each scenario, select the option that makes best use out of the following server resources: *Shared Small: 1–4 CPU, 8–32 GB RAM, Small: 4 CPU, 32 GB RAM, Medium: 16 CPU, 128 GB RAM, Large: 64 CPU, 512 GB RAM*.

a. Run a software pipeline that has a single-thread task requiring 2GB of RAM and 60 tasks in total.

b. Create documentation and edit text files.

c. Preprocess a dataset consisting of 10,000 images, where each image is 16 MB in size.

:::{dropdown} Solution
a. *Medium: 16 CPU, 128 GB RAM* – the memory required is $ 60 \times 2 \, \mathrm{GB} = 120 \, \mathrm{GB}$, therefore the RAM on a *Medium* machine is sufficient.

b. *Shared Small: 1–4 CPU, 8–32 GB RAM* – this is not a computationally intensive task so a machine shared with other users is sufficient.

c. *Large: 64 CPU, 512 GB RAM* – the total dataset size is $10000 \times 16 \, \mathrm{MB} = 160 000 \, \mathrm{MB} = 160 \, \mathrm{GB}$, which is too large for the *Medium* machine to hold in memory at once. Alternatively, you could chunk up your dataset and preprocess each batch on a smaller machine, which would be slower. Image preprocessing is often a CPU bound process in deep learning workflows, so a *Large* machine with more CPU cores is best for performance.

:::

**Challenge**

Sofía wants to run a new program but does not know its maximum memory requirement. She tried compiling it on a Shared Small machine, where it initially built but then ran out of memory and failed on execution. Which server configuration should Sofía choose to try to run the program again?

:::{dropdown} Solution
*Small: 4 CPU, 32 GB RAM* – the task failed on a *Shared Small* machine and we recommend sizing up incrementally if you are unsure of the server resources you need.

:::

::::

::::{dropdown} User server management
:open:

Are the following statements *True* or *False*?

a. Closing the browser window is enough to stop a server.

b. Stopping a server when a user is finished with their work reduces costs and carbon emissions.

c. Stopping and restarting a server removes `pip` and `conda` user-installed packages and restores a clean state. 

d. A user server will continue to run indefinitely unless stopped.

:::{dropdown} Solution
a. *False* – the server will continue to run unless the *Stop my Server* button is clicked or will be automatically culled after 1 hour of inactivity by default.  

b. *True* – running a server utilises computational resources that are billed by the cloud provider and consumes energy.  

c. *True* – sometimes user-installed packages can introduce software dependency conflicts that can be removed by restarting the server.  

d. *False* – servers are culled after 1 hour of inactivity by default. If a user requires a long-running process exceeding this time period, then they should request this through their Hub Champion.

:::

::::

:::{card} 
KEY POINTS
^^^
- As a Hub Champion your main tool is JupyterHub.
- You have control over who has access to your Hub 
- A Hub in a cloud is just a computer

:::
