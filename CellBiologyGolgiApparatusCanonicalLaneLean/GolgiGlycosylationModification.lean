import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiGlycosylationModificationPackage where
  glycosyltransferaseEnzymes : Type u
  substrateSpecificity : Type v
  sequentialModification : Prop
  productMaturation : Prop
  qualityControl : Prop

structure GolgiGlycosylationModificationEvidence (P : GolgiGlycosylationModificationPackage) where
  sequentialModificationClosed : P.sequentialModification
  productMaturationClosed : P.productMaturation
  qualityControlClosed : P.qualityControl

def GolgiGlycosylationModificationClosed (P : GolgiGlycosylationModificationPackage) : Prop :=
  P.sequentialModification ∧ P.productMaturation ∧ P.qualityControl

theorem golgi_glycosylation_modification_closed_from_evidence
    (P : GolgiGlycosylationModificationPackage) (E : GolgiGlycosylationModificationEvidence P) :
    GolgiGlycosylationModificationClosed P := by
  exact And.intro E.sequentialModificationClosed
    (And.intro E.productMaturationClosed E.qualityControlClosed)

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse