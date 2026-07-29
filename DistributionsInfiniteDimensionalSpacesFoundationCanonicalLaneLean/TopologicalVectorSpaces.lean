import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure TopologicalVectorSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : Module ℝ carrier
  locallyConvex : Prop
  hausdorff : Prop
  completeness : Prop

structure TopologicalVectorSpaceEvidence (T : TopologicalVectorSpacePackage) where
  locallyConvexClosed : T.locallyConvex
  hausdorffClosed : T.hausdorff
  completenessClosed : T.completeness

def TopologicalVectorSpaceClosed (T : TopologicalVectorSpacePackage) : Prop :=
  T.locallyConvex ∧ T.hausdorff ∧ T.completeness

theorem topological_vector_space_closed_from_evidence (T : TopologicalVectorSpacePackage)
    (E : TopologicalVectorSpaceEvidence T) : TopologicalVectorSpaceClosed T := by
  exact And.intro E.locallyConvexClosed (And.intro E.hausdorffClosed E.completenessClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse