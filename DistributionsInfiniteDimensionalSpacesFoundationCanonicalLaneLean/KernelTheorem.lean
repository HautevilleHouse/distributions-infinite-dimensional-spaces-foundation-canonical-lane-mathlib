import DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.FourierTransform

/-!
# Kernel Theorem (Schwartz Kernel Theorem) Package
-/

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure KernelTheoremPackage {T : TestFunctionSpacePackage}
    {D : DistributionSpacePackage T} {S : SobolevSpacePackage T D}
    {F : FourierTransformPackage T D S} where
  bilinearFunctional : Prop
  continuousExtension : Prop
  kernelRepresentation : Prop

structure KernelTheoremEvidence {T : TestFunctionSpacePackage}
    {D : DistributionSpacePackage T} {S : SobolevSpacePackage T D}
    {F : FourierTransformPackage T D S} (K : KernelTheoremPackage T D S F) where
  bilinearFunctionalClosed : K.bilinearFunctional
  continuousExtensionClosed : K.continuousExtension
  kernelRepresentationClosed : K.kernelRepresentation

def KernelTheoremClosed {T : TestFunctionSpacePackage}
    {D : DistributionSpacePackage T} {S : SobolevSpacePackage T D}
    {F : FourierTransformPackage T D S} (K : KernelTheoremPackage T D S F) : Prop :=
  K.bilinearFunctional ∧ K.continuousExtension ∧ K.kernelRepresentation

theorem kernel_theorem_closed_from_evidence {T : TestFunctionSpacePackage}
    {D : DistributionSpacePackage T} {S : SobolevSpacePackage T D}
    {F : FourierTransformPackage T D S} (K : KernelTheoremPackage T D S F)
    (E : KernelTheoremEvidence K) : KernelTheoremClosed K := by
  exact And.intro E.bilinearFunctionalClosed
    (And.intro E.continuousExtensionClosed E.kernelRepresentationClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse