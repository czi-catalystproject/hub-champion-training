(episode-images)=
# Managing Software Images

teaching: 0
exercises: 0

:::::{card} 
OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
Questions

- TODO 

:::

:::{grid-item}
Objectives

- explain the value of reproducibility with containerized software environments
- select pre-configured JupyterLab or RStudio image containers for their hub
- pull a custom image container for their hub
:::

:::::

## Software for research and education

Hub users more than likely require specific software packages to carry out their work. Installing software on a laptop significantly differs from installing software on a shared resource such as a hub in the cloud, largely because of different

- operating systems, e.g. Linux, macOS, Windows
- system libraries
- filesystems.

Due to these factors a software installation on a user's local machine is difficult to reproduce and the installation process is often poorly documented and out of date. 

::::{dropdown} Exercise: Software Challenges
:open:

Think about the challenges that you may have faced with using software for your work.

- Is there a tool that you wanted to use that was not compatible with your operating system?
- Have you ever struggled to install a piece of software?
- Did you and your collaborators fail to reproduce results using the same software application?

Write up your thoughts in our shared collaborative document.

::::

## Reproduce software environments with containers

Containers are a useful technology for overcoming software challenges in reproduciblity, portability and scalability. A container, much like a real-world shipping container, bundles up the software application and its dependencies into a lightweight and standalone package that can be run on any infrastructure.

:::{mermaid}
:align: center
:alt: Diagram of how a layer of many user software container environments shares the hub's underlying operating system and server infrastructure.
:caption: Diagram of how a layer of many user software container environments shares the hub's underlying operating system and server infrastructure.

block-beta
  columns 3
  id0{{"Containerized Software Applications"}}:3
  block:apps:3
    %% columns auto (default)
    A["App A"] B["App B"] C["App C"] D["App D"] E["App E"] F["App F"]
  end
  id1["Container Host"]:3
  id2["Operating System"]:3
  id3["Infrastructure"]:3

:::

### Reproducibility

### Portability

### Scalability


::::{dropdown} Exercise: Reasons to use containers
:open:

Which of the following statements are *True* or *False*?

1. Containers are lightweight, portable and isolated units of software that can be used on any computer and operating system. 

1. An image is a runnable, self-contained software environment and created from a container. A container is a shareable "recipe" used to create images.

1. A container enables reproducible modelling or analyses to be carried out on your laptop or in the cloud.

1. Containers are easily scalable and can be deployed on many machines to distribute work.

:::{dropdown} Solution

1. *True*

1. *False* – A *container* is a runnable, self-contained software environment or service and created from an *image*. An *image* is a shareable "recipe" used to create *containers*.

1. *True*

1. *True*

:::

::::

::::{dropdown} Exercise: Specifying a custom image tag
:open:

Which of the following would you paste into the _Custom Image_ field to add the latest version of the `handbook-authoring-image` image to your hub?

<!-- IMPORTANT: If you are editing this exercise, please do not change the "LATEST" placeholders below as they are automatically updated with the latest tag using the helper.sh script in the GitHub action .github/workflows/deploy_website.yml -->

1. quay.io/2i2c/handbook-authoring-image:bbe4225a7940
1. quay.io/2i2c/handbook-authoring-image

1. docker pull quay.io/2i2c/handbook-authoring-image:LATEST
1. quay.io/2i2c/handbook-authoring-image:LATEST

:::{dropdown} Solution
4. quay.io/2i2c/handbook-authoring-image:LATEST

Notes on the other answers:

1. This is using an older version tag and not the latest version available.
2. This is missing the version tag.
3. Here you would need to remove the 'docker pull' part.
:::

::::

:::{card} 
KEY POINTS
^^^
- Images are useful for reproducing software environments across platforms.
- Default containers are available on the hub
- Additional custom containers can be pulled to the hub if required
:::
