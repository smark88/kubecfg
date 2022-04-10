local kubecfg = import "kubecfg.libsonnet";

// TODO: change to `importbin` with a sufficient version of jsonnet.
local data = import "mysql-8.8.26.tgz.bin";

kubecfg.parseHelmChart(data, "rls", "myns", {
  auth: {
    forcePassword: false,
    password: "foo",
  },
})
