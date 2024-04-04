# Instructor Notes

<!-- word count: 751 -->

## Schedule

Training is delivered over two synchronous workshops, each one hour in length a week apart. The week in between is dedicated to self-guided study with asynchronous support provided by the instructors.

1. ⭐ {ref}`episode-intro`
1. {ref}`episode-access`
1. {ref}`episode-server`
1. {ref}`episode-images`
1. {ref}`episode-data`
1. ⭐ {ref}`episode-troubleshoot`

( ⭐ indicates this episode is delivered via a synchronous workshop)

## Asynchronous support during self-study

```{margin}
Your helper will populate the CodiMD with lesson content during the sync sessions. Make sure to paste the episode content ready for the self-paced study.
```

We will use a collaborative note-taking document, to share answers to exercises during this workshop. A CodiMD template is available for you to use in the lesson repository under the *instructors* folder. Make sure you generate a fresh copy and remove the contents of each episode section before the workshop and share this with your learners. 

Set up a Slack channel, or equivalent, where learners ask for help and support during the training.

During the self-guided study portion of the workshop, make sure to check the CodiMD and Slack channel regularly to assess progress and respond to any questions.

### Notes for helpers

Helpers support workshop instructors with tasks such as

- helping learners with lesson setup problems
- populating the CodiMD with lesson content, e.g. episode questions, objectives, exercises and minute card feedback forms
- monitoring the Slack channel
- grant administrator privileges to users on the Community Showcase Hub for users who have not logged into the hub before the lesson (see {ref}`Community Showcase Hub setup<community-showcase-hub-setup>`)
- keeping the instructor on track and on time
- reminding participants to complete feedback forms.

### Communication channels

We will primarily use Slack for communications with learners to encourage a "cohort" effect and capture discussions that would otherwise disappear from Zoom/Google Meet chat. However, we recognise that learners may join the synchronous sessions on their phones and therefore the Zoom/Google Meet chat is useful in this case. 

:::{tip}
Consider recording your workshop so that learners can refer back to this for later viewing.
:::

### Hidden curriculum

#### Episode 6, Exercise 1

In Part One of the workshop, please notify learners that the self-study portion of the lesson ends *after* the completion of Episode 6, Exercise 1. The result of this exercise allows the instructor to ascertain the most common support issue raised by the learners in preparation for the "flipped classroom" experience in Part Two of the workshop, where the instructor live demonstrates the problem-solving skills required to troubleshoot and provide user support. 

#### Time management

For the exercises, we encourage instructors not to read out answers already entered into the CodiMD and instead to ask learners more targeted follow up questions.

#### Extra resources

