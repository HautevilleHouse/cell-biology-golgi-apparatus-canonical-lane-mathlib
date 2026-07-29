import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure ProteinSortingPackage where
  sortingSignals : Prop
  cargoReceptors : Prop
  vesicleTargeting : Prop
  cargoSortedCorrectly : Prop

structure ProteinSortingEvidence (S : ProteinSortingPackage) where
  sortingSignalsClosed : S.sortingSignals
  cargoReceptorsClosed : S.cargoReceptors
  vesicleTargetingClosed : S.vesicleTargeting
  cargoSortedCorrectlyClosed : S.cargoSortedCorrectly

def ProteinSortingClosed (S : ProteinSortingPackage) : Prop :=
  S.sortingSignals ∧ S.cargoReceptors ∧
  S.vesicleTargeting ∧ S.cargoSortedCorrectly

theorem protein_sorting_closed_from_evidence (S : ProteinSortingPackage)
    (E : ProteinSortingEvidence S) : ProteinSortingClosed S := by
  exact And.intro E.sortingSignalsClosed
    (And.intro E.cargoReceptorsClosed
      (And.intro E.vesicleTargetingClosed E.cargoSortedCorrectlyClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse