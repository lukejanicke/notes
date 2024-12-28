# AWS CLI

- [AWS CLI](https://aws.amazon.com/cli/)

## Install

Install **AWS CLI** with [Homebrew](Homebrew.md).

```zsh
brew install awscli
```

## Configure

```zsh
aws configure
```

Enter AWS Access Key ID and AWS Secret Access Key.

Enter default region name: e.g., `ap-southeast-1`.

Enter default output format: e.g., `text` (best for Terminal).

Configuration files are created in `~/.aws/config`.

Credentials are stored in `~/.aws/credentials`.

Verify AWS CLI Configuration.

```zsh
aws s3 ls
```
