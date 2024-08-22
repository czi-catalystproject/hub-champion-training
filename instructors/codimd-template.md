# [TEMPLATE] Hub Champion Training 

:::info
**Date – Part One**: *dd mmmm YYYY*
**Time – Part One**: *hh:mm-hh:mm TZ*
\
**Date – Part Two**: *dd mmmm YYYY*
**Time – Part Two**: *hh:mm-hh:mm TZ*
\
**Videoconferencing link – Part One**:  *insert videoconferencing link*
**Videoconferencing link – Part Two**:  *insert videoconferencing link*
\
**Code of Conduct**: *insert code of conduct link of your home institute*
**Curriculum**: https://catalystproject.cloud/hub-champion-training/
**Instructors:**
  - *insert name*
  - *insert name*

**Contact:**
  - *insert contact/Slack details*
  - For technical issues on the hub, please open a [2i2c support ticket](https://docs.2i2c.org/support/).
\
All content is publicly available under the [Creative Commons Attribution License](https://creativecommons.org/licenses/by/4.0/).
:::

[TOC]

## About This CodiMD

We will use this CodiMD to take notes, share links, exercises, feedback, etc. with participants throughout the training. The lesson curriculum is available at [https://catalystproject.cloud/hub-champion-training/](https://catalystproject.cloud/hub-champion-training/).

Participants are encouraged to take shared notes on this page. The Instructors will show you how to use CodiMD at the beginning of the workshop.

## Pre-Training Survey

Make sure you complete the [Pre-Training Survey](insert_link) before starting this training. Thanks!

## :wave: Introduce yourself

- Name / pronouns (optional) / affiliation / email address

## :one: Recognising the benefits your hub can provide for your user community

### Questions

- What is interactive computing in the cloud?
- How can interactive computing in the cloud serve hub communities in research and/or education?
- What is the role of a Hub Champion?

### Objectives

- Identify the benefits provided by a hub for interactive cloud computing
- Recognise use cases for interactive cloud computing in a Hub Champion's user community
- Describe their role and capacity as a Hub Champion to administer and support their hub

### Exercise 1a

Which of the following statements are True/False?

a. 2i2c-managed hubs are only available via a single cloud provider. 
b. A hub can be accessed and used by anyone who knows its URL.  
c. Software environments are inflexible and irreproducible.  
d. 2i2c provides operations support for your hub.

#### Answers

*username*
    
a. True/False
b. True/False
c. True/False
d. True/False

### Exercise 1b

What are the needs of your user community?

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

#### Answers

Write your notes to the questions above in this section.

*username*

These are my notes.

### Exercise 1c

In which of the following ways should a Hub Champion support their users?

a. Providing community guidance on best research software practices for users of your hub.
b. Troubleshooting and supporting common user issues.  
c. Communicating infrastructure level requests and incidents to 2i2c.  
d. Overseeing user access policy to the hub.

#### Answers

*username*

a. b. c. d.

### Key Points

- A hub is a 2i2c-managed JupyterHub in the cloud that provides an interactive computing service to users
- Hub Champions empower hub users to make the best use of the service and are the first point of contact for user support
- Hub Champions may perform common administrative tasks and configure the hub to set their community up for success

[Episode 1: Minute Card Feedback](#)

## :two: Controlling access to your hub

### Questions

- Who has control over access to a hub?
- How do I invite members to a GitHub Organization?
- How do I grant access to a hub with GitHub Teams?

### Objectives

- Control user access to a hub via GitHub Organizations and Teams
- Add users to a GitHub Organization
- Add and remove users from a GitHub Team to grant access to a hub

### Exercise 2c

Fill in the blanks with the following words: *organization, team, owners, non-members, existing members* (you may use one word more than once).

"___s are groups of ___ members that reflect your group's structure and controls access permissions. ___ have permission to invite ___ to the organisation and invite ___ of the organization to a ___."

#### Answers

*username*

___s are groups of ___ members that reflect your group's structure and controls access permissions. ___ have permission to invite ___ to the organisation and invite ___ of the organization to a ___.

### Key Points

- A Hub Champion decides who has access to the hub.
- Hub access is controlled with GitHub Organizations and Teams.
- Owners of GitHub Organizations can invite users to it, as well as add and remove users to and from a special GitHub Team to grant access.

[Episode 2: Minute Card Feedback](#)

## :three: Selecting the optimal server resources for your computational work responsibly

### Questions

- What's happening in the cloud when I run a server?
- How many CPU cores and RAM do I need?
- How can I reinstate the default environment of a user's server?
- How can I gain control of a user's server for troubleshooting purposes?

### Objectives

- Select the most appropriate server resources for computational work
- Stop and restart a user's server
- Support a hub user by gaining control of their server

### Exercise 3a

How does the number of CPUs and RAM available on the hub compare with your personal computer? What impact does access to these cloud resources have on your user's work?

#### Answers

Write your notes to the questions above in this section.

*username*

These are my notes.

### Exercise 3b

In each scenario, select the option that makes the best use of the following server resources: *Shared Small: 1–4 CPU, 8–32 GB RAM, Small: 4 CPU, 32 GB RAM, Medium: 16 CPU, 128 GB RAM, Large: 64 CPU, 512 GB RAM*.

a. Run a software pipeline where each task requires 2GB of RAM and 60 tasks in total.

b. Create documentation and edit text files.

c. Preprocess a dataset consisting of 10,000 images, where each image is 16 MB in size.

d. (Challenge) Sofía wants to run a new program but does not know its maximum memory requirement. She tried compiling it on a Shared Small machine, where it was initially built but then ran out of memory and failed on execution. Which server configuration should Sofía choose to try to run the program again?

#### Answers

*username*

a. 
b.
c. 
d.

### Exercise 3c

Are the following statements *True* or *False*?

a. Closing the browser window is enough to stop a server.

b. Stopping a server when a user is finished with their work reduces costs and carbon emissions.

c. Stopping and restarting a server removes `pip` and `conda` user-installed packages and restores a clean state. 

d. A user server will continue to run indefinitely unless stopped.

#### Answers

*username*

a. True/False
b. True/False
c. True/False
d. True/False

### Key Points

- Users can launch servers with a variety of resources available, namely the number of CPU cores and RAM.
- It is important to use cloud resources responsibly to maximize efficiency and minimize carbon emissions. 
- Hub Champions can stop, restart and gain control of a user's server for troubleshooting purposes.

[Episode 3: Minute Card Feedback](#)

## :four: Managing Software Images

### Questions

- What software environments are available on the hub?
- How is containerization helpful for my work?
- Is there a way to customise my software environment?

### Objectives

- Explain the value of reproducibility with containerized software environments
- Select pre-configured JupyterLab or RStudio containers for their hub
- Pull a custom container for their hub

### Exercise 4a

Think about the challenges that you may have faced with using software for your work.

- Is there a tool that you wanted to use that was not compatible with your operating system?
- Have you ever struggled to install a piece of software?
- Did you and your collaborators fail to reproduce results using the same software application?
- 
#### Answers

Write your notes to the questions above in this section.

*username*

These are my notes.

### Exercise 4b

Which of the following statements are *True* or *False*?

1. Containers are lightweight, portable and isolated units of software that can be used on any computer and operating system. 

1. An image is a runnable, self-contained software environment created from a container. A container is a shareable "recipe" used to create images.

1. A container enables reproducible modelling or analyses to be carried out on your laptop or in the cloud.

1. Containers are easily scalable and can be deployed on many machines to distribute work.

#### Answers

*username*

1. True/False
2. True/False
3. True/False
4. True/False

### Exercise 4c

Which of the following would you paste into the _Custom Image_ field to pull the latest version of the `handbook-authoring-image` from the list of 2i2c-maintained hub images on [Red Hat Quay](https://quay.io/organization/2i2c) to your hub?

1. quay.io/2i2c/handbook-authoring-image:bbe4225a7940
1. quay.io/2i2c/handbook-authoring-image
1. docker pull quay.io/2i2c/handbook-authoring-image:b5b2c88daa24
1. quay.io/2i2c/handbook-authoring-image:b5b2c88daa24

#### Answers

*username*

1./2./3./4.

### Key Points

- Images are useful for reproducing software environments across platforms
- Default containers are available on the hub
- Additional custom containers can be pulled to the hub if required

[Episode 4: Minute Card Feedback](#)

## :five: Navigating the filesystem and transferring data to and from the hub

### Questions

- Where do I store files on the hub?
- How do I transfer data to and from the hub?
- How do I authorise GitHub to push and pull code to the hub?

### Objectives

- Recognise and locate your home directory in the JupyterLab and RStudio user interface
- Distribute read-only datasets to all hub users in a shared directory
- Push and pull GitHub repositories with `gh-scoped-creds`

### Exercise 5a

What can you store in your home directory?

Select all that apply:

- [ ] Notebooks
- [ ] Code
- [ ] Large and/or shared datasets with read-write permissions
- [ ] Text files
- [ ] Small datasets
- [ ] Configuration files
- [ ] Read-only datasets, e.g for teaching
- [ ] Temporary data, e.g. intermediate results from a calculation

#### Answers
Check a box by inserting a `x` into the square brackets `[ ]`, e.g.

- [x] This is a checked box.

*username*

- [ ] Notebooks
- [ ] Code
- [ ] Large and/or shared datasets with read-write permissions
- [ ] Text files
- [ ] Small datasets
- [ ] Configuration files
- [ ] Read-only datasets, e.g for teaching
- [ ] Temporary data, e.g. intermediate results from a calculation

### Exercise 5b

Think about the data that you or your community require for your/their work.

- What type of data is it? E.g. tabular data (.csv, .xls), images (.png, .jpg, .bmp), other scientific data formats (.h5, .nc, .fastq)
- How large is a typical dataset?
- Where is the data stored?
- Is the same dataset used by a group of collaborators?

#### Answers

Write your notes to the questions above in this section.

*username*

These are my notes.

### Exercise 5c

You use the Git JupyterLab extension to push code to a remote repository on GitHub and the following box opens:

![Git credentials required dialogue box](https://github.com/czi-catalystproject/hub-champion-training/blob/main/media/episodes/transfer_data/gh-credentials.png?raw=true)

<br>

What should you do?

1. Enter your GitHub username and Personal Access Token as requested, then click *Save my login temporarily*
1. Click *Cancel*, open a Terminal, enter the command `gh-scoped-creds` and follow the prompt

### Key Points

- Users can store small files and datasets in their home directory that will persist between sessions.
- Hub Champions can distribute large datasets in a read-only *shared* directory.
- Use `gh-scoped-creds` to push and pull code to GitHub.

[Episode 5: Minute Card Feedback](#)

## :six: Troubleshooting and providing user support

### Questions

- What feedback do you have about the training?
- Where can you look for further help?
- How can you prepare to support your community after this training?

### Objectives

- Share learning experiences from their self-guided study
- Triage common problems and know where to look for help
- Plan a sustainable support strategy for their community

### Exercise 6a

Take a few minutes to reflect on your experience following the training on your own then, in pairs, discuss the following points:

- What did you learn that was new to you?
- What was confusing about the training?
- What questions do you have about hub management?
- Which areas would you like to explore further?
- Do you think your users would benefit from this lesson?

#### Answers

Write your notes to the questions above in this section.

*username*

These are my notes.

### Exercise 6b

A user wants to use a software application that is not currently available on the hub. Rearrange the following statements in the order of action you would escalate support for this person:

1. Contact the 2i2c technical support desk for assistance
1. Direct the user to the relevant documentation in the 2i2c Service Guide
1. Provide one-to-one support to guide the user through the process of pulling a custom container to the hub
1. Find a custom container that includes the requested software application and provide the information needed to pull this container to the hub to the user

#### Answers

*username*

1. 2. 3. 4.

### Exercise 6c

Build a plan for how you will support the use of your hub amongst your community. Begin by trying to answer the following questions:

- How will you communicate with your users?
- Where will your users report issues?
- What needs do you anticipate from your users? How can you set them up for success?
- How will you track whether an issue gets resolved promptly?
- What resources are available to help you when you need help?
- When should you ask for technical assistance from 2i2c?
- How much time can you commit to support activities?
- Will you set expectations of users' conduct and interactions?
- How will you gather feedback to improve your support process?

Considering your responses to the prompts above, identify which of the following resources you already have access to and which you would need to create/obtain:

- communications platforms and channels
- tools for tracking issues/support requests
- documentation
- training

Is there anything else you need to support hub users?

#### Answers

Write your notes to the questions above in this section.

*username*

These are my notes.

### Key Points

- Part of your role as Hub Champion is to adapt and respond to the specific needs of your community
- Consulting [further resources](https://catalystproject.cloud/hub-champion-training/learners/reference.html#further-resources) may help you troubleshoot some common issues
- If you are stuck and require technical help on behalf of your users, then you can contact 2i2c through their support desk
- Make a plan for your support process to set yourself up for success as a Hub Champion

[Episode 6: Minute Card Feedback](#)

## Post-Training Survey

Thank you for following the Hub Champion Training! 🏅

Make sure you complete the [Post-Training Survey](insert_link) before leaving this training. Thanks!
