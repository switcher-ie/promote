# Promote

A GitHub Action and associated scripts for deploying Switcher applications. The GitHub Action is designed to be run
in response to a `deployment` event. Where as the supporting scripts are designed in such a way that they could be
executed in a standalone fashion; in the case that GitHub Actions is down we retain the capability to deploy.

## Concepts

This repository mixes terminology from GitHub Deployments & Kubernetes.

<dl>
<dt>Environment</dt>
<dd>
  Groups a number of Kubernetes namespaces, which share some resources. Either `staging` or `production`.
</dd>
<dt>Namespace</dt>
<dd>
  The Kubernetes Namespace; when the environment is `production` this must also be `production`, when `staging` this
  should be set to the desired namespace (e.g. `indigo`, `magenta`, etc).
</dd>
<dt>Deployment Environment</dt>
<dd>
  The environment field of a GitHub deployment. This a combination of the environment & namespace, separated with a
  `/` (e.g. `staging/magenta`).
</dd>
</dl>
