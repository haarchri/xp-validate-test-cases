crossplane beta validate crossplane.yaml composition.yaml

# [!] could not find CRD/XRD for: apiextensions.crossplane.io/v1, Kind=Composition
# Total 1 resources: 1 missing schemas, 0 success cases, 0 failure cases

./crank beta validate crossplane.yaml composition.yaml
# schemas does not exist, downloading:  xpkg.upbound.io/crossplane/crossplane:v1.16.0
# schemas does not exist, downloading:  xpkg.upbound.io/crossplane-contrib/function-patch-and-transform:v0.7.0
# [x] schema validation error pt.fn.crossplane.io/v1beta1, Kind=Resources,  : resources[0].name: Required value
# [x] schema validation error pt.fn.crossplane.io/v1beta1, Kind=Resources,  : patches: Invalid value: "patches": unknown field: "patches"
# [✓] apiextensions.crossplane.io/v1, Kind=Composition, pat.xkarpenters.aws.platform.upbound.io validated successfully
# Total 2 resources: 0 missing schemas, 1 success cases, 1 failure cases
# crossplane: error: cannot validate resources: could not validate all resources