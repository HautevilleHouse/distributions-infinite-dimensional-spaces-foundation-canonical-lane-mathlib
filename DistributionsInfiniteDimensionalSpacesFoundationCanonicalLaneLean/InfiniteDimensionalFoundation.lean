import DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.KernelTheorem

/-!
# Infinite Dimensional Foundation Package

Assembles the distribution theory chain as a closed evidence package.
-/

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure InfiniteDimensionalFoundation where
  testFunctionSpace : TestFunctionSpacePackage
  testFunctionSpaceEvidence : TestFunctionSpaceEvidence testFunctionSpace
  distributionSpace : DistributionSpacePackage testFunctionSpace
  distributionSpaceEvidence : DistributionSpaceEvidence distributionSpace
  sobolevSpace : SobolevSpacePackage testFunctionSpace distributionSpace
  sobolevSpaceEvidence : SobolevSpaceEvidence sobolevSpace
  fourierTransform : FourierTransformPackage testFunctionSpace distributionSpace sobolevSpace
  fourierTransformEvidence : FourierTransformEvidence fourierTransform
  kernelTheorem : KernelTheoremPackage testFunctionSpace distributionSpace sobolevSpace fourierTransform
  kernelTheoremEvidence : KernelTheoremEvidence kernelTheorem

def InfiniteDimensionalFoundationClosed (A : InfiniteDimensionalFoundation) : Prop :=
  TestFunctionSpaceClosed A.testFunctionSpace ∧
  DistributionSpaceClosed A.distributionSpace ∧
  SobolevSpaceClosed A.sobolevSpace ∧
  FourierTransformClosed A.fourierTransform ∧
  KernelTheoremClosed A.kernelTheorem

theorem infinite_dimensional_foundation_closed_from_evidence
    (A : InfiniteDimensionalFoundation) : InfiniteDimensionalFoundationClosed A := by
  refine And.intro (test_function_space_closed_from_evidence _ A.testFunctionSpaceEvidence)
    (And.intro (distribution_space_closed_from_evidence _ A.distributionSpaceEvidence)
      (And.intro (sobolev_space_closed_from_evidence _ A.sobolevSpaceEvidence)
        (And.intro (fourier_transform_closed_from_evidence _ A.fourierTransformEvidence)
          (kernel_theorem_closed_from_evidence _ A.kernelTheoremEvidence))))

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse