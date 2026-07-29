import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure CisternalMaturationPackage where
  cisternalProgression : Prop
  residentEnzymesRetrograde : Prop
  cargoPassingThrough : Prop
  maturationCompleted : Prop

structure CisternalMaturationEvidence (C : CisternalMaturationPackage) where
  cisternalProgressionClosed : C.cisternalProgression
  residentEnzymesRetrogradeClosed : C.residentEnzymesRetrograde
  cargoPassingThroughClosed : C.cargoPassingThrough
  maturationCompletedClosed : C.maturationCompleted

def CisternalMaturationClosed (C : CisternalMaturationPackage) : Prop :=
  C.cisternalProgression ∧ C.residentEnzymesRetrograde ∧
  C.cargoPassingThrough ∧ C.maturationCompleted

theorem cisternal_maturation_closed_from_evidence (C : CisternalMaturationPackage)
    (E : CisternalMaturationEvidence C) : CisternalMaturationClosed C := by
  exact And.intro E.cisternalProgressionClosed
    (And.intro E.residentEnzymesRetrogradeClosed
      (And.intro E.cargoPassingThroughClosed E.maturationCompletedClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse