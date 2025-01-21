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
SSO start URL [None]: GET URL FROM AWS ACCESS PORTAL
SSO region [None]: ap-southeast-1
SSO registration scopes [None]: sso:account:access
```

After confirming an account and role, enter CLI configuration options.

```
CLI default client Region [None]: ap-southeast-1
CLI default output format [None]: table
CLI profile name [AdministratorAccess-024171276396]: ap-southeast-1-administrator-access
```
