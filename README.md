# A Copier Template to augment github repos with AI capabilities

This template uses the code-scaffolding tool [copier](https://copier.readthedocs.io/) to automatically set up AI-powered GitHub Actions in any existing repository.

## Background

**AI GitHub Actions** enable autonomous AI agents to respond to GitHub events like issue creation, pull requests, and comments. These agents can understand natural language requests and perform tasks like code reviews, documentation updates, and issue management automatically.

### Key Benefits
- **Autonomous Response**: AI agents automatically respond to GitHub issues and PRs
- **Natural Language Interface**: Communicate with your repository using plain English
- **Cost-Effective Automation**: Reduce manual maintenance while keeping humans in control
- **Flexible Configuration**: Customize agent behavior through configuration files

### Architecture
The system works by:
1. **GitHub Actions Workflow**: Triggers on repository events (issues, PRs, comments)
2. **AI Agent Integration**: Connects to AI providers (Anthropic Claude, OpenAI) via API
3. **Configuration-Driven**: Uses `.config/goose/config.yaml` and `.goosehints` files to define behavior
4. **Repository Integration**: AI agents can read, analyze, and modify repository content

### Important Considerations
⚠️ **Cost Warning**: Agentic AI usage can be costly. Carefully evaluate and monitor AI agent interactions to manage expenses.

### Prerequisites
- GitHub repository with Actions enabled
- API access to AI providers (Anthropic, OpenAI)
- Basic understanding of GitHub Actions
- Optional: LiteLLM proxy for advanced API management

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
