(episode-access)=
# Controlling access to your hub

<!-- teaching: 15
exercises: 15 -->

:::::{card}
:class-header: sd-font-weight-bold, sd-bg-primary, sd-text-white

🔍 OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
**Questions**

- Who has control over access to a hub?
- How do I invite members to a GitHub Organization?
- How do I grant access to a hub with GitHub Teams?

:::

:::{grid-item}
**Objectives**

- Control user access to a hub via GitHub Organizations and Teams
- Add users to a GitHub Organization
- Add and remove users from a GitHub Team to grant access to a hub

:::

:::::

## Who decides which users can access a hub?

Hub Champions can control access to the hub by adding users to their {ref}`GitHub Organization <glossary:github-org>` and {ref}`Team<glossary:github-team>`. Each hub user needs to [sign up](https://github.com/signup) for an individual account on GitHub.

A Hub Champion should have Owner permissions for their GitHub Organization in order to invite non-members to it. Inviting a user to the organization does not automatically grant the user access to a hub. A member of a GitHub Organization must be added to a GitHub Team associated with the hub in order to log into the hub with their GitHub credentials.

:::{note}
Your GitHub Team was defined and specially linked to your hub when the hub was initially deployed. This information should be known to Hub Champions. If not, please contact your community representative who deployed the hub.
:::

Follow the guidance below to practise granting user access to the [Community Showcase Hub](https://showcase.2i2c.cloud/), specifically

- adding (but *not* removing for now) users to a GitHub Organization
- adding and removing users to and from a GitHub Team.

:::{danger}
Please refrain from removing other users from the GitHub Organization during the training! The steps in {ref}`Removing members from the organization <org-remove>` are for completeness when it comes to administering your own hub outside of the training.

:::

## Managing your GitHub Organization

- View a list of all of the GitHub Organizations that you are a member of by visiting [https://github.com/settings/organizations](https://github.com/settings/organizations).

:::{figure} ../media/episodes/administer_hub/gh-org-1.png
:width: 100%
:alt: Screenshot showing a list of GitHub Organizations on https://github.com/settings/organizations.

Screenshot showing an example list of GitHub Organizations on [https://github.com/settings/organizations](https://github.com/settings/organizations).
:::

- Click on the link to the [2i2c-community-showcase](https://github.com/2i2c-community-showcase) GitHub Organization (if you cannot access the page at this link then please contact your instructor for access).

- Click on the *People* menu tab to view a list of current Organization members.

:::{figure} ../media/episodes/administer_hub/gh-org-2.png
:name: gh-org-people
:width: 100%
:alt: Screenshot showing a list of members of the 2i2c-community-showcase GitHub Organization.

Screenshot showing a list of [2i2c-community-showcase](https://github.com/orgs/2i2c-community-showcase/people) GitHub Organization members. The *People* tab menu is located at the top; the green *Invite member* button is located in the top right; the *Failed invitations* tab is located in the left sidebar and the *Member settings* ![member settings button](../media/episodes/administer_hub/gh-org-3.png) icon is located next to each member account.

:::

::::{admonition} Exercise: Invite non-members to the organization
:class: exercise

Check that you have *Owner* permissions for this organization to invite non-members to it. If not, contact an owner of the organization who can give you *Owner* permissions.

- Invite a non-member to the organization by clicking the green *Invite member* button and searching by username, full name or email address.

  :::{tip}
  We recommend searching for and adding the `jnywong-test` username for the purposes of this training. Since this account may receive multiple invitations during this workshop, you can click a green **Update invitation** button instead.
  
  :::

- The invited user will receive an email and GitHub notification inviting them to join the GitHub Organization.

  :::{warning}
  Invitations to join a GitHub Organization will expire after 7 days, after which you can retry or cancel the invitation by clicking the *Failed invitations* tab in the left sidebar (see screenshot above).
  
  :::

- Once the user has accepted, they will become visible in the list of Organization members in the *People* menu tab.

::::

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
  
## Managing your GitHub Team

Add members to the GitHub Team associated with the hub so that users can log into the hub with their GitHub credentials.

- From the 2i2c-community-showcase [GitHub Organization page](https://github.com/2i2c-community-showcase/), click on the *Teams* menu tab.
- The GitHub Team that authorises access to the Community Showcase Hub is called [access-2i2c-showcase](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase). Click on it to see a list of members.

  :::{figure} ../media/episodes/administer_hub/gh-team-1.png
  :width: 100%
  :alt: Screenshot showing a list of members of the access-2i2c-showcase GitHub Team.
  
  Screenshot showing a list of [access-2i2c-showcase](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase) GitHub Team members.
  
  :::

::::{admonition} Exercise: Add a member of the organization to join the team
:class: exercise
- Invite a member of the organization to join the team by clicking the green *Add a member* button and searching by username, full name or email address.

  :::{tip}
  We recommend searching for and adding the `jmunroe-testuser` username for the purposes of this training. If they are already a member of the team, remove the account by following the steps in {ref}`Removing members from the team<team-remove>` and then add `jmunroe-testuser` back into the team again.
  
  :::
  
- The account will instantly appear in the list of team members and the user does not need to accept an invitation to join. The user may choose to leave the team by clicking the ![Leave team](../media/episodes/administer_hub/gh-team-2.png) button on the same page.

- The user can now log into the [Community Showcase Hub](https://showcase.2i2c.cloud) using their GitHub credentials 🎉

::::

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

::::{admonition} Exercise: GitHub Organizations and Teams
:class: exercise

Fill in the blanks with the following words: *organization, team, owners, non-members, existing members* (you may use one word more than once).

"___s are groups of ___ members that reflect your group's structure and controls access permissions. ___ have permission to invite ___ to the organisation and invite ___ of the organization to a ___."

:::{admonition} Solution
:class: solution, dropdown

"**Team**s are groups of **organization** members that reflect your group's structure and controls access permissions. **Owners** have permission to invite **non-members** to the organization and invite **existing members** of the organization to a **team**."

:::

::::

:::{card} 
:class-header: sd-font-weight-bold, sd-bg-secondary, sd-text-white

🔑 KEY POINTS
^^^
- A Hub Champion decides who has access to the hub.
- Hub access is controlled with GitHub Organizations and Teams.
- Owners of GitHub Organizations can invite users to it, as well as add and remove users to and from a special GitHub Team to grant access.

:::
