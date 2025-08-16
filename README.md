# A Copier Template to augment github repos with AI capabilities

This template uses the code-scaffolding tool [copier](https://copier.readthedocs.io/) to automatically set up AI-powered GitHub Actions in any existing repository.

## What it does

- **AI Issue Management**: Automatically responds to GitHub issues using AI agents
- **Intelligent PR Reviews**: AI-powered code review and suggestions  
- **Smart Documentation**: AI assistance for documentation updates and maintenance
- **Automated Workflows**: Sets up GitHub Actions that understand and respond to natural language requests

The repository follows a "meta" pattern - it uses its own template to provide AI capabilities (eating its own dogfood). Template files are in `template/` while other files are for this repo itself.

For more background, please see:

<https://ai4curation.github.io/aidocs/how-tos/set-up-github-actions/>

## Usage

In an existing repo, run this:

`copier copy https://github.com/ai4curation/github-ai-integrations .`

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
