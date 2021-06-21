// RUN: not cancer-runner %s \
// RUN:   -invoke requires_one_input \
// RUN:   -shared-libs=%cancer_runtime_shlib 2>&1 \
// RUN:   | FileCheck %s

// CHECK: invoking 'requires_one_input': expected 1 inputs
func @requires_one_input(%arg0: tensor<?xf32>) -> tensor<?xf32> {
  %0 = tcf.add %arg0, %arg0 : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
  return %0 : tensor<?xf32>
}