(episode-intro)=
# Recognising the benefits your hub can provide for your user community 

<!-- teaching: 30
exercises: 30
word count: 1718 -->

:::::{card}
:class-header: sd-font-weight-bold, sd-bg-primary, sd-text-white

🔍 OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
**Questions**

- What is interactive computing in the cloud?
- How can interactive computing in the cloud serve hub communities in research and/or education?
- What is the role of a Hub Champion?

:::

:::{grid-item}
**Objectives**

- Identify the benefits provided by a hub for interactive cloud computing
- Recognise use cases for interactive cloud computing in a Hub Champion's user community
- Describe their role and capacity as a Hub Champion to administer and support their hub
:::

:::::

## Introduction

This episode introduces the concept of a hub for interactive cloud computing and how a hub in the cloud can benefit the user communities a hub champion supports.

### How can interactive computing in the cloud benefit my community?

Interactive computing is a fundamental way in which researchers and educators use a computer program to perform tasks that include (but are not limited to)

- generating data from experiments or simulations, or gathering data from secondary sources
- processing and analysing data using statistical techniques and algorithms
- developing data-driven and/or mechanistic predictive models
- visualising results to graphically reveal insights.

Real-time interactivity helps information flow back and forth between the user and their work, creating a dynamic and productive environment for research and educational activity. Project Jupyter is an ecosystem of open-source tools that can provide a web-based interactive computational environment, in the form of "notebooks", for several languages, namely **Ju**lia, **Py**thon and **R** (hence the name Project **Jupy**te**r**).

:::{image} ../media/episodes/introduction/interactive-computing.png
:width: 100%
:alt: Cartoon depicting common interactive computing use cases such as data collection, data processing and analysis, predictive modelling and data visualization.

:::

With the advent of "big data", many researchers and educators encounter limitations with using traditional methods for handling data on a local machine or laptop. The size and number of datasets prevalent in disciplines such as genomics, meteorology, healthcare, and environmental sciences, to name a few, are growing at an exponential rate, and consequently, the need for large-scale infrastructure to support continually intensive computational workflows also grows.

:::{image} ../media/episodes/introduction/cloud-computing.png
:width: 30%
:align: right
:alt: Cloud computing icon.

:::

Cloud computing is one way of provisioning the system resources needed to meet this demand. This relies on the sharing of on-demand services usually provided by commercial entities such as AWS, Google Cloud and Microsoft Azure. Academics in research and education are often limited in their capacity to sustainably administrate cloud infrastructure at scale and may also wish to support open-source tools and vendor-agnostic infrastructure to protect scientific reproducibility and encourage effective collaboration.

