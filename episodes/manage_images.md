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

## Exercises

::::{dropdown} Software Challenges
:open:

Think about the challenges that you may have faced with using software for your work.

- Is there a tool that you wanted to use that was not compatible with your operating system?
- Have you ever struggled to install a piece of software?
- Did you and your collaborators fail to reproduce results using the same software application?

Write up your thoughts in our shared collaborative document.

::::

::::{dropdown} Reasons to use containers
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

::::{dropdown} Specifying a custom image tag
:open:

Which of the following would you paste into the _Custom Image_ field to add the latest version of the `handbook-authoring-image` image to your hub?

1. quay.io/2i2c/handbook-authoring-image:bbe4225a7940
1. quay.io/2i2c/handbook-authoring-image
1. `docker pull` quay.io/2i2c/handbook-authoring-image:b5b2c88daa24
1. quay.io/2i2c/handbook-authoring-image:b5b2c88daa24

:::{dropdown} Solution
4. quay.io/2i2c/handbook-authoring-image:b5b2c88daa24

Notes on the other answers:

1. This is using an older version tag and not the latest version available.
2. This is missing the version tag.
3. Here you would need to remove the 'docker pull' part.
:::

::::

:::{card} 
KEY POINTS
^^^
- Container images are useful for reproducing software environments across platforms.
- Default images are available on the hub
- Additional images can be pulled to the hub if required
:::
