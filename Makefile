SHELL = bash
.ONESHELL:

K8UP_CHART_VERSION=2.0.2
K8UP_CHART_URL=https://github.com/appuio/charts/releases/download/k8up-${K8UP_CHART_VERSION}/k8up-${K8UP_CHART_VERSION}.tgz

prepare:
	APP_VERSION=$$(wget ${K8UP_CHART_URL} -qO- | tar -xz k8up/Chart.yaml -O | grep appVersion | cut -d" " -f2); \
	wget https://github.com/k8up-io/k8up/releases/download/$$APP_VERSION/k8up-crd.yaml -O charts/k8up-crds/templates/crds.yaml; \
	cat <<- EOF > charts/k8up-crds/Chart.yaml
		apiVersion: v2
		name: k8up-crds
		description: CRDs for k8up - A Kubernetes and OpenShift Backup Operator based on restic
		type: application
		version: ${K8UP_CHART_VERSION}
		appVersion: "$$APP_VERSION"
	EOF