This is where a non-profit initiative such as [2i2c](https://2i2c.org/) can help. 2i2c specialises in managing open Jupyter architecture in the cloud specially designed for communities of practice in research and education using open-source tools that allow them to reproduce environments, code and data on different machines. Users can access large-scale compute and storage as needed and workflows are entirely reproducible and supported by using community-driven, open-source technologies.

### JupyterHubs in the Cloud

In this lesson, our definition of the word *hub* refers to a {ref}`JupyterHub <glossary:jupyterhub>` that is hosted on cloud infrastructure and managed by [2i2c](https://2i2c.org/).

:::{image} ../media/episodes/introduction/hub-overview.png
:width: 100%
:alt: Diagram showing an overview of a 2i2c hub, including authentication, online content, custom environments, the community hub, cloud infrastructure, support and services.

:::

#### Community Hub

A hub provides an access point to interactive computing in the cloud for a user community. Access to the hub is via a URL of the following form

```shell
<hub-name>.<community-name>.2i2c.cloud
```

and the landing page contains a *Log in to continue* button (see example screenshot)

:::{image} ../media/episodes/introduction/community-hub.png
:width: 100%
:alt: Screenshot of a hub landing page with a 'Log in to continue' button.

:::

#### Authentication

Access to the hub is controlled by Hub Champions and granted by adding a user's GitHub account to a special GitHub Team associated with the hub. A permitted user enters their GitHub credentials to log into the hub (see example screenshot)

:::{image} ../media/episodes/introduction/authentication.png
:width: 100%
:alt: Screenshot of the authentication page using GitHub credentials

:::

#### Custom environments

Users can choose from several machine types with varying numbers of CPU cores and RAM available, and select their desired software environment using images.

:::{image} ../media/episodes/introduction/custom-env-1.png
:width: 100%
:alt: Screenshot of server options available include Shared Small 1-4 CPU, 8-32 GB RAM, Small 4 CPU, 32 GB RAM, Medium 16 CPU, 128 GB RAM and Large 64 CPU, 512 GB RAM.

:::

Images available by default include

- Handbook Authoring (JupyterLab user interface) – installed Python packages include `jupyter-book, jupyterlab_myst, ghp-import, numpy, matplotlib`
- [Jupyter DataScience](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook) (JupyterLab user interface) – installed Python packages include `dask, h5py, pandas, scikit-learn, scipy, sympy`
- [Rocker Geospatial](https://rocker-project.org/images/versioned/rstudio.html) (RStudio user interface) – installed R packages include `ncdf4, proj4, raster, rgdal, rgeos, sf, sp`
- Other... – specify a custom JupyterLab/RStudio image

#### Online Content

There are many ways to manage online content on the hub. For example 

- users have access to their own filesystem and a home directory of up to 10 GB
- Hub Champions can distribute data to all hub users in a shared directory
- users can securely pull and push code to and from the hub using GitHub.

#### Cloud infrastructure

Hubs are deployed on AWS, Google Cloud or Microsoft Azure commercial cloud providers. Code for 2i2c hub configuration and deployment follows best practices and is open and transparent to all. 2i2c hubs are designed with the [Right to Replicate](https://2i2c.org/right-to-replicate/) by anybody on their own cloud infrastructure.

### Support and Services

2i2c provides dedicated operations support for the hub, such as

- continuously monitoring the infrastructure
- responding to incidents
- deploying hub environments
- upstreaming open-source developments
- operating Kubernetes clusters.

Hub Champions are the first point of contact for their user community to provide support and guide users to make the best use of the hub. Hub Champions may then represent and escalate support requests to 2i2c for more technical issues. 

<br>

::::{admonition} Which of the following statements are True/False?
:class: exercise

a. 2i2c-managed hubs are only available via a single cloud provider.  
b. A hub can be accessed and used by anyone who knows its URL.  
c. Software environments are inflexible and irreproducible.  
d. 2i2c provides operations support for your hub.

:::{admonition} Solution
:class: solution, dropdown

a. False – Hubs are built entirely with open-source and community-driven tooling. The Right to Replicate gives communities the right to replicate their infrastructure in its entirety elsewhere.  
b. False – Hub Champions can control who can access the hub through GitHub or other authentication methods.  
c. False – Software environments are managed by Hub Champions and automatically deployed with containerisation, allowing for scalability across the cloud and reproducible user environments.  
d. True – 2i2c engineers maintain service availability, uptime and operational upgrades. Hub Champions are responsible for hub configuration and management to support their user community.

:::

::::

## Define success for your user community

As a Hub Champion, your main goal is to empower your community to make the best use of the Hub service. You represent the interests of your community and are familiar with their computational workflows and data needs.

To ensure that the hub serves the interests of your community, Hub Champions may perform common administrative tasks such as

- controlling user access policy to the hub
- stopping and restarting servers for users
- guiding users to selecting the appropriate server options and images for their use case
- transferring and distributing data on the hub
- representing and escalating support requests to 2i2c for technical issues
- facilitate knowledge transfer within the community, e.g. training events, documentation, and communication channels

<br>

:::{admonition} Exercise: What are the needs of your user community?
:class: exercise

Let us take some time to reflect and assess the needs of your user community.

In pairs, discuss and share the following points:

- What domain of expertise does your community have?
- How large is your community? Do they work alone or do they need to collaborate together?
- Does your community work with large datasets?
- Does your community need access to intensive computational power?
- Where applicable, are the needs for collaboration, large datasets, and/or computational power consistent across your whole community?
- What are the main software applications your community uses to conduct their work? 
- How familiar is your user community with version control using git/GitHub?
- How can a hub address the challenges your community faces?

Prepare to summarise and share with the rest of the workshop.
:::

::::{admonition} Exercise: In which of the following ways should a Hub Champion support their users?
:class: exercise

a. Providing community guidance on best research software practices for users of your hub.  
b. Troubleshooting and supporting common user issues.  
c. Communicating infrastructure level requests and incidents to 2i2c.  
d. Overseeing user access policy to the hub.

:::{admonition} Solution
:class: solution, dropdown

All of the above are things a Hub Champion should do to enable their community to make the best use of a hub.

:::

::::

## Next Steps

The next part of the training is a self-guided study of the following episodes

- {ref}`episode-access`
- {ref}`episode-server`
- {ref}`episode-images`
- {ref}`episode-data`.

and concludes with a synchronous session covering the episode {ref}`episode-troubleshoot`.

To complete the self-study portion of the workshop, you will need to be able to access the [2i2c Community Showcase Hub](https://showcase.2i2c.cloud). When working through the self-study sections of the workshop, write your answers to the exercises in our collaborative note-taking document.

:::important
If you cannot access the hub, please contact the training instructor.
:::

:::{card}
:class-header: sd-font-weight-bold, sd-bg-secondary, sd-text-white

🔑 KEY POINTS
^^^

- A hub is a 2i2c-managed JupyterHub in the cloud that provides an interactive computing service to users
- Hub Champions empower hub users to make the best use of the service and are the first point of contact for user support
- Hub Champions may perform common administrative tasks and configure the hub to set their community up for success

:::
