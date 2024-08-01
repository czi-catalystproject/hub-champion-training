(episode-images)=
# Managing Software Images

<!-- teaching: 30
exercises: 20
word count: 1412 -->

:::::{card}
:class-header: sd-font-weight-bold, sd-bg-primary, sd-text-white

🔍 OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
**Questions**

- What software environments are available on the hub?
- How is containerization helpful for my work?
- Is there a way to customise my software environment?

:::

:::{grid-item}
**Objectives**

- Explain the value of reproducibility with containerized software environments
- Select pre-configured JupyterLab or RStudio containers for their hub
- Pull a custom container for their hub
:::

:::::

## Software for research and education

Hub users usually require specific software packages to carry out their work. Installing software on a laptop significantly differs from installing software on a shared resource such as a hub in the cloud, largely because of different

- operating systems, e.g. Linux, macOS, Windows
- system libraries
- filesystems
- hardware.

Due to these factors, a software installation on a user's local machine is difficult to reproduce and the installation process is often poorly documented and out of date. 

::::{admonition} Exercise: Software Challenges
:class: exercise

Think about the challenges that you may have faced with using software for your work.

- Is there a tool that you wanted to use that was not compatible with your operating system?
- Have you ever struggled to install a piece of software?
- Did you and your collaborators fail to reproduce results using the same software application?

Write up your thoughts in our shared collaborative document.

::::

## Reproduce software environments with containers

Containers are a useful technology for overcoming software challenges in reproducibility, portability and scalability. A container bundles up the software application and its dependencies into a lightweight and standalone package that can be run on any infrastructure.

:::{mermaid}
:align: center
:alt: Diagram of how a layer of many user software container environments shares the hub's underlying operating system and server infrastructure.
:caption: Diagram of how a layer of many user software container environments shares the hub's underlying operating system and server infrastructure.

block-beta
  columns 3
  id0{{"Containerized Software Applications/Entornos de contenedores de software"}}:3
  block:apps:3
    %% columns auto (default)
    A["App A"] B["App B"] C["App C"] D["App D"] E["App E"] F["App F"]
  end
  id1["Container Host"]:3
  id2["Operating System/Sistema Operativo"]:3
  id3["Infrastructure/Infraestructura"]:3

:::

Reproducibility
: An *image* is a reusable and shareable file that outlines the "recipe" needed to create a container. This is useful for reproducing a software environment since you can tag and keep track of the different versions of the image.

Portability
: A container can run on different target systems, such as a laptop, supercomputer or cloud server.

Scalability
: Containers can be scaled up or down to take advantage of the system resources available (i.e. CPUs and RAM).

::::{admonition} Exercise: Reasons to use containers
:class: exercise

Which of the following statements are *True* or *False*?

1. Containers are lightweight, portable and isolated units of software that can be used on any computer and operating system. 

1. An image is a runnable, self-contained software environment created from a container. A container is a shareable "recipe" used to create images.

1. A container enables reproducible modelling or analyses to be carried out on your laptop or in the cloud.

1. Containers are easily scalable and can be deployed on many machines to distribute work.

:::{admonition} Solution
:class: solution, dropdown

1. *True*

1. *False* – A *container* is a runnable, self-contained software environment or service created from an *image*. An *image* is a shareable "recipe" used to create *containers*.

1. *True*

1. *True*

:::

::::

:::{tip}
For further resources on containerisation, please see {ref}`Further Resources<ref:resources>`.
:::

## Selecting pre-configured containers on the hub

As seen in the previous episode, [](episode-server), a user is presented with a list of server options once logged into a hub and each option has an *Image* dropdown box.

:::{image} ../media/episodes/server_resources/server_options.png
:width: 100%
:alt: Screenshot showing a list of server options available on the Community Showcase Hub.

:::

