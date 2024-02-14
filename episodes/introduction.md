(episode-intro)=
# Recognising the benefits your hub can provide for your user community 

teaching: 10
exercises: 2

:::::{card} 
OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
Questions

- Placeholder text

:::

:::{grid-item}
Objectives

- identify the benefits provided by a hub for interactive cloud computing
- recognise use cases for interactive cloud computing in a Hub Champion's user community
- describe their role and capacity as a Hub Champion to administer and support their hub
:::

:::::

## Introduction

This episode introduces the concept of a hub for interactive cloud computing and how a hub in the cloud can benefit the user communities a hub champion supports. 

### JupyterHubs in the Cloud

In this lesson, our definition of the word *hub* refers to JupyterHubs that are hosted on cloud infrastructure and managed by [2i2c](https://2i2c.org/).

:::{image} ../media/episodes/introduction/hub-overview.png
:width: 100%
:alt: Diagram showing an overview of a 2i2c hub, including authentication, online content, custom environments, the community hub, cloud infrastructure, support and services.

:::

### Community Hub

A hub provides an access point to interactive computing on cloud infrastructure for a user community. Access to the hub is via a URL of the following form

```shell
<hub-name>.<community-name>.2i2c.cloud
```

and the customisable landing page contains a *Log in to continue* button (see example screenshot)

:::{image} ../media/episodes/introduction/community-hub.png
:width: 100%
:alt: Screenshot of a hub landing page with a 'Log in to continue' button.

:::

### Authentication

Access to the hub is controlled by Hub Champions and granted by using GitHub to add permitted individual accounts to a GitHub team. A permitted user enters their GitHub credentials to log into the hub (see example screenshot)

:::{image} ../media/episodes/introduction/authentication.png
:width: 100%
:alt: Screenshot of a hub login page using GitHub for authentication.

:::


## Exercises

::::{dropdown} Which of the following statements are True/False?
:open:

a. 2i2c-managed hubs are only available via a single cloud provider.  
b. A hub can be accessed and used by anyone who knows its URL.  
c. Software environments are inflexible and irreproducible.  
d. 2i2c provides operations support for your hub.

:::{dropdown} Solution
a. False – Hubs are built entirely with open source and community-driven tooling. The Right to Replicate gives communities the right to replicate their infrastructure in its entirety elsewhere.  
b. False – Hub Champions can control who can access the hub through GitHub or other authentication methods.  
c. False – Software environments are managed by Hub Champions and automatically deployed with containerisation, allowing for scalability across the cloud and reproducible user environments.  
d. True – 2i2c engineers maintain service availability, uptime and operational upgrades. Hub Champions are responsible for hub configuration and management to support their user community.

:::

::::

:::{dropdown} What are the needs of your user community?
:open:

In pairs, discuss and share the following points:
- What domain of expertise does your community have?
- How large is your community? Do they work alone or do they need to collaborate together?
- Does your community work with large datasets?
- Does your community need access to intense computational power?
- Where applicable, are the needs for collaboration, large datasets, and/or computational power consistent across your whole community?
- What are the main software applications your community uses to conduct their work? 
- How familiar is your user community with version control using git/GitHub?

Prepare to summarise and share with the rest of the workshop.
:::

::::{dropdown} In which of the following ways should a Hub Champion support their users?
:open:

a. Providing community guidance on best research software practices for users of your hub.  
b. Troubleshooting and supporting common user issues.  
c. Communicating infrastructure level requests and incidents to 2i2c.  
d. Overseeing user access policy to the hub.

:::{dropdown} Solution

All of the above are things a Hub Champion should do to enable their community to make best use of a hub.

:::

::::

:::{card}
KEY POINTS
^^^

- placeholder text

:::
