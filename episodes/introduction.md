(episode-intro)=
# Recognising the benefits your hub can provide for your user community 

<!-- teaching: 30
exercises: 30 -->

:::::{card} 
OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
Questions

- What is interactive computing in the cloud?
- How can interactive computing in the cloud serve hub communities in research and/or education?
- What is the role of a Hub Champion?

:::

:::{grid-item}
Objectives

- Identify the benefits provided by a hub for interactive cloud computing
- Recognise use cases for interactive cloud computing in a Hub Champion's user community
- Describe their role and capacity as a Hub Champion to administer and support their hub
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

A hub provides an access point to interactive computing in the cloud for a user community. Access to the hub is via a URL of the following form

```shell
<hub-name>.<community-name>.2i2c.cloud
```

and the landing page contains a *Log in to continue* button (see example screenshot)

:::{image} ../media/episodes/introduction/community-hub.png
:width: 100%
:alt: Screenshot of a hub landing page with a 'Log in to continue' button.

:::

### Authentication

Access to the hub is controlled by Hub Champions and granted by adding a user's GitHub account to a special GitHub Team associated with the hub. A permitted user enters their GitHub credentials to log into the hub (see example screenshot)

:::{image} ../media/episodes/introduction/authentication.png
:width: 100%
:alt: Screenshot of a Server Options page. Available machine types include Shared Small: 1-4 CPU, 8-32 GB, 

:::

### Custom environments

Users can choose from several machine types with varying numbers of CPU cores and RAM available, and select their desired software environment using images.

:::{image} ../media/episodes/introduction/custom-env-1.png
:width: 100%
:alt: Screenshot of a hub login page using GitHub for authentication. Server options available include Shared Small: 1-4 CPU, 8-32 GB RAM, Small: 4 CPU, 32 GB RAM, Medium: 16 CPU, 128 GB RAM and Large: 64 CPU, 512 GB RAM.

:::

Images available by default include

- Handbook Authoring (JupyterLab user interface) – installed Python packages include `jupyter-book, jupyterlab_myst, ghp-import, numpy, matplotlib`
- [Jupyter DataScience](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook) (JupyterLab user interface) – installed Python packages include `dask, h5py, pandas, scikit-learn, scipy, sympy`
- [Rocker Geospatial](https://rocker-project.org/images/versioned/rstudio.html) (RStudio user interface) – installed R packages include `ncdf4, proj4, raster, rgdal, rgeos, sf, sp`
- Other... – specify a custom JupyterLab/RStudio image

### Online Content

There are many ways to manage online content on the hub. For example 

- users have access to their own filesystem and a home directory of up to 20 GB
- Hub Champions can distribute data to all hub users in a shared directory
- users can securely pull and push code to and from the hub using `gh-scoped-creds`.

### Cloud infrastructure

Hubs are deployed on AWS, Google Cloud or Microsoft Azure commercial cloud providers. Code for 2i2c hub configuration and deployment follows best practices and is open and transparent to all. 2i2c hubs are designed with the [Right to Replicate](https://2i2c.org/right-to-replicate/) by anybody on their own cloud infrastructure.

### Support and Services

2i2c provides dedicated operations support for the hub, such as

- continuously monitoring the infrastructure
- responding to incidents
- deploying hub environments
- upstreaming open source developments
- operating Kubernetes clusters.

Hub Champions are the first point of contact for their user community to provide support and guiding users to make the best use out of the hub. Hub Champions may then represent and escalate support requests to 2i2c for more technical issues. 

<br>

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

## Define success for your user community

As a Hub Champion your main goal is to empower your community to make best use out of the hub service. You represent the interests of your community and are familiar with their computational workflows and data needs.

To ensure that the hub serves the interests of your community, Hub Champions may perform common administrative tasks such as

- controlling user access policy to the hub
- stopping and restarting servers for users
- guiding users to selecting the appropriate server options and images for their use case
- transferring and distributing data on the hub
- representing and escalating support requests to 2i2c for technical issues
- facilitate knowledge transfer within the community, e.g. training events, documentation, communication channels

<br>

:::{dropdown} What are the needs of your user community?
:open:

Lets take some time to reflect and assess the needs of your user community.

In pairs, discuss and share the following points:
- What domain of expertise does your community have?
- How large is your community? Do they work alone or do they need to collaborate together?
- Does your community work with large datasets?
- Does your community need access to intensive computational power?
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

- A hub is a 2i2c-managed JupyterHub in the cloud that provides a interactive computing service to users
- Hub Champions empower hub users to make best use of the service and are the first point of contact for user support
- Hub Champions may perform common administrative tasks and configure the hub to set their community up for success

:::