On the [Community Showcase Hub](https://showcase.2i2c.cloud), the default list of images available include

- [Jupyter DataScience](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook) - launches a JupyterLab interface with various Python[^ds-python], R[^ds-r] and Julia[^ds-julia] packages installed
- [Rocker Geospatial](https://rocker-project.org/images/versioned/binder.html) – launches an RStudio interface with R packages[^ds-r] and geospatial toolkits installed
- [Handbook Authoring](https://github.com/2i2c-org/community-showcase/tree/main/images/handbook-authoring-image) – a 2i2c-maintained image containing Python packages[^ha-python] for authoring documentation in Jupyter Book and MystMD
- [Other...](episode-images:other) – allows a user to self-serve a JupyterHub-compatible custom image (see section below).

[^ds-python]: such as `dask, h5py, matplotlib, pandas, scikit-learn, scipy, sympy`
[^ds-r]: such as `caret, forecast, randomforest, rmarkdown, shiny, tidymodels, tidyverse`
[^ds-julia]: such as `pluto` and `HDF5`
[^gs-r]: such as `PROJ, GDAL` and `GEOS`
[^ha-python]: such as `jupyter-book` and `sphinx-intl`

:::{note}
The list of image options presented can vary for different hubs. Hub Champions can build their own non-default environment and open a support ticket with 2i2c to modify this list to include non-default options – this is beyond the scope of this training although further details can be found in the [Hub Service Guide](https://docs.2i2c.org/admin/howto/environment/).

:::

(episode-images:other)=
### Choosing a custom image with the "Other..." option

The *Other...* option allows a user to specify a custom image container to pull into the hub. There are many container registries online that host containerized applications, such as Docker Hub, GitHub, Azure, Amazon and Google Container Registries, Red Hat Quay, etc.

**Only containers that are compatible with JupyterHub can be pulled into a hub**. To find JupyterHub-compatible containers you can, e.g.

- browse the list of 2i2c-maintained hub images on [Red Hat Quay](https://quay.io/organization/2i2c)
- take a look at [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html)
- take a look at the [Rocker Project](https://rocker-project.org/images/) for R Docker containers (note only the `binder` image is JupyterHub-compatible)
- search Docker Hub for the term "jupyter".

:::{caution}
Anyone can create a container and publicly share it online, therefore it is important to be cautious about downloading this software onto your machine. A few good indicators to look for are

- the image is updated regularly
- the image is authored and maintained by a well-known company or community
- the container is used by many people
- there is an image file provided or metadata listing the exact contents of the container
- documentation is provided on how to use the image.

:::

An image listed on a container registry may have many different versions associated with it. A `TAG` is used to distinguish these different versions. The name of the container image can also include the `OWNER`. The general format for specifying an image is

```shell
OWNER/IMAGE_NAME:TAG
```

For example, if a user wanted to pull the [Jupyter PyTorch notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-pytorch-notebook) container, then they would enter `quay.io/jupyter/pytorch-notebook:x86_64-pytorch-2.2.0` into the *Custom image* field.

:::{image} ../media/episodes/manage_images/custom.png
:width: 100%
:alt: Screenshot showing where to specify a custom image quay.io/jupyter/pytorch-notebook:x86_64-pytorch-2.2.0 in the server options page on a hub.

:::

:::{tip}
We recommend always explicitly specifying a version number in the `TAG` field rather than using the generic `latest` tag. Providing the version number in the tag is useful for producing informative server logs for debugging purposes and allows you to check whether the correct version of the image is loaded into the hub by running the command

```shell
jovyan@user:~$ echo $JUPYTER_IMAGE
```
:::

::::{admonition} Exercise: Specifying a custom image tag
:class: exercise

Which of the following would you paste into the _Custom Image_ field to pull the latest version of the `handbook-authoring-image` from the list of 2i2c-maintained hub images on [Red Hat Quay](https://quay.io/organization/2i2c) to your hub?

<!-- IMPORTANT: If you are editing this exercise, please do not change the "LATEST" placeholders below as they are automatically updated with the latest tag using the helper.sh script in the GitHub action .github/workflows/deploy_website.yml -->

1. quay.io/2i2c/handbook-authoring-image:bbe4225a7940
1. quay.io/2i2c/handbook-authoring-image

1. docker pull quay.io/2i2c/handbook-authoring-image:LATEST
1. quay.io/2i2c/handbook-authoring-image:LATEST

:::{admonition} Solution
:class: solution, dropdown

4. quay.io/2i2c/handbook-authoring-image:LATEST

Notes on the other answers:

1. This is using an older version tag and not the latest version available.
2. This is missing the version tag.
3. Here you would need to remove the 'docker pull' part.
:::

::::

:::{card} 
:class-header: sd-font-weight-bold, sd-bg-secondary, sd-text-white

🔑 KEY POINTS
^^^
- Images are useful for reproducing software environments across platforms
- Default containers are available on the hub
- Additional custom containers can be pulled to the hub if required
:::