Template [Google Slides](https://docs.google.com/presentation/d/1hrI70StR2ghGAIj-qxk06bxttWX7ff3yNQOM25HcBnQ/edit?usp=sharing) to supplement Episode 1 are available for you to use.

(For internal use by the Catalyst Project team) A folder containing template feedback forms and a workshop folder for each training event can be found in the team [Google Drive](https://drive.google.com/drive/folders/1cElP_O-FdkM1-BbH6jO111M4mUVvU7H0?usp=drive_link).

## Pre-workshop tasks

You may use the following email template to communicate with learners 1 week before the workshop.

:::{dropdown} Pre-workshop email template

Dear all,

Thanks for registering to attend The Hub Champion Training. This message contains all of the information you need to prepare for and join the workshop.

**What do I need to do before the training?**

Before the training, please complete our pre-training survey.

Participants should be able to:

- Access the 2i2c [Community Showcase Hub](https://showcase.2i2c.cloud) using their GitHub account
- Know basic Git, such as pushing and pulling to a remote GitHub repository
- Find the shared collaborative note-taking document (shared in the calendar invite)
- Access the 2i2c Slack #hub-champion-training channel for asynchronous support (Slack invite to be shared in the calendar invitate)
- Use a web browser and video conferencing, e.g. Zoom
- Read the [2i2c Code of Conduct](https://compass.2i2c.org/code-of-conduct/).

**When and where?**

Training is delivered over two synchronous workshops, each one hour in length a week apart. The week in between is dedicated to self-guided study with asynchronous support provided by the instructors in a Slack channel you have been invited to.

Part One is scheduled to take place *<insert time (including timezone) and date>* and the Part Two is scheduled to take place *<insert time (including timezone) and date>*. You should have received a calendar invitation including videoconferencing connection details, a Slack invite and a URL for the collaborative notes document we will use during the training.

We look forward to seeing you and please get in touch with any questions you have beforehand.

Best wishes,

*<insert instructor names here>*

:::
    
After sending the email, create the videoconferencing call for Part One and Part Two of the training, then share a calendar invitation with the connection details and a link to the CodiMD document.
   
:::{figure} ../media/instructor-notes/codimd.png
:alt: Screenshot of setting editing rights on CodiMD to "Freely".
:width: 100%
:figclass: margin    
    
:::
    
::::{admonition} Set editing rights on CodiMD to "Freely"
:class: tip
Allow anyone to edit the CodiMD document without signing in by clicking the dropdown in the top-right of the document in *Read Mode* and selecting "Freely".
    
::::
    
## Feedback collection

:::{figure}  ../media/instructor-notes/google-form.png
:name: google-form
:alt: Screenshot of Settings > Responses > Restrict to users in 2i2c.org and its trusted organisations switched to Off.
:width: 100%
:figclass: margin
:::

There are a number of [template Google Forms](https://drive.google.com/drive/folders/1K16xUpvuoMN9YrDiajgt3a6WF8HyYvse?usp=drive_link) available to collect feedback from your lesson. This feedback is important for iterative lesson development – during teaching, enlist your lesson helper to keep you accountable for this!

:::{admonition} Allow access outside of your organisation
:class: tip
For each Google Form that you copy from the template, make sure that *Settings > Responses > Restrict to users in `2i2c.org` and its trusted organisations* is switched to *Off* (click the screenshot in the margin). This enables respondants to access to the form from outside of your organisation.
:::

**Template forms**

- [ ] Registration
- [ ] Pre-Training Survey
- [ ] Post-Training Survey
- [ ] Episode 1: Minute Card Feedback
- [ ] Episode 2: Minute Card Feedback
- [ ] Episode 3: Minute Card Feedback
- [ ] Episode 4: Minute Card Feedback
- [ ] Episode 5: Minute Card Feedback
- [ ] Episode 6: Minute Card Feedback    

(community-showcase-hub-setup)=
## Community Showcase Hub setup

Hub Champions will need access to the 2i2c [Community Showcase Hub](https://showcase.2i2c.cloud) and hub administrator privileges to complete this training.

To grant access to this hub, instructors will need to add learners to this [GitHub Team](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase) and grant them Owner status. Adding members to this team requires Owner/Maintainer permissions – if you have trouble then please send an email to [support@2i2c.org](mailto:support@2i2c.org).
    
To grant administrator privileges on the hub, go to the [Community Showcase Hub home](https://showcase.2i2c.cloud/hub/home) and click the *Admin* sub-menu in the navbar. You will see a table of users who have access to the hub. Click *Edit User* of the user you would like to grant admin access to. In the next screen, check the *Admin* box and click *Apply* to grant administrator privileges.

During the lesson, [](episode-access), Hub Champions will be asked to invite the user `jnywong-test` to the [GitHub Organization](https://github.com/2i2c-community-showcase). Please ensure this account is removed from the organization prior to the workshop. Similarly, Hub Champions will be asked to add and remove `jmunroe-testuser` from the [GitHub Team](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase).

## Post-workshop tasks
    
Follow up with an email two days after the workshop to thank learners for their time and encourage them to complete the post-training survey. You may use the follow email template.
   
:::{dropdown} Post-workshop email template
    
Dear all,

Thank you for attending the recent Hub Champion Training workshop. We hope you left your workshop with skills and knowledge needed to empower your communities to make best use out of the hub. We would like to capture your thoughts about what was covered and your perception of the workshop overall. Please complete the post-workshop survey as soon as possible.

If you have any questions and would like to contact us, feel free to email us at [support@2i2c.org](mailto:support@2i2c.org). We are excited about your continued involvement with our community!

Best wishes,
    
*<insert instructor names here>*
    
:::

Restore the Community Showcase Hub by removing the user `jnywong-test` from the [GitHub Organization](https://github.com/2i2c-community-showcase) and removing `jmunroe-testuser` from the [GitHub Team](https://github.com/orgs/2i2c-community-showcase/teams/access-2i2c-showcase). Adjust the permissions of learners from *Owner* to *Member*.
    
Remove administrator privileges on the hub by opening a [2i2c support ticket](https://docs.2i2c.org/support/) to provide the Community Showcase Hub URL (`https://showcase.2i2c.cloud`) and a list of Hub Champion GitHub usernames that require administrator status removing.

## Tasklist

**One week before the workshop**
    
- [ ] Copy the CodiMD template, remove the episode section content and set editing rights to *Freely*
- [ ] Copy feedback form templates and check access permissions
- [ ] Set up a Slack channel, or equivalent
- [ ] Schedule the videoconferencing calls for Part One and Part Two
- [ ] Email learners one week before the workshop
- [ ] Share a calendar invitation for Part One and Part Two with links to the videoconference call, CodiMD document and Slack channel
- [ ] Prepare the Community Showcase Hub
  - [ ] Add learners to GitHub team **and** grant them Owner status
  - [ ] Grant *Admin* privileges to learners on the Community Showcase Hub

**During the workshop**
- [ ] Consider recording your workshop so that learners can refer back to this for later viewing
    
**After Part One**
    
- [ ] Populate the CodiMD for the self-guided study
    
**After Part Two**

- [ ] Email learners two days after the workshop to complete feedback
- [ ] Restore the Community Showcase Hub
  - [ ] Remove Owner status from the GitHub team
  - [ ] Remove *Admin* privileges from learners on the Community Showcase Hub
- [ ] Evaluate feedback
