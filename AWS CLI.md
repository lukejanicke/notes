# AWS CLI

- [AWS CLI](https://aws.amazon.com/cli/) / [Documentation](https://docs.aws.amazon.com/cli/)

## Install

Install **AWS CLI** with [Homebrew](Homebrew.md).

```shell
brew install awscli
```

## Setup

Configure a profile with the `aws configure sso` wizard.

```shell
aws configure sso
```

Enter session configuration options.

```shell
SSO session name (Recommended): ap-southeast-1
```

After browser-based PKCE authorisation, enter CLI configuration options.

```
Default client Region [None]: ap-southeast-1
CLI default output format (json if not specified) [None]: table
Profile name [AdministratorAccess-024171276396]: ap-southeast-1-administrator-access
```

⚠️ THESE NOTES ARE INCOMPLETE AND NEED VERIFYING

```shell
aws sts get-caller-identity --profile ap-southeast-1-administrator-access
```