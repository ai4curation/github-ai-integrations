# A Copier Template to augment github repos with AI capabilities

This template uses the code-scaffolding tool [copier](https://copier.readthedocs.io/) to ...

For more background, please see:

<https://ai4curation.github.io/aidocs/how-tos/set-up-github-actions/>

## Usage

In an existing repo, run this:

`copier copy https://github.com/ai4curation/github-ai-integration .`

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
