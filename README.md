# k8up-crds

This chart publishes the corresponding CRDs for the k8up chart (https://github.com/appuio/charts/tree/master/appuio/k8up).
The CRDs are identified based on the `appVersion` and fetched from https://github.com/k8up-io/k8up/releases.

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

    helm repo add k8up-crds https://nimbolus.github.io/k8up-crds

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the package.

To install the k8up-crds chart:

    helm install k8up-crds k8up-crds/k8up-crds

To uninstall the chart:

    helm delete k8up-crds
