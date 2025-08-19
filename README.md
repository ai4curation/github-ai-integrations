# A Copier Template to augment github repos with AI capabilities

This template uses the code-scaffolding tool [copier](https://copier.readthedocs.io/) to apply AI integrations to an existing project.
See [Applying multiple templates to the same subproject](https://copier.readthedocs.io/en/stable/configuring/#applying-multiple-templates-to-the-same-subproject)

For more background, please see:

<https://ai4curation.github.io/aidocs/how-tos/set-up-github-actions/>

## Usage

`copier copy https://github.com/ai4curation/github-ai-integrations .`

Previous answers will be saved (TODO: figure out why copier won't save answers to new Qs)

Note that assumptions are made that you are following Mungall group/Monarch best practice, e.g. use of `uv` over `poetry`.

This works best if you are overlaying on top of a project seeded with one of the following:

- <https://github.com/linkml/linkml-project-copier>
- <https://github.com/monarch-initiative/monarch-project-copier/>

Your previous answers to `copier` should be the default.

There are 3 flavors, which can be combined. You will be asked for yes/no for the following

- linkml schema repos
- python repos (default is true)
- ontology repos

Answer yes to the first if a focal point of your repo is a linkml schema. This will include
instructions for the AI on how to edit the yaml, rebuild, run examples, etc. This assumes
a modern justfile-based setup rather than the older makefile based approach.

Answer yes to the second if your repo contains python files which the AI should edit. Do not say
yes if the repo contains only derived python from linkml files. Saying yes here will include
best practice for python code.

Answer yes to the third if your schema contains ontologies using the standard ODK layout.

## Setting up GitHub secrets

Set up the following env vars:

### For dragon-ai-permissions

PAT_FOR_PR

### For Claude Code

One of:

CLAUDE_CODE_OATH_TOKEN
ANTHROPIC_API_KEY

### For CBORG

CBORG_API_KEY

### Setup

After setting up env vars:

`just -f ai.just setup-ai`
