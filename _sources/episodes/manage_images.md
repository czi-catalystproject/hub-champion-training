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
- pull a pre-configured Jupyter or RStudio image container for your hub
:::

:::::

## Exercises

::::{dropdown} Specifying a custom image tag.
:open:

Which of the following would you paste into the _Custom Image_ field to add the latest version of the `handbook-authoring-image` image to your hub?

1. quay.io/2i2c/handbook-authoring-image:bbe4225a7940
1. quay.io/2i2c/handbook-authoring-image
1. docker pull quay.io/2i2c/handbook-authoring-image:ad18f6ea575d
1. quay.io/2i2c/handbook-authoring-image:ad18f6ea575d

:::{dropdown} Solution
4. quay.io/2i2c/handbook-authoring-image:ad18f6ea575d

Notes on the other answers:

1. This is using an older version tag and not the latest version.
2. This is missing the version tag.
3. Need to remove the 'docker pull' part.
:::

::::

:::{card} 
KEY POINTS
^^^
- Container images are useful for reproducing software environments across platforms.
- Default images are available on the hub
- Additional images can be pulled to the hub if required
:::
