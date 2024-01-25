---
title: "Managing Software Images"
teaching: 0
exercises: 0
---

:::::::::::::::::::::::::::::::::::::: questions 

- TODO

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

After completing this episode, learners will be able to...

- explain value of reproducibility provided by images
- describe how software images are integrated with their hub environment
- evaluate whether an existing image meets users' software needs
- pull an image container to make it available on their hub instance

::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::: challenge

### Specifying a custom image tag.

Which of the following would you paste into the _Custom Image_ field to add the latest version of the `handbook-authoring-image` image to your hub?

1. quay.io/2i2c/handbook-authoring-image:bbe4225a7940
1. quay.io/2i2c/handbook-authoring-image
1. docker pull quay.io/2i2c/handbook-authoring-image:ad18f6ea575d
1. quay.io/2i2c/handbook-authoring-image:ad18f6ea575d


::::::::::: solution

4. quay.io/2i2c/handbook-authoring-image:ad18f6ea575d

Notes on the other answers:

1. This is using an older version tag and not the latest version.
2. This is missing the version tag.
3. Need to remove the 'docker pull' part.


::::::::::::::::::::

::::::::::::::::::::::::::::::


