crossplane beta validate crossplane.yaml composition.yaml

# [!] could not find CRD/XRD for: apiextensions.crossplane.io/v1, Kind=Composition
# Total 1 resources: 1 missing schemas, 0 success cases, 0 failure cases

crossplane beta render xr.yaml composition.yaml functions.yaml | crossplane beta validate crossplane.yaml -

# [!] could not find CRD/XRD for: aws.platform.upbound.io/v1alpha1, Kind=XKarpenter
# [!] could not find CRD/XRD for: apiextensions.crossplane.io/v1alpha1, Kind=EnvironmentConfig
# Total 2 resources: 2 missing schemas, 0 success cases, 0 failure cases

### after this PR

./crank beta validate crossplane.yaml composition.yaml

# schemas does not exist, downloading:  xpkg.upbound.io/crossplane/crossplane:v1.16.0
# schemas does not exist, downloading:  xpkg.upbound.io/crossplane-contrib/function-patch-and-transform:v0.7.0
# [✓] pt.fn.crossplane.io/v1beta1, Kind=Resources,  validated successfully
# [✓] apiextensions.crossplane.io/v1, Kind=Composition, pat.xkarpenters.aws.platform.upbound.io validated successfully
# Total 2 resources: 0 missing schemas, 2 success cases, 0 failure cases


crossplane beta render xr.yaml composition.yaml functions.yaml  | ./crank beta validate crossplane.yaml -

# [!] could not find CRD/XRD for: aws.platform.upbound.io/v1alpha1, Kind=XKarpenter
# [✓] apiextensions.crossplane.io/v1alpha1, Kind=EnvironmentConfig, example-environment validated successfully
# Total 2 resources: 1 missing schemas, 1 success cases, 0 failure cases
